class Post < ActiveRecord::Base
  Post.per_page = 6

  def to_param
    "#{id}-#{title.parameterize}"
  end

end
