class Organization < ApplicationRecord
  belongs_to :user
  has_many :event_organizations, dependent: :destroy
  has_many :events, through: :event_organizations, dependent: :destroy
  has_many :organization_users, dependent: :destroy
  has_many :users, through: :organization_users
  has_one_attached :picture

  accepts_nested_attributes_for :organization_users

  after_create :org_user

  def self.search(search)
    if search
      organizations = Organization.where("name LIKE ?" , "%#{search}%")
    else
      organizations = Organization.all
    end
  end

  def org_user
    OrganizationUser.create!(user_id: self.user.id, organization_id: self.id)
  end
end
