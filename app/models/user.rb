    #email:string
    #password_digest:string
    
    #mallAd: boolean // tells me if this person has mallAdmin priveleges
    #store: string // if person isn't a mallAd, they should have a store and they can only view entries from that store alone

    #password:string virtual 
    #password_confirmation: string virtual
class User < ApplicationRecord
    # attr_accessor :email, :password, :password_confirmation
    has_secure_password
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end
