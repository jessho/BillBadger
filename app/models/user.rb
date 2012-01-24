class User < ActiveRecord::Base
  attr_accessible :name
  
  has_many :debts, :class_name => "Transaction", :foreign_key => "to_user_id"
  has_many :credits, :class_name => "Transaction", :foreign_key => "from_user_id"
  
  validates :name, :presence => true
end

