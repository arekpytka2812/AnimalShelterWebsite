class CreateCages < ActiveRecord::Migration[7.0]
  def change
    create_table :cages do |t|
      t.integer :cageNumber
      t.references :animal, null: false, foreign_key: true
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
