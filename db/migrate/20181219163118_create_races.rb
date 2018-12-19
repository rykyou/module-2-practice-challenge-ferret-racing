class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.integer :tunnel_id
      t.integer :ferret_id
    end
  end
end
