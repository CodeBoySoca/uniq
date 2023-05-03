require 'mongoid'

class Profile
   include Mongoid::Document
   field :name, type: String
   field :email, type: String
   field :profile_image, type: String
#    field :account_creation, type: DateTime
#    field :last_active, type: DateTime
#    field :messages, type: Array, default: []
#    field :items, type: Array, default: [] 
end