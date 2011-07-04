require 'spec_helper'

describe MainController do

  describe "GET 'index'" do
   it "should be successful" do
    st = {"enums"=>{}, "methods"=>{"user_info"=>{}}}
    AxaptaRequest.stubs(:describe_methods).returns(st)
    #Axapta.any_instance.stubs(:config).returns(st)
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
