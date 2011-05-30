require 'spec_helper'

describe RequestHashCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_hash, :display) }
  
      it { should have_selector("h1", :content => "RequestHash#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_hash/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_hash) } 
    
      it { should respond_to(:display) }
    
  end
end
