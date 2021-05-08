class Project < ApplicationRecord
  validates :data, presence: true

  has_many :comments, dependent: :destroy 
end
