require 'rails_helper'

RSpec.describe UsersController, type: :request do
  let(:user) { FactoryBot.create(:user) }

  context 'Get #new' do
    # 正常なレスポンスを返すこと
    it "returns http success" do
      get signup_path
      expect(response).to be_success
      expect(response).to have_http_status 200
    end
  end
  
  describe "Get #show" do
    # ログイン済みのユーザとして
    context "as an authenticated user" do
      it "responds successfuly" do
        sign_in_as user
        get user_path(user)
        expect(response).to be_success
        expect(response).to have_http_status "200"
      end
    end
    
  end
end