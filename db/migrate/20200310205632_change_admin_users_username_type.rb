class ChangeAdminUsersUsernameType < ActiveRecord::Migration[6.0]
  def up
	  change_column("admin_users","username", :string, :limit => 40)
  end

  def down
	  change_column("admin_users","username", :string)
  end
end
