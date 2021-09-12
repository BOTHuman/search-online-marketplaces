Given(/^I am on the amazon uk website$/) do
  visit_amazon_uk_website
  accept_cookie_preferences
end

When(/^I search for gaming laptops by average customer ratings$/) do
  search_gaming_laptop
  sort_by_avg_customer_rating
end

Then(/^the best rated choice will be displayed on top$/) do
  display_top_search_result
end

