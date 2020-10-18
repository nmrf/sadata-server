class FrameworkPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    false
  end

  def edit?
    false
  end

  def update?
    false
  end

  def destroy?
    false
  end

  def permitted_attributes
    [:title, :short_title, :description, :has_indicators, :has_measures, :has_response]
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
