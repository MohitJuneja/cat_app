class AddPasswordDigestToAdminUsers < ActiveRecord::Migration[6.0]
  def up
	  remove_column("admin_users","hash_password")
	  add_column("admin_users","password_digest", :string)
  end

  def down

	  remove_column("admin_users","password_digest")
	  add_column("admin_users","hash_password", :string)
  end
end
