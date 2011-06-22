require 'spec_helper'
include ActionView::Helpers::FormHelper

describe RequestRealCell do
  context "cell instance" do
    subject { cell(:request_hash) }

    it { should respond_to(:display) }

  end

  context "cell rendering" do
    before do
     stub!(:protect_against_forgery?).and_return(false)
     @data = 13.3
     @empty_data = ''
     @bad_data = nil
     @key = "test_run"
    end
    context "rendering display" do
      before do
       @val = {"title" => 'title chk', "type" => "real"}

      end
      subject { form_for @data, :url=>"/", :as => :fields do |form| render_cell(:request_hash, :display, :form => form, :key => @key, :data => @data, :config => @config) end }
      it { stub!(:render).with(hash_including(:form => anything, :data => @data ))  }
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
  end







#  context "cell rendering" do 
#    
#    context "rendering display" do
#      subject { render_cell(:request_real, :display) }
#  
#      it { should have_selector("h1", :content => "RequestReal#display") }
#      it { should have_selector("p", :content => "Find me in app/cells/request_real/display.html") }
#    end
#    
#  end
#
#
#  context "cell instance" do 
#    subject { cell(:request_real) } 
#    
#      it { should respond_to(:display) }
#    
#  end
end
