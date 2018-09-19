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
      t.string :body, array: true
      t.string :keywords, array: true

      t.timestamps
    end
  end
end
