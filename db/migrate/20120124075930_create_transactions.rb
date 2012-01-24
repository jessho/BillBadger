class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :value
      t.integer :from_user_id
      t.integer :to_user_id

      t.timestamps
    end
  end
end
