require 'spec_helper'

describe ReportItemCell do
  context "cell rendering" do 
    
    subject { render_cell(:report_item, :display, hsh) }
    context "rendering display int" do
      let( :hsh ){ {:enums => {"test"=>{"tst" => 1}}, :data => "1298", :config => {"title" => 'testInt', "type" => "integer"}, :key => "nameInteger"} }
      it { should have_xpath("//div/span[@class='label']", :text=>"testInt") }
      it { should have_xpath("//div", :text=>"1298") }
    end

    context "rendering display_data int" do
      let( :hsh ){ {:enums => {"test"=>{"tst" => 1}}, :data => "1298", :config => {"title" => 'testInt', "type" => "integer"}, :key => "nameInteger"} }

      it { should have_content("1298") }
    end
  end


  context "cell instance" do 
    subject { cell(:report_item) } 
    
      it { should respond_to(:display) }
      it { should respond_to(:display_data) }
    
  end
end
