require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combinations path', {:type => :feature}) do
  it('processes the user entry and displays the text') do
    visit('/')
    fill_in('cents_entered', :with => '123')
    click_button('Enter')
    # save_and_open_page
    expect(page).to have_content('number of quarters = 4, number of dimes = 2, number of pennies = 3')
  end

  it('displays an error message when input is non-numeric') do
    visit('/')
    fill_in('cents_entered', :with => 'AAA')
    click_button('Enter')
    expect(page).to have_content('Try again')
  end
  
end
