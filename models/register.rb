require 'rotp'

def Register 
  def generate_otp
     return ROTP::TOTP.new('ADD YOUR SECRET HERE')
  end  

  def check_user email
    #if email in database user has account :)
  end

  def find_user user_id
    return User.find(user_id)
  end

  def prevent_otp_reuse user_id
     user = find_user(user_id)
     totp = ROTP::TOTP.new(user.otp_secret)
     user.last_otp_at
     
  end
end