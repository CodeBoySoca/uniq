# require 'pony'

# class Email
#    def send_email
#         Pony.mail({
#             :to => 'kidmongoose@gmail.com',
#             :via => :smtp,
#             :body => 'test',
#             :html_body => 'What do you know, Joe?',
#             :via_options => {
#             :address        => 'smtpout.secureserver.net',
#             :port           => '465',
#             :user_name      => 'me@algorithmsinflight.com',
#             :password       => 'byrpir-buxbi1-huQman',
#             :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
#             :domain         => "localhost.localdomain" # the HELO domain provided by the client to the server
#             }
#         })
#    end
# end