class ChangePagesAddVisibleColumn < ActiveRecord::Migration[6.0]

  def up
	  add_column('pages','visible', :boolean,  :after => 'position')
  end


  def down
  end

end
