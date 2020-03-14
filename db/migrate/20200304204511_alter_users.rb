class AlterUsers < ActiveRecord::Migration[6.0]
  
  def up
	  rename_table('users','admin_users')
	  change_column('admin_users','first_name', :string, :limit => 50)
	  rename_column('admin_users','password','hash_password')
	  add_column('admin_users','username', :sting, :limit => 100, :after => 'email')
	  puts "***********Adding an index**************"
	  add_index('admin_users','username')
  end

  def down
	  remove_index('admin_users','first_name')
	  remove_column('admin_users','address')
	  rename_column('admin_users','hash_password','password')
	  change_column('admin_users','first_name', 'string', :limit => 25)
	  rename_table('admin_users', 'users')
  end


end
