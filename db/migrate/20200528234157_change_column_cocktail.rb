class ChangeColumnCocktail < ActiveRecord::Migration[6.0]
  def change
    rename_column :cocktails, :imgUrl, :image_url
  end
end
