require 'spec_helper'

describe ReportStringCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_string, :display) }
  
      it { should have_selector("h1", :content => "ReportString#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_string/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_string) } 
    
      it { should respond_to(:display) }
    
  end
end
