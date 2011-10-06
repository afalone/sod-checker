require 'spec_helper'

describe RequestIntegerCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_integer, :display) }
  
      it { should have_selector("h1", :content => "RequestInteger#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_integer/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_integer) } 
    
      it { should respond_to(:display) }
    
  end
end
