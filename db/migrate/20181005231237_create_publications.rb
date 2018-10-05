class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.references :cards, foreign_key: true
      t.references :buys, foreign_key: true
      t.integer :userid
      t.integer :cardid
      t.float :cardprice
      t.string :divisa
      t.integer :cardquantity
      t.boolean :selled
      t.integer :mpid
      t.text :commentary
      t.date :pubdate

      t.timestamps
    end
  end
end
