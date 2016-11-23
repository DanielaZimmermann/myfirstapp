class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :create, Comment
    can :read, Comment
    can :read, Product
    
    if user.admin?
      can :destroy, Comment
      can :manage, Product
    end
    #can :manage, Order, id: user.order.id
  end
end