# encoding: UTF-8
class ContactMeMailer < ActionMailer::Base
  default to: "impulse221@yandex.ru",
          from: "registracia221@gmail.com"

  def sendmail(message)
    @message = message    
    mail(subject: "Форма обратной связи блога")
  end

  def new_comment_added(comment)
    @comment = comment
  end
  
  def new_comment_added(comment)
    @comment = comment
    mail(subject: "Новый комментари к посту")
  end
end
