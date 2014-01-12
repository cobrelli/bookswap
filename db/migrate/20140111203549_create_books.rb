class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :user
      t.string :author
      t.integer :value

      t.timestamps
    end
  end
end
