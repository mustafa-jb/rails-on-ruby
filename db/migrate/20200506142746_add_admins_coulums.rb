class AddAdminsCoulums < ActiveRecord::Migration[6.0]
  def up
    add_column("admins","salary",:string)
  end
  def down
    remove_column("admins","salary")
  end
end
