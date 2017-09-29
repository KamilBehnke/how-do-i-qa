class Page3 < SitePrism::Page
  set_url '/pages/test_2'
  element :textfield, '#example_textfield'
  element :checkbox, '#example_checkbox'
  element :select, '#example_select'
  element :radiobutton2, '#example_radiobutton_opt_2'
  element :button, '[name="commit"]'
  element :next_button, '//div[@class="text-right"]/a[contains(@href="/pages/test_3")]'
end
