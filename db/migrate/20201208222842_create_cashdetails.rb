class CreateCashdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :cashdetails do |t|
      t.string :itemname
      t.decimal :qty
      t.decimal :rate
      t.belongs_to :cashmaster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
