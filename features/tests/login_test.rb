class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.visible?
  end

  def open_try_now
    @pages.page_home.openTryNow
  end

  def fill_try_now()
    user = Users.try_now_form_user
    @pages.page_home.enterEmailTryNow(user.email)
    @pages.page_home.enterPasswordTryNow(user.password)
    @pages.page_home.enterProjectNameTryNow(user.projectName)
  end

  def close_try_now
    @pages.page_home.closeTryNow
  end

  def open_sign_in
    @pages.page_home.openSignIn
  end

  def fill_sign_in()
    user = Users.sign_in_form_user
    @pages.page_home.enterEmailSignIn(user.email)
    @pages.page_home.enterPasswordSignIn(user.password)
    sleep(3)
  end

  def try_to_sign_in
    @pages.page_home.tryToSignIn
  end
  
  def validate_error
    @pages.page_home.wrongSignInInfo
  end



end
