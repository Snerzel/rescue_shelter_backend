class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      
      t.string :kind

      t.timestamps
    end
  end
end
