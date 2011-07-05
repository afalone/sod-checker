class Axapta
 include ActiveModel
 include ActiveModel::Serialization
 extend ActiveModel::Naming
# def attributes
#  @attributes ||= {}
# end
# attr_accessor :config
# attr_accessor :method

  def config
   @config ||= AxaptaRequest.describe_methods("id"=>rand(10**6))
  end

  def method(key)
   config["methods"][key.to_s]
  end

  def methods
   config["methods"].keys
  end
end
