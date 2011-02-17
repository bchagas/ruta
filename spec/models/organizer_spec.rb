require 'spec_helper'
describe Organizer do
  should_validate_length_of :cep, :greather_than => 8

  describe "humanizing cep" do
    it "should humanizing cep add '-'" do
      organizer = Factory :organizer
      organizer.human_cep.should eql("12345-678")
    end
  end

  describe "on save" do
    it "should remove '-' of cep" do
      organizer = Factory.build :organizer, :cep => ("12345-678")
      organizer.cep.should eql("12345678")
    end
  end
end
