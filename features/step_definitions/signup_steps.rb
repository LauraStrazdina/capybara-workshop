When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

When(/^I open Try now/) do
  @pages.page_home.openTryNow
end

When("I enter {string}, {string}, {string} in try now view") do |email, password, projectName|
  @pages.page_home.fillTryNow(email, password, projectName)
end


Then("I close Try now") do
  @pages.page_home.closeTryNow
end

When(/^I open Sign in/) do
  @pages.page_home.openSignIn
end

When("I enter {string}, {string} in sign up view") do |email, password|
  @pages.page_home.fillSignIn(email, password)
end

When("I try to sign in") do
  @pages.page_home.tryToSignIn
end

When("I receive an error message") do
 @pages.page_home.wrongSignInInfo
end


