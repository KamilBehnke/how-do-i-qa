require "rails_helper"
require "spec_helper"

feature "description" do
  let!(:page_1) { Page1.new }

  scenario "should description" do
    page_1.load
    page_1.next_button.click
    expect(page).to have_content('Write a test that clicks the correct button.')
  end
end
