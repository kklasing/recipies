class AddIndexToDishtypesName < ActiveRecord::Migration
  def change
    add_index :dishtypes, :name, unique: true
  end
end
