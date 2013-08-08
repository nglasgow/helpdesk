require 'spec_helper'

feature 'Creating Tickets' do
  scenario "can create a ticket" do
    visit '/'
    click_link 'New Ticket'
    fill_in 'Name', with: 'Bob'
    fill_in 'Description', with: "I am not please with these shoes"
    click_button 'Create Ticket'
    page.should have_content('Ticket has been created.')
  end
end
