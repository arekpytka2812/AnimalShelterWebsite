class CreateShelters < ActiveRecord::Migration[7.0]
  def change
    create_table :shelters do |t|
      t.string :address
      t.integer :animalNumber
      t.integer :cagesNumber
      t.string :description

      t.timestamps
    end
  end
end
