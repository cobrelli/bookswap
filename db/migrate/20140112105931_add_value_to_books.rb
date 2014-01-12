class AddValueToBooks < ActiveRecord::Migration
  def change
    add_column :books, :value, :integer
  end
end
