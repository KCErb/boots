require 'spec_helper'

describe Shoes::Row do
  before :each do
    @row = Shoes::Row.new col: 6 do
      para "test"
    end

    describe "#new" do
      it "takes a hash and a block and returns a Row Widget" do
        @row.should be_an_instance_of Row
      end
    end
  end
end
