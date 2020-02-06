class CreateCompulsoryFigures < ActiveRecord::Migration[6.0]
  def change
    create_table :compulsory_figures do |t|
      t.string :description

      t.timestamps
    end
  end
end
