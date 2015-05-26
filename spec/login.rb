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
    visit '/'
  end

  if "トップページが表示されること" do
    expect(page).to have_content('user_login')
  end

end


#driver = Selenium::WebDriver.for :firefox
#driver.navigate.to 'http://devtest2.socs-staging.center/'
#element = driver.find_element(:id, 'user_login')
#element.send_keys('socsuser')
#driver.find_element(:id, 'user_password').send_keys('si2015devtest2')
#driver.find_element(:name, 'button').click
#driver.quit
