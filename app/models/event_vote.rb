class EventVote < ApplicationRecord
  belongs_to :user
  belongs_to :event_option
    #has_one :event, through: :event_option
end
