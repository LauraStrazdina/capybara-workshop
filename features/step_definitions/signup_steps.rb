When(/^I am on Appimation home page/) do
  visit('/')

  find(:css, '#start_button')
  find(:xpath, "//button[@id = 'start_button']")

  find(:css, '#signup-b')
  find(:xpath, "//button[@id = 'signup-b']")

  find(:css, '#cta')
  find(:xpath, "//section[@id = 'cta']")

  find(:css, '#name')
  find(:xpath, "//input[@id = 'name']")

  find(:css, '#email')
  find(:xpath, "//input[@id = 'email']")

  find(:css, '#contactus-message')
  find(:xpath, "//textarea[@id = 'contactus-message']")

  find(:css, '#contactus-button')
  find(:xpath, "//input[@id = 'contactus-button']")

  find(:css, '.fa-facebook')
  find(:xpath, "//a[@class = 'icon fa-facebook']")

  all(:css, "section.box > div > section")
  all(:xpath, "//section[@class = 'box special features']/div/section")

  find(:css, "section.box > div:nth-of-type(1) > section:nth-of-type(1) > img")
  find(:xpath, "//h3[contains(text(), 'Chain')]/preceding-sibling::img")

end