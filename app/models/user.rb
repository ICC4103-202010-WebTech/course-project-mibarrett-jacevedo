class User < ApplicationRecord
  has_many :comments
  has_many :events
  has_many :event_votes
  has_many :organization_users
  has_many :event_guests
  has_many :replies
  has_one :mailbox
  has_many :messages
  #has_one :organization , optional:true #only if its an admin

  validates :username, :email, presence: true
  validates :username, uniqueness: true
  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  after_create :create_mailbox

  private
  def create_mailbox
    Mailbox.create!(user_id: self.id)
  end
end
