require 'spec_helper'
include ActionView::Helpers::FormHelper

describe RequestHashCell do

  context "cell instance" do 
    subject { cell(:request_hash) } 
    
    it { should respond_to(:display) }
    
  end


  context "cell rendering" do
    before do
     @data = {}
     @empty_data = {}
     @bad_data = nil
     @key = "test_run"
    end
    context "rendering display" do
      before do
       @config = {"title" => 'title chk', "type" => "real"}
       
      end
      subject { form_for :fields do |f| render_cell(:request_hash, :display, :form => f, :key => @key, :data => @data, :config => @config) end }

      it { should have_selector("div", :content => "1.9") }
      it { should have_selector("span.label", :content => "title chk") }
      #it { should_not have_selector("span.label", :content => "test_run") }
      it { should_not have_xpath('//span[@class="label"]', :text => "test_run") }
      it { should have_selector("span.label", :content => "(real)") }
    end
    context "rendering display when config invalid" do
      before do
       @config = {"type" => "real"}
      end
      subject { render_cell(:report_real, :display, :key => @key, :data => @data, :config => @config) }

      it { should have_selector("div", :content => "1.9") }
      it { should_not have_xpath('//span[@class="label"]', :text => "title chk") }
      it { should have_selector("span.label", :content => "(real)") }
      it { should have_xpath('//span[@class="label"]', :text => "test_run") }
    end

#    context "rendering display_data" do
#      before do
#       @config = {"title" => 'title chk', "type" => "real"}
#      end
#      subject { render_cell(:report_real, :display_data, :config => @config, :data => @data) }
#
#      it { should have_selector("p", :content=>"1.9") }
#    end

  end

end
