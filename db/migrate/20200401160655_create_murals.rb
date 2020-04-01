class CreateMurals < ActiveRecord::Migration[6.0]
  def change
    create_table :murals do |t|
      t.integer :artist_id
      t.string :mural_title
      t.integer :year_installed
      t.text :description
      t.text :artists

      t.timestamps
    end
  end
end
