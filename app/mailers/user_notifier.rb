class UserNotifier < ApplicationMailer
  default :from => 'blackopswiki0@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_update_email(user,article)
    @user = user
    @article = article # controller getting fat with instance variables
	  mail( :to => user.email, :subject => 'A new post has been added to EBWiki' )
  end

  def send_followers_email(users, article)
    @article = article
  	users.each do|user|
	  mail( :to => user.email, :subject => 'An EBWiki case has just been updated.' )
    end
  end
end
