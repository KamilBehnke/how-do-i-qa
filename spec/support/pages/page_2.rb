class Page2 < SitePrism::Page
  set_url '/pages/test_1'
  element :next_button, :xpath, "//div[@class='text-right']/a[contains(@href, '/pages/test_2')]"
end
