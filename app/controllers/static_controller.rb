# encoding: UTF-8
class StaticController < ApplicationController
  def partners
    @meta_title = "Информация для партнеров"
  end

  def contact
    @meta_title = "Обратная связь"
  end

end
