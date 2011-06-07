class MainController < ApplicationController
 before_filter :get_config
 before_filter :get_query
 before_filter :get_fields

  def index
   puts "config load time: #{@c_time}"
   @request = @query.fields.to_yaml if @query && @query.fields
   if params["commit"] && @query.what == @query.fields._request_method
    begin
     @r_time = Benchmark.ms do
      puts "query"
      p params["query"]["fields"]
      @report = AxaptaRequest.try(@query.what, params["query"]["fields"])
     end
     puts "report generate time: #{@r_time}"
    rescue Exception => e
     puts "errorable req #{e.inspect}"
     flash[:error] = e.inspect
    end
    puts "report"
    p @report
    #puts mk_struct(@report.class)
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
   @query = mk_struct(params["query"])
  end

  def get_fields
   @query.fields = OpenStruct.new("_request_method" => @query.what) if params["setup"]
   @query.fields ||= OpenStruct.new("_request_method" => @query.what) if @query
  end

  #def mk_struct(fields)
  # if fields.is_a? Hash
  #  return OpenStruct.new fields.inject({}){|r, a| r.merge({a[0] => mk_struct(a[1])}) }
  # end
  # if fields.is_a? Array
  #  return fields.map{|v| mk_struct(v) }
  # end
  # fields
  #end
end
