require 'spec_helper'

describe ReportRealCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_real, :display) }
  
      it { should have_selector("h1", :content => "ReportReal#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_real/display.html") }
    end
    
    context "rendering display_data" do
      subject { render_cell(:report_real, :display_data) }
  
      it { should have_selector("h1", :content => "ReportReal#display_data") }
      it { should have_selector("p", :content => "Find me in app/cells/report_real/display_data.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_real) } 
    
      it { should respond_to(:display) }
    
      it { should respond_to(:display_data) }
    
  end
end
