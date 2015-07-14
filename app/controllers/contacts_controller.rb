class ContactsController < ApplicationController
  
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)

  	if @contact.save #run "@contact.save" to save to database. Returns TRUE if saved, returns FALSE otherwise.
  		flash[:success] = "Message sent."
  		redirect_to new_contact_path
  	else 
  		flash[:danger] = "An error occured, your message has not been sent"
  		redirect_to new_contact_path
  	end
  end

  private
  	def contact_params
  		params.require(:contact).permit(:name, :email, :comments)
  	end

end