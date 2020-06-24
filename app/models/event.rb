class Event < ApplicationRecord
  belongs_to :user
  has_one :event_organization, dependent: :destroy
  has_one :organization, through: :event_organization
  has_many :comments, dependent: :destroy
  has_many :replies, through: :comments
  has_many :event_guests, dependent: :destroy
  has_many :users, through: :event_guests
  has_many :event_options #, dependent: :destroy
  #has_many :event_votes, through: :event_options
  has_many :reports
  has_one_attached :picture
  has_many_attached :pdf
  has_many_attached :images
  has_many_attached :videos

  accepts_nested_attributes_for :event_options, allow_destroy: true
  accepts_nested_attributes_for :comments, allow_destroy: true
  accepts_nested_attributes_for :replies, allow_destroy: true
  accepts_nested_attributes_for :event_organization, allow_destroy: true
  accepts_nested_attributes_for :event_guests
  #accepts_nested_attributes_for :event_votes
  after_create :private_or_public

  def self.search(search)
    if search
      events = Event.joins(:user, :organization).where("title LIKE ? OR users.username LIKE ?  OR organizations.name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      events = Event.all
    end
  end

  private

  def private_or_public
    EventOrganization.create!(event_id: self.id, priv_or_pub: 2, organization_id: self.user.organization.id)
  end
end

