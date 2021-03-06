class NotificationsMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.join_invitation.subject
  #
  def join_invitation(user, invitation)
    @invitation = invitation
    @user = user

    mail(
      :from => "#{user.name} <#{user.email}>", 
      :to => "#{invitation.name} <#{invitation.email}>", 
      :subject => "You're invited to Drive Less by #{user.name}"
    )  
  end
  
  def friendships_notification(user, friend)
    @friend = friend
    @user = user
    
    mail(
      :from => "drivelesschallenge@gmail.com",
      :to => "#{friend.name} <#{friend.email}>", 
      :subject => "#{user.name} added you as a friend"
    )
  end
  
end
