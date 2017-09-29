require "rails_helper"

feature "test_0" do

  scenario "test_0" do
    visit('/pages/test_0')
    expect(page).to have_text('Test #0')
    find('a.btn.btn-success', text: 'Next').click
    expect(page).to have_text('Test #1')
  end

  scenario "test_1" do
    visit('/pages/test_1')
    expect(page).to have_text('Test #1')
    within('div#footer') do
      page.find('a.btn.btn-success', text: 'Next').click
    end
    expect(page).to have_text('Test #2')
  end

  scenario "test_2" do
    visit('/pages/test_2')
    find('p', text: 'Data will appear here after submission.')
    fill_in('example_textfield', with: 'kamil')
    check('example_checkbox')
    select('Opt 2', from: 'example_select')
    choose('example_radiobutton_opt_2')
    click_on('Submit')
    expect('.flash-messages').to be_present
  end
=begin
  scenario "test_3", js: true do
    visit('/pages/test_3')
    first('table tr').click
    all('table tr').last.click
    expect(page).to have_css('.highlighted')
  end

  scenario "test_4", js: true do
    visit('/pages/test_4')
    find('a#test-4-ajax-btn.btn.btn-default').click
    expect(page).to have_content('This is answer from the server')
  end
=end

  #scenario "test_5_1", js: true do
  #  user=create(:user)
  #  fill_in('user_email', with: user.email)
  #  fill_in('user_password', with: user.password)
  #  within('form#new_user.new_user') do
  #  click_on('Log in')
  #  end
  #  expect(page).to have_content(user.email)
  #end

end
