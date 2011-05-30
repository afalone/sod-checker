require 'spec_helper'

describe RequestParamsCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_params, :display) }
  
      it { should have_selector("h1", :content => "RequestParams#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_params/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_params) } 
    
      it { should respond_to(:display) }
    
  end
end
