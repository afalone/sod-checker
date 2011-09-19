require 'spec_helper'

describe ReportBooleanCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_boolean, :display) }
  
      it { should have_selector("h1", :content => "ReportBoolean#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_boolean/display.html") }
    end
    
    context "rendering display_data" do
      subject { render_cell(:report_boolean, :display_data) }
  
      it { should have_selector("h1", :content => "ReportBoolean#display_data") }
      it { should have_selector("p", :content => "Find me in app/cells/report_boolean/display_data.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_boolean) } 
    
      it { should respond_to(:display) }
    
      it { should respond_to(:display_data) }
    
  end
end
