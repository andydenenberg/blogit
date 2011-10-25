class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, :through => :posts
  validates_uniqueness_of :name, :case_sensitive => false
  
  @user = User.all  # simple, but slow = could also punch admin into db via rails Console
     if @user.count
       @admin = User.new()
       @admin.name = 'Admin'
       @admin.save
     end
  
end
