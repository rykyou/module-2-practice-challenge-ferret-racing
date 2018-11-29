class CreateFerrets < ActiveRecord::Migration[5.2]
  def change
    create_table :ferrets do |t|
      t.string :name
      t.boolean :neutered
      t.integer :charity_id

      t.timestamps
    end
  end
end
