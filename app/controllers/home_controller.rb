class HomeController < ApplicationController
	before_action :authenticate_user!
	before_action :find_account
  def index
  end

  def transaction
  	# byebug
  	# @account.desposit
  end

  private
  def find_account
  	@account = current_user.account || current_user.create_account
  end
end
