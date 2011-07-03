require 'spec_helper'

describe ReportEnumCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_enum, :display, :enums => {"test"=>{"tst" => 1}}, :data => "tst", :config => {"title" => 'test', "type" => "test"}, :key => nil) }
  
      it { should have_xpath("//span[@class='label']", :text => "test") }
    end
    
    context "rendering display_data" do
      # need fix -- for strange types of input enums. fix for hash, arr & simple str
      subject { render_cell(:report_enum, :display_data, :enums => {"test"=>{"tst" => "1"}}, :data => "tst", :config => {"title" => 'test', "type" => "test"}) }
  
      it { should have_content("tst") }
    end
    
  end


  context "cell instance" do 
    subject { cell(:report_enum) } 
    
      it { should respond_to(:display) }
    
      it { should respond_to(:display_data) }
    
  end
end
