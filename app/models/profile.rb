class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  def self.search(search)
    if search
      profiles = Profile.joins(:user).where("name LIKE ? OR users.username LIKE ?" , "%#{search}%", "%#{search}%")
    else
      profiles = Profile.all
    end
  end
end

