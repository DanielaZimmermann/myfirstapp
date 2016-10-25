class UserMailer < ApplicationMailer
	default from: "dani.zimmermann@gmail.com"

	  def contact_form(email, name, message)
	  	@name = params[:name]
	  	@email = params[:email]
	  	@message = params[:message]
	  	UserMailer.contact_form(@email, @name, @message).deliver_now
	  end
end
