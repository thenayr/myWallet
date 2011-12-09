class Deposit < ActiveRecord::Base
  attr_accessible :description, :category, :amount
end
