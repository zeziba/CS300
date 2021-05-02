class Comment < ApplicationRecord
  validates :data, presence: true
  belongs_to :project

  enum state: [:not_reviewed, :published, :hidden]
end
