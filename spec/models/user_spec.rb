require 'rails_helper'

user = FactoryGirl.build(:user)

describe User do

  describe "#username" do

    it "should be able to return username of existing user" do
      expect(user.username).to eq("Test_User")
    end

    it {should validate_presence_of(:username)}

    it {should validate_uniqueness_of(:username)}
  end

  describe "#email" do
    it "should be able to return email of existing user" do
      expect(user.email).to eq("email@email.com")
    end

    it {should validate_presence_of(:email)}

    it {should validate_uniqueness_of(:email)}

    it {should allow_value('user@gmail.com').for(:email)}

    it {should_not allow_value('hello+hello.com').for(:email)}
  end

  describe "#password" do
    it "should be able to return password as string for existing user" do
      expect(user.password).to be_a(String)
    end

    it {should have_secure_password}
  end

  describe "#bio" do
    it "should be able to return bio for existing user" do
      expect(user.bio).to eq("Who am I? No one")
    end
  end

   describe "#avatar" do
    it "should be able to return avatar for existing user as string" do
      expect(user.avatar).to eq("image.jpg")
      expect(user.avatar).to be_a(String)
    end
  end

end