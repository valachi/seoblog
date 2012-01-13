# encoding: UTF-8
class ContactMeMailer < ActionMailer::Base
  default to: "impulse221@yandex.ru"

  def sendmail(message)
    @message = message    
    mail(subject: "Форма обратной связи блога", from: @message.email)
  end
end
