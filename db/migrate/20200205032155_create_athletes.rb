class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.integer :document
      t.string :name
      t.string :last_name
      t.date :date_bir
      t.integer :year
      t.references :category, null: false, foreign_key: true
      t.references :free_skate, null: false, foreign_key: true
      t.references :compulsory_figure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
