require 'spec_helper'
describe Organizer do
  describe "humanizing cep" do
    it "should humanizing cep add '-'" do
      Factory.build(:organizer).human_cep.should eql("12345-678")
    end
  end

  describe "on save" do
    it "should remove '-' of cep" do
      Factory(:organizer, :cep => "00000-123").cep.should eql("00000123")
    end
  end
end
