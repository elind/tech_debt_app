class AddTechDebtTable < ActiveRecord::Migration
  def self.up
    create_table "tech_debts", :force => true do |t|
      t.string :title
      t.integer :priority
      t.string :keywords
      t.string :location
      t.string :reporter

      t.timestamps
    end
  end

  def self.down
    drop_table "tech_debts"
  end
end
