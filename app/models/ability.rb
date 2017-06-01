class Ability
  include CanCan::Ability
def initialize(user)
    user = user || User.new # guest user (not logged in)
    can [:read], Post
    can [:create, :update, :destroy], Post, user_id: user.id
  end
end
