class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :user_id
      t.integer :value

      t.timestamps
    end
  end
end
