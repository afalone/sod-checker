require 'spec_helper'

describe MainController do

  describe "GET 'index'" do
#   before do
    #mock_model(AxaptaRequest).stub(:describe_methods).and_return({"enums"=>{}, "methods"=>{"user_info"=>{}}})
    
    #@axapta = Factory(:axapta)
 #  end
   it "should be successful" do
    st = {"enums"=>{}, "methods"=>{"user_info"=>{}}}
    #Axapta.stub_chain(:new, :config).and_return(st)
    Axapta.any_instance.stubs(:config).returns(st)
    #a = Axapta.new.config
    #p a
    get 'index'
    response.should be_success
   end
  end

  describe "GET 'search'" do
    it "should be successful" do
      pending "change Main#search when search will be needed"
      get 'search'
      response.should be_success
    end
  end

#  describe "GET 'show'" do
#    it "should be successful" do
#      get 'show'
#      response.should be_success
#    end
#  end

end
