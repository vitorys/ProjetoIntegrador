class RelatorioPsicologicoPolicy < ApplicationPolicy

  def index?
    user.psicologx?
  end

  def show?
    user.psicologx?
  end

  def new?
    user.psicologx?
  end

  def edit?
    user.psicologx?
  end

  def create?
    user.psicologx?
  end

  def update?
    user.psicologx?
  end

  def destroy?
    user.psicologx?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
