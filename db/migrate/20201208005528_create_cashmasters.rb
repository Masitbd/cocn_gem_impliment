class CreateCashmasters < ActiveRecord::Migration[6.0]
  def change
    create_table :cashmasters do |t|
      t.string :name
      t.decimal :price
      t.text :comments

      t.timestamps
    end
  end
end
