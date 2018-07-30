class UserMailer < ActionMailer::Base
  default from: "Squeaky Pops <hello@squeakypops.com>"

  def signup_email(user)
    @user = user
    @twitter_message = "#GetPoppin and earn a year's supply of nutritious and delicious popped chickpea snacks! Excited for @squeakypops to launch."

    mail(:to => user.email, :subject => "Thanks for signing up!")
  end
end
