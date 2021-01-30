class Comment < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  
  validates :description, presence: true
end
