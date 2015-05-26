require 'selenium-webdriver'
require 'capybara/rspec'

# RSpecにCapybaraのDSLを設定
RSpec.configure do |config|
  config.include Capybara::DSL
end


# Capybaraにseleniumを使うように設定
Capybara.default_driver = :selenium
Capybara.app_host = 'http://devtest2.socs-staging.center/'


describe "SOCS" do

  before do
    visit 'http://devtest2.socs-staging.center/'
  end

  it "トップページが表示されること" do
    expect(page).to have_text("ログイン")
  end
  
  it "ログインできること" do
    fill_in 'user_login', with: 'socsuser'
    fill_in 'user_password', with: 'si2015devtest2'
    click_button "ログイン"
    
    expect(page).to have_text('ユーザーメイン画面')
  end 

end 


describe "商品関連" do
  
  before do
    visit 'http://devtest2.socs-staging.center/'
    fill_in 'user_login', with: 'socsuser'
    fill_in 'user_password', with: 'si2015devtest2'
    click_button "ログイン"
  end
  
  it "商品管理に遷移できること" do
    click_link "商品管理"
    expect(page).to have_text('商品管理')
    expect(current_path).to eq "/admin/items"
  end
  
  it "商品カテゴリ管理に遷移できること" do
    click_link "商品カテゴリ管理"
    expect(page).to have_text('商品カテゴリ管理')
    expect(current_path).to eq "/admin/item_categories"
  end
  
  it "規格管理に遷移できること" do
    click_link "規格管理"
    expect(page).to have_text('規格管理')
    expect(current_path).to eq "/admin/standards"
  end
  
  it "タグ管理に遷移できること" do
    click_link "タグ管理"
    expect(page).to have_text('タグ管理')
    expect(current_path).to eq "/admin/tags"
  end
  
  it "ブランド管理に遷移できること" do
    click_link "ブランド管理"
    expect(page).to have_text('ブランド管理')
    expect(current_path).to eq "/admin/brands"
  end
  
  it "ギフト管理に遷移できること" do
    click_link "ギフト管理"
    expect(page).to have_text('ギフト管理')
    expect(current_path).to eq "/admin/gifts"
  end
  
  it "商品分類1管理" do
    click_link "商品分類1管理"
    expect(page).to have_text('商品分類1管理')
    expect(current_path).to eq "/admin/item1_categories"
  end
  
  it "商品分類2管理" do
    click_link "商品分類2管理"
    expect(page).to have_text('商品分類2管理')
    expect(current_path).to eq "/admin/item2_categories"
  end
  
end


#driver = Selenium::WebDriver.for :firefox
#driver.navigate.to 'http://devtest2.socs-staging.center/'
#element = driver.find_element(:id, 'user_login')
#element.send_keys('socsuser')
#driver.find_element(:id, 'user_password').send_keys('si2015devtest2')
#driver.find_element(:name, 'button').click
#driver.quit
