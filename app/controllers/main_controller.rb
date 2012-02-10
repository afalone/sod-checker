class MainController < ApplicationController
 before_filter :get_config
 before_filter :get_query
 before_filter :get_fields

  def index

   #puts "config load time: #{@c_time}"
   
   #@request = @data.to_yaml if @data
   @request = from_as_to_hash(params["query"].try(:[], "fields") || {}).to_yaml(:ExplicitTypes => true, :UseHeader=>false)
   @structure = axapta.method(@query.what) unless @query.what.blank?
   if params["commit"] && @query.what == @data._request_method
    begin
     @r_time = Benchmark.ms do
      @report = AxaptaRequest.try(@query.what, params["query"]["fields"])
     end
     puts "report generate time: #{@r_time}"
    rescue JsonRpcClient::ServiceError => e
     @r_time = Benchmark.ms do
      e.message.scan(/JSON-RPC error.+\{.+\}/).each do |t|
       @report = {:error => true}
       t.scan(/\"type\"\s*=>\s*(\d+),/).each do |x|
        @report.merge!("type" => x)
       end
       t.scan(/\"message\"\s*=>\s*\"(.+?)\"/).each do |x|
        @report.merge!("message" => x)
       end
      end
      #e.message.scan(/JSON-RPC error.+\{\"type"=>(\d+), \"message\"=>\"(.+)\"\}/).each do |t,m|
      # @report = {"type" => t, "message" => m, :error => true}
      #end
     end
    rescue Exception => e
     flash.now[:error] = e.to_s
    end
   end
  end

  def search
  end

  def show
  end

  def configuration
   @c_time = Benchmark.ms do
    @config ||= axapta.config
   end
  end
 protected
  def get_config
   configuration
  end
  def get_query
   #@query = OpenStruct.new(params["query"] || {:what => ''})
   @query = mk_struct(params["query"]) || OpenStruct.new
  end

  def get_fields
   @query.fields = OpenStruct.new("_request_method" => @query.what) if params["setup"]
   @query.fields ||= OpenStruct.new("_request_method" => @query.what) if @query
   @data = @query.fields if @query
   #@enums = @
  end

  def axapta
   @axapta ||= Axapta.new
  end

end
