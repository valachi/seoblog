module ApplicationHelper
  def set_title
    @meta_title || @post.meta_title || @post.title
  end
end
