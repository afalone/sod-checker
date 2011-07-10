require 'spec_helper'

describe ReportArrayCell do
  context "cell rendering" do 
    
    context "rendering display" do
      subject { 
       render_cell(:report_array, :display, :enums => {"test"=>{"tst" => 1}},
        :data => [{"intcol"=>21, "intcol2" => 23}],
        :config => {
         "title" => 'test', "type" => "array", "content" => {
          "intcol" => { "type" => "integer", "title" => "int_col" },
          "intcol2" => { "type" => "integer" }
         }
        }, :key => nil)
      }
      it { should have_xpath("//span[@class='label']", :text => "test") }
      it { should have_xpath("//table/tr/th", :text => "int_col") }
      it { should have_xpath("//table/tr/th", :text => "intcol2") }
      it { should have_xpath("//table/tr/td", :text => "21") }
      it { should have_xpath("//table/tr/td", :text => "23") }
      
    end
    context "rendering display_row" do
      subject { 
       render_cell(:report_array, :display_row, :enums => {"test"=>{"tst" => 1}},
        :order => ["intcol", "intcol2"],
        :row => {"intcol"=>21, "intcol2" => 23},
        :config => {
         "intcol" => { "type" => "integer", "title" => "int_col" },
         "intcol2" => { "type" => "integer" }
        })
      }
      it { should have_xpath("//td", :text => "21") }
      it { should have_xpath("//td", :text => "23") }
      
    end

    context "rendering display_data" do
      subject { 
       render_cell(:report_array, :display_data, :enums => {"test"=>{"tst" => 1}},
        :data => [{"intcol"=>21, "intcol2" => 23}],
        :config => {
         "title" => 'test', "type" => "array", "content" => {
          "intcol" => { "type" => "integer", "title" => "int_col" },
          "intcol2" => { "type" => "integer" }
         }
        }, :key => nil)
      }
      it { should have_xpath("//table/tr/th", :text => "int_col") }
      it { should have_xpath("//table/tr/th", :text => "intcol2") }
      it { should have_xpath("//table/tr/td", :text => "21") }
      it { should have_xpath("//table/tr/td", :text => "23") }
      
    end
  end


  context "cell instance" do 
    subject { cell(:report_array) } 
    
      it { should respond_to(:display) }
      it { should respond_to(:display_row) }
      it { should respond_to(:display_data) }
    
  end
end
