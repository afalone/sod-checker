require 'spec_helper'

describe RequestStringCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_string, :display) }
  
      it { should have_selector("h1", :content => "RequestString#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_string/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_string) } 
    
      it { should respond_to(:display) }
    
  end
end
