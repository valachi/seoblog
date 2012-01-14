#encoding: utf-8
class Comment < ActiveRecord::Base
  belongs_to :post
  validates :name, presence: true
  after_save :new_comment_added_notification

  private

  def new_comment_added_notification
    ContactMeMailer.new_comment_added(self).deliver
  end
end
