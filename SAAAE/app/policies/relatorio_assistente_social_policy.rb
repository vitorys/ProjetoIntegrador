class RelatorioAssistenteSocialPolicy < ApplicationPolicy

def index?
    user.assistente_social?
  end

  def show?
    user.assistente_social?
  end

  def new?
    user.assistente_social?
  end

  def edit?
    user.assistente_social?
  end

  def create?
    user.assistente_social?
  end

  def update?
    user.assistente_social?
  end

  def destroy?
    user.assistente_social?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
