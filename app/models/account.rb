class Account < ActiveRecord::Base
	has_paper_trail
  belongs_to :user

  def deposit(amount)
  	self.update(balance: balance + amount.to_i)
  end

  def withdrawl(amount)
  	self.update(balance: balance - amount.to_i)
  end
end
