class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.string :reference
      t.string :classification
      t.string :title
      t.string :region
      t.string :poet
      t.string :period
      t.string :year
      t.array :body
      t.array :keywords

      t.timestamps
    end
  end
end
