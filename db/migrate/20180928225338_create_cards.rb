class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :cardname
      t.string :cardtext
      t.string :cardtype
      t.string :cardset
      t.string :cardrarity

      t.timestamps
    end
  end
end
