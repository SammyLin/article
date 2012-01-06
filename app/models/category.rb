class Category < ActiveRecord::Base
  has_many :article_categoryship
  has_many :article ,:through => :article_categoryship
end
