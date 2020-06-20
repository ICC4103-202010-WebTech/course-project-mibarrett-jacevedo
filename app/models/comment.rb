class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :replies, dependent: :destroy

  accepts_nested_attributes_for :replies, allow_destroy: true
end
