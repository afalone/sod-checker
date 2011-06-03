require 'spec_helper'

describe ReportCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report, :display) }
  
      it { should have_selector("h1", :content => "Report#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report) } 
    
      it { should respond_to(:display) }
    
  end
end
