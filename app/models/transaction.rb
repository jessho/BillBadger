class Transaction < ActiveRecord::Base
  attr_accessible :value, :from_user_id, :to_user_id
  
  belongs_to :debtor, :class_name => "User", :foreign_key => "to_user_id"
  belongs_to :creditor, :class_name => "User", :foreign_key => "from_user_id"
  
  
  validates :value, :presence => true
  validates :from_user_id, :presence => true
  validates :to_user_id, :presence => true
end
