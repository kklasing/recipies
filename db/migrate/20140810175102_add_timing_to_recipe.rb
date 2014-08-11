class AddTimingToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :preparation_time, :integer, :default => 0
    add_column :recipes, :waiting_time, :integer, :default => 0
    add_column :recipes, :cooking_time, :integer, :default => 0
  end
end
