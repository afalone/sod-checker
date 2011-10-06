require 'spec_helper'

describe ReportDateTimeCell do
  context "cell rendering" do
    context "rendering display" do
      subject { render_cell(:report_date_time, :display, :enums => {"test"=>{"tst" => 1}}, :data => "1298", :config => {"title" => 'testInt', "type" => "integer"}, :key => "nameInteger") }

      it { should have_xpath("//div/span[@class='label']", :text=>"testInt") }
      it { should have_xpath("//div", :text=>"1298") }
    end

    context "rendering display_data" do
      subject { render_cell(:report_integer, :display_data, :enums => {"test"=>{"tst" => 1}}, :data => "1298", :config => {"title" => 'testInt', "type" => "integer"}, :key => "nameInteger") }

      it { should have_content("1298") }
    end
  end


  context "cell instance" do
    subject { cell(:report_date) }

      it { should respond_to(:display) }

      it { should respond_to(:display_data) }

  end

end
