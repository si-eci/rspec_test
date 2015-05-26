require 'selenium-webdriver'
require 'capybara/rspec'

# RSpecにCapybaraのDSLを設定
RSpec.configure do |config|
  config.include Capybara::DSL
end


# Capybaraにseleniumを使うように設定
Capybara.default_driver = :selenium
Capybara.app_host = 'http://devtest2.socs-staging.center/'

describe "在庫関連" do
  
  before do
    visit 'http://devtest2.socs-staging.center/'
    fill_in 'user_login', with: 'socsuser'
    fill_in 'user_password', with: 'si2015devtest2'
    click_button "ログイン"
  end
  
  it "受払一覧へ遷移できる" do
    click_link "受払一覧"
    expect(page).to have_text('受払管理')
    expect(current_path).to eq "/admin/stock_io_logs"
  end
  
  it "在庫管理へ遷移できる" do
    click_link "在庫管理"
    expect(page).to have_text('在庫管理')
    expect(current_path).to eq "/admin/stocks"
  end

end
