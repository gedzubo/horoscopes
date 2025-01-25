class CreateHoroscopes < ActiveRecord::Migration[8.0]
  def change
    create_table :horoscopes do |t|
      t.string :title
      t.text :body
      t.references :sign, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
