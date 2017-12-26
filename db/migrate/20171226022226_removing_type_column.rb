class RemovingTypeColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :shirts, :type, :string
  end
end
