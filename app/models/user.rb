class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :event_votes, dependent: :destroy
  has_many :organization_user, dependent: :destroy
  has_many :organization, through: :organization_user, dependent: :destroy
  has_many :event_guests, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_one :mailbox, dependent: :destroy
  has_many :messages
  has_one :profile, dependent: :destroy
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
