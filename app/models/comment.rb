class Comment < ApplicationRecord
  belongs_to :project

  enum state: [:not_reviewed, :published, :hidden]
end
