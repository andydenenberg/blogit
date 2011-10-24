class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, :through => :posts
  validates_uniqueness_of :name, :case_sensitive => false
end
