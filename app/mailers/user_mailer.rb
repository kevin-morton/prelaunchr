class UserMailer < ActionMailer::Base
  default from: "Squeaky Pops <hello@squeakypops.com>"

  def signup_email(user)
    @user = user
    @twitter_message = "finally, a delicious snack for my kids that doesn't turn their hands neon orange! @squeakypops #BetterThanCheddarBunnies"

    mail(:to => user.email, :subject => "Thanks for signing up!")
  end
end
