class Article < ActiveRecord::Base
  belongs_to :user
  has_attached_file :excerpt_image, :styles => { :medium => "300x300" , :thumb => "100x100"}
end
