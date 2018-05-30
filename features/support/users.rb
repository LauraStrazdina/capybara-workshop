require 'date'
module Users
  def Users.try_now_form_user
    @contact_form_user ||= User.new(args = {})
    @contact_form_user
  end

  def Users.sign_in_form_user
    @contact_form_user ||= User.new(args = {})
    @contact_form_user
  end

  # def Users.contact_form_invalid_user
  #   @contact_form_invalid_user ||= User.new(args = {email: 'name@name'})
  #   @contact_form_invalid_user
  # end

  class User
    attr_reader :email, :password, :projectName
    def initialize(args = {})
      defaults = {email: 'test@test.com', password: 'password', projectName: 'name'}
      args = defaults.merge(args)
      @email = args[:email]
      @password = args[:password]
      @projectName = args[:projectName]
    end
  end

end