class Account < ActiveRecord::Base
	has_paper_trail, on: [:update]
  belongs_to :user

  def deposit(amount)
  	self.update(balance: balance + amount)
  end

  def withdrawl(amount)
  	self.update(balance: balance - amount)
  end
end
