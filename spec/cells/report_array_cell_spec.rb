require 'spec_helper'

describe ReportArrayCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_array, :display) }
  
      it { should have_selector("h1", :content => "ReportArray#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_array/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_array) } 
    
      it { should respond_to(:display) }
    
  end
end
