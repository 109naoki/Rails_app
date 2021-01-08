require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views
  
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
  describe "#home" do
 # 正常にレスポンスを返すこと
 it "responds successfully" do
 get :home
 expect(response).to be_success
  end
# 200レスポンスを返すこと
it "returns a 200 response" do
  get :home
  expect(response).to have_http_status "200"
  end
  # タイトルのテスト
 it "has title 'Ruby on Rails Tutorial Sample App'" do
   get :home
      assert_select "title", "Home | #{base_title}"
     end
  end

 describe "help" do
   #正常にレスポンスを返すこと
   it "responds successfully" do
   get :help
   expect(response).to be_success
  end
  # 200レスポンスを返すこと
  it "returns a 200 response" do
    get :help
    expect(response).to have_http_status "200"
  end
   # タイトルのテスト
 it "has title 'Ruby on Rails Tutorial Sample App'" do
   get :help
      assert_select "title", "Help | #{base_title}"
     end
 end
 
 describe "about" do
   #正常にレスポンスを返すこと
  it "responds successfully" do
    get :about
    expect(response).to be_success
  end
  #200レスポンスを返すこと
  it "returns a 200 response" do
    get :about
    expect(response).to have_http_status "200"
  end
   # タイトルのテスト
 it "has title 'Ruby on Rails Tutorial Sample App'" do
   get :about
      assert_select "title", "About | #{base_title}"
     end
  end
 end

