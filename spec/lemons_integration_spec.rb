require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of lemon', {:type => :feature}) do
  it('shows the index page')  do
    visit('/')
    expect(page).to have_content("please don't")
  end
  it('shows the lemon_forms path', {:type => :feature}) do
    visit('/lemon_forms')
    fill_in("make", :with => "Toyota")
    fill_in('model', :with => "Prius")
    fill_in('year', :with => "2000")
    click_button('Add Vehicle')
    expect(page).to have_content('Success!')
  end
end
