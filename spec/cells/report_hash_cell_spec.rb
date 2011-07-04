require 'spec_helper'

describe ReportHashCell do
  context "cell rendering" do 
    let(:enums) { {  }  }
    
    context "rendering display" do
      subject { render_cell(:report_hash, :display) }
  
      it { should have_selector("h1", :content => "ReportHash#display") }
      it { should have_selector("p", :content => "Find me in app/cells/report_hash/display.html") }
    end
    
    context "rendering display_data" do
      subject { render_cell(:report_hash, :display_data) }
  
      it { should have_selector("h1", :content => "ReportHash#display_data") }
      it { should have_selector("p", :content => "Find me in app/cells/report_hash/display_data.html") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_hash) } 
    
      it { should respond_to(:display) }
    
      it { should respond_to(:display_data) }
    
  end
 pending "need more tests"
end
