require "rails_helper"
require "spec_helper"

feature "description" do
  let!(:page_2) { Page2.new }

  scenario "should description" do
    page_2.load
    page_2.next_button.click
    #expect(page).to have_content('Write a test that clicks the correct button.')
  end
end
