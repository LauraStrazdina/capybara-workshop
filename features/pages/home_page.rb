class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @form_sing_up = Element.new(:css, '#signup')
    @input_email_sign_up = Element.new(:css, "#signup input[name='login']")
    @input_password_sign_up = Element.new(:css, "#signup input[name='password1']")
    @input_repeat_password_sign_up = Element.new(:css, "#signup input[name='password2']")
    @input_project_name_sign_up = Element.new(:css, "#signup input[name='project_name']")
    @button_close_try_now = Element.new(:css, '#signup .closecross')

    @button_open_sign_in = Element.new(:css, '#login-b')
    @form_sign_in = Element.new(:css, '#login')
    @input_email_sign_in = Element.new(:css, "#login input[name='login']")
    @input_password_sign_in = Element.new(:css, "#login input[name='password']")
    @button_sign_in = Element.new(:css, '#login .button')
    @alert_wrong_sing_in_info = Element.new(:css, 'form[action="/login"] div.alert.alert-danger span.errorText')
  end

  def visible?
    @button_start.visible?
  end

  def load
    visit('/legacy')
  end

  def openTryNow
    @button_start.click
    @form_sing_up.isVisible
    @button_close_try_now.isVisible
  end

  def fillTryNow(email, password, projectName)
    @input_email_sign_up.send_keys(email)
    @input_password_sign_up.send_keys(password)
    @input_repeat_password_sign_up.send_keys(password)
    @input_project_name_sign_up.send_keys(projectName)
  end

  def closeTryNow
    @button_close_try_now.click
    @button_close_try_now.notVisible
  end

  def openSignIn
    @button_open_sign_in.click
    @form_sign_in.isVisible
  end

  def fillSignIn(email, password)
    @input_email_sign_in.send_keys(email)
    @input_password_sign_in.send_keys(password)
  end

  def tryToSignIn
    @button_sign_in.click
  end

  def wrongSignInInfo
    @alert_wrong_sing_in_info.isVisible
  end
end