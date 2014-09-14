class Ability
  include CanCan::Ability

  def initialize(user)
    can [:show, :index], Plugin
    if user
      can [:new, :create], Plugin
      can [:new, :create], Version
      can [:manage], Plugin, user_id: user.id
      can [:manage], Version, plugin: { user_id: user.id }
    end
  end
end
