class CreateApplicationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :application_forms do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :status
      t.references :animal, null: false, foreign_key: true
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
