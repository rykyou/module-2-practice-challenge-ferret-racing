class CreateTunnels < ActiveRecord::Migration[5.2]
  def change
    create_table :tunnels do |t|
      t.string :colour
      t.integer :length

      t.timestamps
    end
  end
end
