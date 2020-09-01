class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :book_groups
  has_many :groups, through: :book_groups
  has_one_attached :image

  validates :image, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :author, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true, length: { minimum: 10, maxmimum: 300 }
end
