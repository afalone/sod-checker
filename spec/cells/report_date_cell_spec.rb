require 'spec_helper'

describe ReportDateCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_date, :display) }
  
      it { should have_selector("h1", :content => "ReportDate#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_date/display.html") }
    end
    
    context "rendering display_data" do
      subject { render_cell(:report_date, :display_data) }
  
      it { should have_selector("h1", :content => "ReportDate#display_data") }
      it { should have_selector("p", :content => "Find me in app/cells/report_date/display_data.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_date) } 
    
      it { should respond_to(:display) }
    
      it { should respond_to(:display_data) }
    
  end
end
