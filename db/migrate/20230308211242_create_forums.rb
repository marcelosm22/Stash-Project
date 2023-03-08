class CreateForums < ActiveRecord::Migration[7.0]
  def change
    create_table :forums do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :category

      t.timestamps
    end
  end
end
