When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

Then(/^I open Try now/) do
  @tests.login_tests.open_try_now
end

When(/^I fill Try now/) do
  @tests.login_tests.fill_try_now()
end

Then(/^I close Try now/) do
  @tests.login_tests.close_try_now
end

When(/^I open Sign in/) do
  @tests.login_tests.open_sign_in
end

Then(/^I fill Sign in view/) do
  @tests.login_tests.fill_sign_in()
end

When(/^I try to sign in/) do
  @tests.login_tests.try_to_sign_in
end

Then(/^I receive an error message/) do
  @tests.login_tests.validate_error
end





