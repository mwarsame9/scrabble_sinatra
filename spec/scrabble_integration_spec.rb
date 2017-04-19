require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns scrabble score') do
    visit('/')
    fill_in('title', :with => 'hello world')
    click_button('Send')
    expect(page).to have_content("17")
  end
end
