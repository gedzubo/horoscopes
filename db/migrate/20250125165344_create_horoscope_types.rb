class CreateHoroscopeTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :horoscope_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
