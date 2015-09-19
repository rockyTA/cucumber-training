Given(/^I am on google$/) do
  visit 'http://www.google.de'
end

Given(/^The google page is loaded$/) do
  page.should have_css "#hplogo"
  page.should have_css "#lst-ib"
end

Given(/^I enter random derp things$/) do
  fill_in "lst-ib", with:"random derp things"

end

Given(/^I click on images$/) do
 find(:xpath,"*//a[text()='Bilder']").click
end

Given(/^I should see random derp things$/) do
  find("a[href*='Salamander']").click
end


Given(/^I clicked on search$/) do
  first(".lsb").click
end