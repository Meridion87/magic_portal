class AddPhotoToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :cardphoto, :string
  end
end
