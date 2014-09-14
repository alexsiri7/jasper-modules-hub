class Ability
  include CanCan::Ability

  def initialize(user)
    can [:show, :index], Plugin
    if user
      can [:new, :create], Plugin
      can [:edit, :update, :destroy], Plugin, user_id: user.id
    end
  end
end
