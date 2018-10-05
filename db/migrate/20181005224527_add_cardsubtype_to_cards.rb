class AddCardsubtypeToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :cardsubtype, :string
    add_column :cards, :cardmanacost, :string
    add_column :cards, :cardcolors, :string
  end
end
