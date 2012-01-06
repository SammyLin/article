class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categoryships
  has_many :categories, :through => :article_categoryships, :dependent => :destroy
  has_attached_file :excerpt_image, :styles => { :medium => "300x300" , :thumb => "100x100"}
end
