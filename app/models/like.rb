class Like < ApplicationRecord
  validates :user_id, :photo_id, presence: true
  validates :user_id, uniqueness: { scope: :photo_id }

  belongs_to :photo
  belongs_to :user
end
