require 'rails_helper'

describe Product do
  before do
    @product = create(:product)
    @user = create(:user)
    @product.comments.create!(rating: 1, user: @user, body: "awful bike")
    @product.comments.create!(rating: 3, user: @user, body: "ok bike")
    @product.comments.create!(rating: 5, user: @user, body: "sick bike")
  end
  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end

  context "tests against nameless products" do
    before { @product2= build(:product, name: "")}

    it "should fail" do
      expect(@product2).to_n be_valid
    end

  end
end
