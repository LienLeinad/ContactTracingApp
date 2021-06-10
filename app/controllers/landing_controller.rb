class LandingController < ApplicationController
    def index
        if Current.user.isMallAd
            redirect_to root_path, alert: "You're a mall admin member, you don't need to make Contact Tracing Forms"
        end
        @ctform = ContactTracingForm.new
    end
    def create
        @ctform = ContactTracingForm.new(ctform_params)
        if @ctform.save
            redirect_to landing_path, notice: "Contact Tracing form for " + @ctform.getName + " submitted under store name, " + @ctform.getStore + ", thank you!"
        else
            render :index
        end
    end

    private
    def ctform_params
        params.require(:contact_tracing_form).permit(:name, :email, :contact_number, :user_id)
    end
end