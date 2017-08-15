class RelatorioGeralPolicy < ApplicationPolicy

  def index?
  end

  def show?
  end

  def new?
  end

  def edit?
  end

  def create?
  end

  def update?
  end

  def destroy?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
