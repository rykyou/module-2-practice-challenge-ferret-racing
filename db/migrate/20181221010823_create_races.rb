class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.integer :ferret_id
      t.integer :tunnel_id
      t.string :name
    end
  end
end
