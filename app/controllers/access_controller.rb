class AccessController < ApplicationController
	layout 'admin'
  def menu
	  #This will need the text and links to Subject, Pages, Sections, Blogs etc. 
  end

  def login
	  #This will need the username, password. login from Facebook, Google, Twitter sort of OAuth
  end

  def admin
  	#this will need the
  end

  def attempt_login
	  #this will need the which user id and whether he/she authenticates
  end

  def logout
	  #this will need the logout. Set Session variable to nil and send him to login page?
  end 
end
