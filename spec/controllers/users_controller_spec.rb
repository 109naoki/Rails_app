require 'rails_helper'

RSpec.describe UsersController, type: :request do
  let(:user) { FactoryBot.create(:user) }

  context 'Get #new' do
    before {get signup_path}
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
  end
end