require 'spec_helper'

describe ReportEnumCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_enum, :display) }
  
      it { should have_selector("h1", :content => "ReportEnum#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_enum/display.html") }
    end
    
    context "rendering display_data" do
      subject { render_cell(:report_enum, :display_data) }
  
      it { should have_selector("h1", :content => "ReportEnum#display_data") }
      it { should have_selector("p", :content => "Find me in app/cells/report_enum/display_data.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_enum) } 
    
      it { should respond_to(:display) }
    
      it { should respond_to(:display_data) }
    
  end
end
