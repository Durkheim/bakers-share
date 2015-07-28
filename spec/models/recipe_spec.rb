require 'rails_helper'

user_two = FactoryGirl.build(:user, username: "Test_User_Two", email: "email_two@gmail.com")
recipe = FactoryGirl.build(:recipe, user: user_two)

describe Recipe do

  describe "#title" do
    it "should be able to return the title of an existing recipe" do
      expect(recipe.title).to eq("Recipe from Test_User")
    end

    it {should validate_presence_of(:title)}
  end

  describe "#description" do
    it "should be able to return the description of an existing recipe" do
        expect(recipe.description).to eq("Great chili recipe for the winter")
    end
  end

  describe "#serving" do
    it "should be able to return the serving size of an existing recipe as an integer" do
      expect(recipe.serving).to be_an(Integer)
      expect(recipe.serving).to eq(5)
    end
  end

  describe "#user" do
    it "should be able to return the user who posted the recipe" do
      expect(recipe.user).to eq(user_two)
    end

    it {should validate_presence_of(:user)}

  end
end
