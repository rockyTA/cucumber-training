Given(/^I have a browser instance$/) do

end

Given(/^I am on ebay$/) do
  visit "http://www.ebay.de/"
end

When(/^I click on search$/) do
  find("#gh-btn").click
end

Then(/^Input field is loaded$/) do
  page.should have_css "#gh-ac"
end

When(/^I enter mario$/) do
  fill_in "gh-ac", with:"mario wii u"
end

Then(/^Mario item are shown$/) do
  page.should have_css ".imgWr2"
end

When(/^I click on the first item$/) do
  first(".vip").click
end

Then(/^The product page is opened$/) do
  page.should have_css "#isCartBtn_btn"
end

