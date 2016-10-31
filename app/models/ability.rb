class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :destroy, Comment, user.admin: true
    #can :manage, Order, id: user.order.id
  end
end