class SavingsAccount
  def self.interest_rate(balance)
    case balance
    when .< 0 then 3.213
    when .< 1000 then 0.5
    when .< 5000 then 1.621
    else 2.475
    end
  end

  def self.interest(balance)
    interest_rate(balance) * balance / 100
  end

  def self.annual_balance_update(balance)
    balance + interest(balance)
  end

  def self.years_before_desired_balance(current_balance, target_balance)
    balance = current_balance
    years = 0
    while balance < target_balance
      years += 1
      balance = annual_balance_update(balance)
    end
    years
  end
end
