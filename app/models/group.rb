class Group < ApplicationRecord
  has_many :book_groups
  has_many :books, through: :book_groups
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
end
