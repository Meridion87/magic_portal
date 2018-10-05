class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys do |t|
      t.references :users, foreign_key: true
      t.date :buydate

      t.timestamps
    end
  end
end
