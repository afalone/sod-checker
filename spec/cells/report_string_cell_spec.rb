require 'spec_helper'

describe ReportStringCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { render_cell(:report_string, :display, :data => "abctest", :config => {"title" => 'testString', "type" => "string"}, :key => "nameString") }
  
      it { should have_xpath("//div/span[@class='label']", :text=>"testString") }
      it { should have_xpath("//div", :text=>"abctest") }
    end
    
    context "rendering display_data" do
      subject { render_cell(:report_string, :display_data, :data => "abctest", :config => {"title" => 'testString', "type" => "string"}, :key => "nameString") }
  
      it { should have_content("abctest") }
    end
  end


  context "cell instance" do 
    subject { cell(:report_string) } 
    
      it { should respond_to(:display) }
      it { should respond_to(:display_data) }
    
  end
end
