class Post < ActiveRecord::Base
  acts_as_taggable
  Post.per_page = 3

  def to_param
    "#{id}-#{permalink}"
  end

end
