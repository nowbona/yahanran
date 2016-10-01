class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
      t.string :name
      t.string :tel
      t.integer :setnumber
      t.integer :allprice

      t.timestamps null: false
    end
  end
end
