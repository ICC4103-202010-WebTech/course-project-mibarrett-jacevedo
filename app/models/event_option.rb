class EventOption < ApplicationRecord
  belongs_to :event
  has_many :event_votes, dependent: :destroy

end
