module Generic
  include Capybara::DSL

  def switch_to_main_window
    first_window = page.driver.browser.window_handles.first
    page.driver.browser.switch_to.window(first_window)
  end

  def switch_to_new_window
    new_window = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(new_window)
  end

  def close_window
    page.driver.browser.close
  end

  def press_down_arrow
    page.driver.browser.action.send_keys(:arrow_down).perform
  end

  def press_up_arrow
    page.driver.browser.action.send_keys(:arrow_up).perform
  end

  def press_return
    page.driver.browser.action.send_keys(:return).perform
  end

  def wait_for_ajax
    sleep(0.5) until active_ajax_requests.zero?
  end

  def current_url
    page.driver.current_url
  end

  def current_path
    URI.parse(current_url).path
  end
end

World(Generic)
