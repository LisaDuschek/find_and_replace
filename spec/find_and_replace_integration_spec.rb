require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('find_and_replace', {:type => :feature}) do
  it('processes the user entry and return new sentence') do
    visit('/')
    fill_in('string', :with => 'I am walking my cat to the cathedral')
    fill_in('find', :with => 'cat')
    fill_in('replace', :with => 'dog')
    click_button('Get New String')
    expect(page).to have_content('I am walking my dog to the doghedral')
  end
end
