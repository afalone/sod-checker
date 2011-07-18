require 'spec_helper'

describe RequestDateCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:request_date, :display) }
  
      it { should have_selector("h1", :content => "RequestDate#display") }
      it { should have_selector("p", :content => "Find me in app/cells/request_date/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:request_date) } 
    
      it { should respond_to(:display) }
    
  end
end
