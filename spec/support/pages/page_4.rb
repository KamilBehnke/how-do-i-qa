class Page4 < SitePrism::Page
  set_url '/pages/test_3'
  element :first_row, :xpath, ".//table/tbody/tr[1]"
  element :last_row, :xpath, ".//table/tbody/tr[2]"

end
