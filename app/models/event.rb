class Event < ApplicationRecord
  belongs_to :user
  has_one :event_organization, dependent: :destroy
  has_one :organization, through: :event_organization
  has_many :comments, dependent: :destroy
  has_many :event_guests, dependent: :destroy
  has_many :users, through: :event_guests
  has_many :event_options, dependent: :destroy
  has_one_attached :picture

  accepts_nested_attributes_for :event_options, allow_destroy: true
  accepts_nested_attributes_for :comments

  def self.search(search)
    if search
      events = Event.joins(:user, :organization).where("title LIKE ? OR users.username LIKE ?  OR organizations.name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      events = Event.all
    end
  end
end

