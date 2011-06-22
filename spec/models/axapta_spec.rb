require "spec_helper"
describe Axapta do
 context "on config" do
  it "should ask AxaptaRequest" do
   AxaptaRequest.should_receive :describe_methods
   Axapta.new.config
  end
 end
end
