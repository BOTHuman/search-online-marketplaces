module Amazon
  include Capybara::DSL

  def visit_amazon_uk_website
    visit 'https://amazon.co.uk'
  end

  def accept_cookie_preferences
    find('span[id=a-autoid-0]').click
  end

  def search_gaming_laptop
    fill_in 'twotabsearchtextbox', with: 'gaming laptop'
    press_return
    #press_return is defined on the file "generic_methods.rb" within the support folder
  end

  def sort_by_avg_customer_rating
    find('span.a-dropdown-label', text: 'Sort by:').click
    find('div.a-popover-inner ul li', text: 'Avg. Customer Review').click
  end

  def display_top_search_result
    first('div.s-image-fixed-height').click
    puts 'Top result: ' + 'https://amazon.co.uk' + current_path
    #current_url is defined on the file "generic_methods.rb" within the support folder
  end
end

World(Amazon)
