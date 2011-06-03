require 'spec_helper'

describe RequestRealCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_real, :display) }
  
      it { should have_selector("h1", :content => "RequestReal#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_real/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_real) } 
    
      it { should respond_to(:display) }
    
  end
end
