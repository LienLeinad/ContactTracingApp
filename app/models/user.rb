    #email:string
    #password_digest:string
    
    #password:string virtual 
    #password_confirmation: string virtual
class User < ApplicationRecord
    # attr_accessor :email, :password, :password_confirmation
    has_secure_password
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end
