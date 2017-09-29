require "rails_helper"
require "spec_helper"

feature "description" do
  let!(:page_3) { Page3.new }
  scenario "should description" do
    page_3.instance_exec do
    load
    textfield.set 'kamil'
    checkbox.set (true)
    select.set 'Opt 2'
    radiobutton2.set (true)
    button.click
    end
    expect(page).to have_text('kamil')
    expect('.flash-messages').to be_present
  end
end
