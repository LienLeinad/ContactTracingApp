class ContactTracingForm < ApplicationRecord

    validates :contact_number, presence: true, format: { with: /\A(09|\+639)\d{9}\z/, message: "Must be a valid Philippine number"}
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
    validates :name, presence: true    
    belongs_to :user
    def getName
        self.name
    end
    def getEmail
        self.email
    end
    def getContact
        self.contact_number
    end
    def getStore
        location = User.find_by(id: self.user_id)
        location.store
    end
    # def self.ransackable_attributes(auth_object = nil)
    #     ["name", "email",  "created_at", "user_id"]
    # end
end
