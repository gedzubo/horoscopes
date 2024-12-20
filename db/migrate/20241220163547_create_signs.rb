class CreateSigns < ActiveRecord::Migration[8.0]
  def change
    create_table :signs do |t|
      t.string :name
      t.text :description
      t.string :period

      t.timestamps
    end
  end
end
