class ResultsController < ApplicationController
    def list
        if !Current.user
            redirect_to root_path, alert: "You must be logged in to view this page"
        elsif Current.user.isMallAd #mallAd can see all the logs
            @userList = User.all
            @q = ContactTracingForm.ransack(params[:q])
            @ctList = @q.result.includes(:user)
            
        else #nonMallAd can only see logs of their own store
            @ctList = ContactTracingForm.joins(:user).where("contact_tracing_forms.user_id = ?", Current.user.id)
        end
        
    end

end
