require 'rails_helper'

RSpec.feature "user_creates_new_account" do
  scenario "they see the page for their account" do
    first_name = "Christopher"
    last_name = "Calaway"
    # As a not-logged-in user
    # When I visit the new user page
    visit new_user_path
    # And I fill in my name
    fill_in "user_first_name", with: first_name
    fill_in "user_last_name", with: last_name
    # And I fill in a user_id
    fill_in "user_user_id", with: "eladamri"
    # And I fill in a password
    fill_in "user_password", with: "password"
    # And I click on submit
    click_on "Create User"
    # Then I see my name on the page
    expect(page).to have_content "Welcome #{first_name} #{last_name}!"
  end
end
