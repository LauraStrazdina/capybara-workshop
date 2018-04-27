When(/^I am on Appimation home page/) do
  visit('/')
  unless (find(:css, '#logo').visible?)
    raise "logo not visible"
  end
end

When(/^I open Try now/) do
  find(:css, '#start_button').click
  unless (find(:css, '#signup').visible?)
    raise "element not visible"
  end
end

When("I enter {string}, {string}, {string} in try now view") do |email, password, projectName|
  find(:css, "#signup input[name='login']").send_keys(email)
  find(:css, "#signup input[name='password1']").send_keys(password)
  find(:css, "#signup input[name='password2']").send_keys(password)
  find(:css, "#signup input[name='project_name']").send_keys(projectName)
end

When(/^I close Try now/) do
  find(:css, '#signup .closecross').click
  if (find(:css, '#signup').visible?)
    raise "element visible"
  end
end

When(/^I open Sign in/) do
  find(:css, '#login-b').click
  unless (find(:css, '#login').visible?)
    raise "element not visible"
  end
end

When("I enter {string}, {string} in sign up view") do |email, password|
  find(:css, "#login input[name='login']").send_keys(email)
  find(:css, "#login input[name='password']").send_keys(password)
end

When("I try to sign in") do
  find(:css, '#login .button').click
end

When("I receive an error message") do
  unless (find(:xpath, "//span[contains(text(),'Username or password is not correct')]").visible?)
    raise "element not visible"
  end
end
