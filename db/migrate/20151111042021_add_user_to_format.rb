class AddUserToFormat < ActiveRecord::Migration
  def change
    add_column :formats, :user_id, :integer
  end
end
