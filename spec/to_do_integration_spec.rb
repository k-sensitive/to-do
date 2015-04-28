require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('To_Do user path', {:type => :feature}) do
    it('verifies the user path from the form to results page') do
      visit('/')
      expect(page).to have_content('To Do List')
    end
  end
