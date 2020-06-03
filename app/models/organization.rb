class Organization < ApplicationRecord
  belongs_to :user
  has_many :event_organizations, dependent: :destroy
  has_many :events, through: :event_organizations, dependent: :destroy
  has_many :organization_users, dependent: :destroy
  has_many :users, through: :organization_users
  has_one_attached :picture

  def self.search(search)
    if search
      organization_type = Organization.find_by(name: search)
      if organization_type
        self.where(id: organization_type)
      else
        @organizations = Organization.all
      end
    else
      @organizations= Organization.all
    end
  end
end
