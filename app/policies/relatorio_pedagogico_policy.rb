class RelatorioPedagogicoPolicy < ApplicationPolicy

  def index?
  	user.pedagogx?
  end

  def show?
  	user.pedagogx?
  end

  def new?
  	user.pedagogx?
  end

  def edit?
  	user.pedagogx?
  end

  def create?
  	user.pedagogx?
  end

  def update?
  	user.pedagogx?
  end

  def destroy?
  	user.pedagogx?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
