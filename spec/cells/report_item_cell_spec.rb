require 'spec_helper'

describe ReportItemCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_item, :display) }
  
      it { should have_selector("h1", :content => "ReportItem#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_item/display.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_item) } 
    
      it { should respond_to(:display) }
    
  end
end
