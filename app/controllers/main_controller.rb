class MainController < ApplicationController
 before_filter :get_config
 before_filter :get_query
 before_filter :get_fields

  def index
   puts "config load time: #{@c_time}"
   
   #@request = @data.to_yaml if @data
   @request = from_as_to_hash(params["query"].try(:[], "fields") || {}).to_yaml(:ExplicitTypes => true, :UseHeader=>false)
   @structure = @config["methods"][@query.what]
   if params["commit"] && @query.what == @data._request_method
    begin
     @r_time = Benchmark.ms do
      @report = AxaptaRequest.try(@query.what, params["query"]["fields"])
     end
     puts "report generate time: #{@r_time}"
    rescue Exception => e
     puts "errorable req #{e.inspect}"
     flash[:error] = e.inspect
    end
   end
  end

  def search
  end

  def show
  end

 protected
  def get_config
   @c_time = Benchmark.ms do
    @config = File.open('config/ax.yaml'){|f| YAML.load(f)}
   end
  end

  def get_query
   #@query = OpenStruct.new(params["query"] || {:what => ''})
   @query = mk_struct(params["query"]) || OpenStruct.new
  end

  def get_fields
   @query.fields = OpenStruct.new("_request_method" => @query.what) if params["setup"]
   @query.fields ||= OpenStruct.new("_request_method" => @query.what) if @query
   @data = @query.fields if @query
  end

end