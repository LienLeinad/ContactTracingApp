class LandingController < ApplicationController
    def index
        @ctform = ContactTracingForm.new
    end
    def create
        @ctform = ContactTracingForm.new(ctform_params)
        if @ctform.save
            redirect_to root_path, notice: "Contact Tracing form for " + @ctform.getName + " submitted, thank you!"
        else
            render :index
        end
    end

    private
    def ctform_params
        params.require(:contact_tracing_form).permit(:name, :email, :contact_number, :user_id)
    end
end