class Comment < ApplicationRecord
  belongs_to :home
  validates :name, length: { minimum: 1}
  validates :comment, length: { minimum: 1 }
end
