class CreateFreeSkates < ActiveRecord::Migration[6.0]
  def change
    create_table :free_skates do |t|
      t.string :description

      t.timestamps
    end
  end
end
