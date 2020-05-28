class AddImgUrlToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :imgUrl, :string
  end
end
