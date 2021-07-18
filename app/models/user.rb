class User < ApplicationRecord
  has_many :opinions, foreign_key: 'AuthorId', class_name: 'Opinion'
  has_many :followed, foreign_key: 'Followerid', class_name: 'Following'
  has_many :followers, foreign_key: 'Followedid', class_name: 'Following'
  before_save { self.username = username.downcase }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  validates :fullname, presence: true, length: { minimum: 3, maximum: 100 }

  def self.user_followers(id, curr_user_id)
    Following.where(Followedid: id).where.not(Followerid: curr_user_id).order(created_at: :desc).limit(5)
  end
end
