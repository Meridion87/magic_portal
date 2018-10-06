class RenameCardsId < ActiveRecord::Migration[5.2]
  def change
    remove_column :publications, :cardid
    rename_column :publications, :cards_id, :card_id
  end
end
