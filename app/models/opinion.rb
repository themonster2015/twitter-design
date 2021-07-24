class Opinion < ApplicationRecord
  belongs_to :Author, foreign_key: 'AuthorId', class_name: 'User'
  validates :text, presence: true, length: { maximum: 260 }
  has_many :likes, foreign_key: 'OpinionId', class_name: 'Like'
end
