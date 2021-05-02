class Project < ApplicationRecord
  validates :data, presence: true

  has_many :comments
end
