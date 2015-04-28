require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('To_Do user path', {:type => :feature}) do
    it('verifies the user path from the form to results page') do
      visit('/')
      fill_in('description', :with => 'clean car')
      click_button('Add Task')
      expect(page).to have_content('The task has been successfully submitted! Back')
    end
  end
