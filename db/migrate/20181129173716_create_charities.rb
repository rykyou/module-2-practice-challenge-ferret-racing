class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :main_focus

      t.timestamps
    end
  end
end
