require "rails_helper"
require "spec_helper"

feature "description" do
  let!(:page_4) { Page4.new }

  scenario "is highlighted", js: true do
    page_4.instance_exec do
      load
      first_row.click
    end
    expect(page).to have_css('.highlighted')
  end

end
