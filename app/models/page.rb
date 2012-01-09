class Page < ActiveRecord::Base
  has_attached_file :excerpt_image, :styles => { :medium => "300x300" , :thumb => "100x100"},
    :path => ":rails_root/public/images/page/:attachment/:id/:basename-:style.:extension",
     :url => "/images/page/:attachment/:id/:basename-:style.:extension"
end
