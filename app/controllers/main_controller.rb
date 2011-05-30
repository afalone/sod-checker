class MainController < ApplicationController
 before_filter :get_config
 before_filter :get_query

  def index
  end

  def search
  end

  def show
  end

 protected
  def get_config
   @config = File.open('config/ax.yml'){|f| YAML.load(f)}
  end

  def get_query
   @query = OpenStruct.new(params["query"] || {:what => ''})
  end
end
