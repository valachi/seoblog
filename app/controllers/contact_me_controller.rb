# encoding: UTF-8
class ContactMeController < ApplicationController

  def new
    @meta_title = "Обратная связь"
    @contact_form = ContactForm.new
  end

  def send_email
    @meta_title = "Обратная связь"
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.valid?
      ContactMeMailer.sendmail(@contact_form).deliver
      redirect_to contact_me_path, notice: "Пиьсмо отправлено"
    else
      render :new
    end
  end

end
