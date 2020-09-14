class Post < ApplicationRecord
  validates :name, :images, presence: true

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  belongs_to :user
end
