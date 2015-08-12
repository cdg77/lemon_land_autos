require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of lemon', {:type => :feature}) do
  it('shows the index page')  do
    visit('/')
    expect(page).to have_content("please don't")
  end
end
