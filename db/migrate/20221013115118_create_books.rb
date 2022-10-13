class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :status
      t.text :description
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
