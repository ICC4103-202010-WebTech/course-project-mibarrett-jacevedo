class EventOrganization < ApplicationRecord
  has_many :events
  belongs_to :organization
end
