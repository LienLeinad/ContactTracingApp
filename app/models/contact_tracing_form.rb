class ContactTracingForm < ApplicationRecord

    validates :contact_number, presence: true, format: { with: /\A(09|\+639)\d{9}\z/, message: "Must be a valid Philippine number"}
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
    validates :name, presence: true    
    def getName
        self.name
    end
    def getEmail
        self.email
    end
    def getContact
        self.contact_number
    end
end
