# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(useroradmin)
    can :read, :all # permissions for every user, even if not logged in
    if useroradmin.present?  # additional permissions for logged in users (they can manage their posts)
      if useroradmin.is_a? User
      can :manage, Profile, user_id: useroradmin.id
      can :manage, User, user_id: useroradmin.id
      can :manage, Event, user_id: useroradmin.id
      can :manage, Comment, user_id: useroradmin.id

      elsif useroradmin.is_a? Administrator  # additional permissions for administrators
        can :manage, Event
        can :manage, User
        can :manage, Profile
        can :manage, Organization
        can :manage, Comment
      end
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
