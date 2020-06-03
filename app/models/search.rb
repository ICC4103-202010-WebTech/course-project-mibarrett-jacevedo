class Search < ApplicationRecord
  def users
    @users = find_users
  end

  def profiles
    @profiles = find_profiles
  end

  def events
    @events =  find_events
  end

  def organizations
    @organizations = find_organizations
  end

  private

  def find_organizations
    organizations = Organization.order(created_at: :desc)
    organizations = organizations.where("name like ?", "%#{keywords}%", "%#{keywords}%") if keywords.present?
    questions
  end

  def find_events
    events = Event.order(created_at: :desc)
    events = events.where("title like ? OR description like?", "%#{keywords}%") if keywords.present?
    events
  end

  def find_profiles
    profile = Profile.order(:name)
    profiles = profiles.where("name like ?", "%#{keywords}%") if keywords.present?
    users
  end

  def find_users
    users = User.order(:username)
    users = users.where("username like ?", "%#{keywords}%") if keywords.present?
    users
  end
end
