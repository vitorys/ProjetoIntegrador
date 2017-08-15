class PessoaPolicy < ApplicationPolicy

  def index?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  def show?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  def new?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  def edit?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  def create?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  def update?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  def destroy?
    user.admin? || user.pedagogx? || user.psicologx? || user.assistente_social?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
