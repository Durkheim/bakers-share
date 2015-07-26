require 'rails_helper'

user = FactoryGirl.build(:user)

describe User do

  describe "#username" do

    it "should be able to return username of existing user" do
      expect(user.username).to eq("Test_User")
    end

    it "should not create user without username" do
      expect(FactoryGirl.build(:user, username: nil)).to_not be_valid
    end

    it "should not save user when username is not unique" do
      user_two =FactoryGirl.build(:user, username: "Test_User")
      expect(user_two.save).to be(false)
    end
  end

  describe "#email" do
    it "should be able to return email of existing user" do
      expect(user.email).to eq("email@email.com")
    end

    it "should not create user without email" do
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end

    it "should not accept user with incorrect email format" do
      expect(FactoryGirl.build(:user, email: "hello+hello.com")).to_not be_valid
    end
  end
end