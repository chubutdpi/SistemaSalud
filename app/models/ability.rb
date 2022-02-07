# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      if user.epidemiology?
        can :manage, CovidCase
        can :manage, CovidSituation
        
      end
      
      if user.communication?
        can :manage, Notice
        can :image_validator, Notice
      end

      can :create, CovidCase
      can :read, Notice
    end
  end
end
