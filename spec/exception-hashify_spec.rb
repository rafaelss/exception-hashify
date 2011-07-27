require "spec_helper"

describe Exception::Hashify do

  it "should return a hash with exception information" do
    with_exception do |ex|
      hash = ex.to_hash
      hash[:class_name].should == "RuntimeError"
      hash[:message].should == "teste"
      hash[:backtrace].should be_a Array
      hash[:backtrace].should_not be_empty
    end
  end
end

