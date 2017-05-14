class Post < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  has_many :likes
  has_many :liked_users, :through => :likes, :source => :user

  def find_like(user)
    self.likes.where(:user_id => user.id).first
  end
end
