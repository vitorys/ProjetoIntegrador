class UserPolicy < ApplicationPolicy
  class Scope < Scope
	
	def index?
		user.admin?
	end    

    def resolve
      scope
    end
  end
end
