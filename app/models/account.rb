class Account < ActiveRecord::Base
	has_paper_trail
  belongs_to :user

  def deposit(amount)
  	
  end

  def withdrawl(amount)

  end
end
