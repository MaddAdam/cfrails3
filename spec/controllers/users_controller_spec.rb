require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    @user = User.create(email: "email@example.com", password: "P@ssw0rd")
    @user2 = User.create(email: "email2@example.com", password: "P@ssw0rd")
  end
  describe "GET #show" do
    context "User is logged in" do
      before do
        sign_in @user
      end
      it "loads correct user details" do
        get :show, id: @user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end


    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(root_path)
      end
    end

    context "user looking at other user" do
      before do
        sign_in @user2
      end
      it "redirects to root" do
        get :show, id: @user.id
        expect(response).to redirect_to(root_path)
      end
    end

  end

end
