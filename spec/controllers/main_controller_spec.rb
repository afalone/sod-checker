require 'spec_helper'

describe MainController do
 render_views

  describe "GET 'index'" do
   it "should be successful" do
    st = {"enums"=>{}, "methods"=>{"user_info"=>{"title" => "test_user_info"}}}
    
    #AxaptaRequest.stub!(:describe_methods).and_return(st)
    #Float.stub!(:method_missing).with(:relative_url_root).and_throw(:root_nf)
    #AxaptaRequest.stub!(:method_missing).with(:describe_methods).and_return{ st }
    #AxaptaRequest.stub!(:method_missing).with(instance_of(Symbol), anything()).and_raise("missing")
    #AxaptaRequest.stub!(:method_missing).with(instance_of(Symbol), anything()).and_return{|sym, a| st if sym == :describe_methods}
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
