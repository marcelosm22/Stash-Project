class UserPolicy < ApplicationPolicy

  def show?
    true
  end
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # en
  end
end
