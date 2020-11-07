class CreateMps < ActiveRecord::Migration[5.2]
  def change
    create_table :mps do |t|
      t.string :name
      t.string :party
      t.string :tip
      t.string :yborn
      t.string :county
      t.text :html
      t.string :period
      t.string :profile_url
      t.references :speeches

      t.timestamps
    end
  end
end
