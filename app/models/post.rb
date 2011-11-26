class Post < ActiveRecord::Base
  Post.per_page = 3

  def to_param
    "#{id}-#{title.parameterize}"
  end

end
