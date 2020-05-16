class CartPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def pagamento?
    record.user == user
  end

  def resumo?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
