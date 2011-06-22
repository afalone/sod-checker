require 'spec_helper'

describe RequestEnumCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_enum, :display) }
  
      it { should have_selector("h1", :content => "RequestEnum#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_enum/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_enum) } 
    
      it { should respond_to(:display) }
    
  end
end
