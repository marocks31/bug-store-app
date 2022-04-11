class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :breed
      t.integer :age
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
