class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.integer :shelter_id
      t.string :kind
      t.string :availability
      t.integer :age
      t.string :name
      t.string :info

      t.timestamps
    end
  end
end
