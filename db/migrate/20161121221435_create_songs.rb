class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :nane
      t.integer :duration

      t.timestamps
    end
  end
end
