class Profile < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      profile_type = Profile.find_by(name: search)
      if profile_type
        self.where(id: profile_type)
      else
        @profiles =Profile.all
      end
    else
      @profiles= Profile.all
    end
  end
end
