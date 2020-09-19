class Post < ApplicationRecord
  validates :name, :images, presence: true

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to :user
  has_many :likes, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
  #def uniine(user)
  #  likes.find_by(user_id: user.id).destroy
  #end
end
