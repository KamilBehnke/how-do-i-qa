class Page1 < SitePrism::Page
  set_url '/pages/test_0'
element :next_button, :xpath, "//div[@class='text-right']/a[contains(@href, '/pages/test_1')]"
#element :next_button, 'a.btn.btn-success'
#Nie działa# element :next_button, :xpath, "//A[@class='btn btn-success'][text()='Next']"

  # sprobuj dac id

end
