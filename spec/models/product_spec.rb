require 'rails_helper'

describe Product do
  before do
    @product = Product.create!(name: "race bike", description: "fast", image_url: "#", color: "blue" )
    @user = User.create!(email: "dogface@gmail.com", password: "P@ssw0rd")
    @product.comments.create!(rating: 1, user: @user, body: "awful bike")
    @product.comments.create!(rating: 3, user: @user, body: "ok bike")
    @product.comments.create!(rating: 5, user: @user, body: "sick bike")
  end
  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end

  context "tests against nameless products" do
    before { @product= Product.create!(name: "", description: "cool", image_url:"#", color: "white")}

    it "should fail" do
      expect(@product).not_to be_valid
    end

  end
end
