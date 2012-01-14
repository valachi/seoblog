class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  acts_as_taggable
  Post.per_page = 3

  validates_presence_of :permalink, :title, :content, :tag_list

  def to_param
    "#{id}-#{permalink}"
  end

end
