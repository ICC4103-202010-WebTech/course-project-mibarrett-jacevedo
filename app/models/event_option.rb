class EventOption < ApplicationRecord
  belongs_to :event
  has_many :event_votes, dependent: :destroy

  accepts_nested_attributes_for :event_votes

end
