class Deposit < ActiveRecord::Base
  attr_accessible :description, :category, :amount
  validates_presence_of :amount
  
end
