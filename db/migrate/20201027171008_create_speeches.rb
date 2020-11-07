class CreateSpeeches < ActiveRecord::Migration[5.2]
  def change
    create_table :speeches do |t|
      t.string :speaker_name
      t.integer :year
      t.string :month
      t.integer :day
      t.text :content
      t.string :title
      t.string :profile_url
      t.references :mp

      t.timestamps
    end
  end
end
