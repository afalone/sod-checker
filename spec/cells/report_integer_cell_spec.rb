require 'spec_helper'

describe ReportIntegerCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_integer, :display) }
  
      it { should have_selector("h1", :content => "ReportInteger#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_integer/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_integer) } 
    
      it { should respond_to(:display) }
    
  end
end
