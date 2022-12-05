require 'rails_helper'

RSpec.feature "Visiting the HomePage", type: :feature do
  scenario "The visitor should see portfolio" do
    visit root_path
    expect(page).to have_text("Portfolio")
  end
end