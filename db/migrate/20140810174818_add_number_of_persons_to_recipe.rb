class AddNumberOfPersonsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :number_of_persons, :integer, :default => 1
  end
end
