# Capybara::Screenshot.prune_strategy = :keep_last_run
# Capybara.default_max_wait_time = ENV['CAPYBARA_WAIT_TIME'].to_i.nonzero? || 5

if ENV['BROWSER'].blank?
  Capybara.javascript_driver = :webkit

  # Capybara::Webkit.configure do |config|
  #   config.allow_unknown_urls
  #   config.block_url('use.fonticons.com')
  #   config.block_url('cdnjs.cloudflare.com')
  #   config.block_url('oss.maxcdn.com')
  #   config.skip_image_loading
  # end
  elsif ENV['BROWSER'] == 'chrome'
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: { "chromeOptions" => { "args" => %w{ window-size=1024,768 } } })
    end
    Capybara.javascript_driver = :chrome
  #Capybara::Screenshot.register_driver(:chrome) do |driver, path|
    # driver.browser.save_screenshot(path)
  #end
  Capybara.javascript_driver = :chrome

  # Capybara::Webkit.configure do |config|
  #   config.block_unknown_urls
  # end
end
