module ApplicationHelper
  def set_title
    content_tag :title, get_title
  end

  def get_title
    if defined? @post
      @post.meta_title.blank? ? @post.title : @post.meta_title
    else
      @meta_title
    end
  end
end
