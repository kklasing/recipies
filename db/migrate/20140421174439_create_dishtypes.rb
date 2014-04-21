class CreateDishtypes < ActiveRecord::Migration
  def change
    create_table :dishtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
