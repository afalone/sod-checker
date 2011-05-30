require 'spec_helper'

describe RequestArrayCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_array, :display) }
  
      it { should have_selector("h1", :content => "RequestArray#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_array/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_array) } 
    
      it { should respond_to(:display) }
    
  end
end
