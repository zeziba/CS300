class Project < ApplicationRecord
  validates :name, presence: true
  validates :uri, presence: true

  has_many :comments, dependent: :destroy 
end
