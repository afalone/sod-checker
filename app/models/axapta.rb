class Axapta
 include ActiveModel
 include ActiveModel::Serialization
 def attributes
  @attributes ||= {}
 end
 attr_accessor :config

  def config
   @config ||= AxaptaRequest.describe_methods
  end
end
