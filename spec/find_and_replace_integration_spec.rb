require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble_score', {:type => :feature}) do
  it('processes the user entry and returns calculated scrabble score') do
    visit('/')
    fill_in('score', :with => 'word')
    click_button('Calculate')
    expect(page).to have_content('Green Eggs and Ham')
  end
end
