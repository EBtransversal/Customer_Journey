When(/^I go to the blog$/) do
  visit "https://google.in/"
end

Then(/^I should see articles$/) do
  click_link "Search"
end
