class EventOrganization < ApplicationRecord
  has_many :events
  has_many :organization
end
