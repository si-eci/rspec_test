require 'selenium-webdriver'
require 'capybara/rspec'

# RSpecにCapybaraのDSLを設定
RSpec.configure do |config|
  config.include Capybara::DSL
end


# Capybaraにseleniumを使うように設定
Capybara.default_driver = :selenium
Capybara.app_host = 'http://devtest2.socs-staging.center/'

describe "ショップ関連" do
  
  before do
    visit 'http://devtest2.socs-staging.center/'
    fill_in 'user_login', with: 'socsuser'
    fill_in 'user_password', with: 'si2015devtest2'
    click_button "ログイン"
  end
  
  it "ショップグループ管理へ遷移できる" do
    click_link "ショップグループ管理"
    expect(page).to have_text('ショップグループ管理')
    expect(current_path).to eq "/admin/shop_groups"
  end
  
  it "ショップ管理へ遷移できる" do
    click_link "ショップ管理"
    expect(page).to have_text('ショップ管理')
    expect(current_path).to eq "/admin/shops"
  end
  
  it "ショップカテゴリ管理へ遷移できる" do
    click_link "ショップカテゴリ管理"
    expect(page).to have_text('ショップカテゴリ管理')
    expect(current_path).to eq "/admin/shop_categories"
  end
  
  it "キャンペーン管理へ遷移できる" do
    click_link "キャンペーン管理"
    expect(page).to have_text('キャンペーン管理')
    expect(current_path).to eq "/admin/campaigns"
  end
  
  it "キャンペーン区分管理へ遷移できる" do
    click_link "キャンペーン区分管理"
    expect(page).to have_text('キャンペーン区分管理')
    expect(current_path).to eq "/admin/campaign_divs"
  end
  
  it "目標管理へ遷移できる" do
    click_link "目標管理"
    expect(page).to have_text('目標管理')
    expect(current_path).to eq "/admin/target_manages"
  end
  
  it "ショップ分類1管理へ遷移できる" do
    click_link "ショップ分類1管理"
    expect(page).to have_text('ショップ分類1管理')
    expect(current_path).to eq "/admin/shop1_categories"
  end
  
  it "ショップ分類2管理へ遷移できる" do
    click_link "ショップ分類2管理"
    expect(page).to have_text('ショップ分類2管理')
    expect(current_path).to eq "/admin/shop2_categories"
  end
  
  it "キャンペーン分類1管理へ遷移できる" do
    click_link "キャンペーン分類1管理"
    expect(page).to have_text('キャンペーン分類1管理')
    expect(current_path).to eq "/admin/campaign1_categories"
  end
  
  it "キャンペーン分類2管理へ遷移できる" do
    click_link "キャンペーン分類2管理"
    expect(page).to have_text('キャンペーン分類2管理')
    expect(current_path).to eq "/admin/campaign2_categories"
  end
  
  
end
