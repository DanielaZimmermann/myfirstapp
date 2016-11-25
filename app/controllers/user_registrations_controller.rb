class UserRegistrationsController < Devise::RegistrationsController
  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
  end
end