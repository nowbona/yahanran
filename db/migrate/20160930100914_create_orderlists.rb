class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
      t.string :name
      t.string :tel
      t.integer :newweeks
      t.string :day
      t.integer :eggnumber
      t.string :place
      t.integer :allprice
      t.string :message

      t.timestamps null: false
    end
  end
end
