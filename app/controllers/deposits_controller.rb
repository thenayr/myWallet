class DepositsController < ApplicationController
  before_filter :login_required
  respond_to :html, :js
  def index
    @deposits = Deposit.all
  end

  def create
    @deposit = Deposit.new(params[:deposit])
    
    @deposit.save
    
    respond_with @deposit, :location => deposits_url
  end

  def destroy
    @deposit = Deposit.find(params[:id])
    @deposit.destroy
    respond_with @deposit, :location => deposits_url
  end
end
