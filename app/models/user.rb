class User < ActiveRecord::Base
  include Sluggable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  
  has_secure_password validates: false
  
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: { minimum: 5 }
  
  sluggable_column :username
  
  def admin?
    self.role == 'admin'
  end
  
  def moderator?
    self.role == 'moderator'
  end
end