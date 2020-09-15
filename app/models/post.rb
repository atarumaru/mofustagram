class Post < ApplicationRecord
  validates :name, :images, presence: true

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to :user
  has_many :likes, dependent: :destroy

  def like_user(user_id)
    likes.create(user_id: user_id)
  end
  
end
