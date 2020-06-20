class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
              :recoverable, :rememberable, :validatable
  has_many :comments, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :event_votes, dependent: :destroy
  has_many :organization_user, dependent: :destroy
  has_many :organization, through: :organization_user, dependent: :destroy
  has_many :event_guests, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_one :mailbox, dependent: :destroy
  has_many :messages
  has_one :profile, :dependent => :destroy
  #has_one :organization , optional:true #only if its an admin

  validates :username, presence: true #, :email, presence: true
  validates :username, uniqueness: true
  #validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  after_create :create_mailbox

  acts_as_google_authenticated :method => :user_name_with_label

  def user_name_with_label
    "#{user_name}@example.com"
  end
  def admin?
    false
  end

  private
  def create_mailbox
    Mailbox.create!(user_id: self.id)
  end


end
