class Project < ApplicationRecord
  validates :name, presence: true
  validates :uri, presence: true

  has_many :comments, dependent: :destroy 
  has_one_attached :image, dependent: :destroy
end
