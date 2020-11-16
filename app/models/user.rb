class User < ApplicationRecord
  has_many :books
  has_many :reviews
  has_many :groups
  has_one_attached :image

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }

  mount_uploader :image, ImageUploader
end
