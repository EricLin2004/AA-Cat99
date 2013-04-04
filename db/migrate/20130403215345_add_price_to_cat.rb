class AddPriceToCat < ActiveRecord::Migration
  def change
    add_column :cats, :price, :integer
  end
end
