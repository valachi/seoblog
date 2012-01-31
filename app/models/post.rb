class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  acts_as_taggable
  Post.per_page = 3

  before_save :remove_blank_attributes
  validates_presence_of :permalink, :title, :content, :tag_list

  def to_param
    "#{id}-#{permalink}"
  end

  def remove_blank_attributes
    attributes.each do |name, value|
      write_attribute name, nil if value.blank?
    end
  end
end
