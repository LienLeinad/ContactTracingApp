class FlagController < ApplicationController
    def index
        @q = ContactTracingForm.ransack(params[:q])
        @ctList = @q.result(distinct: true)
        @userList = User.all
        @allCTForms = ContactTracingForm.all
    end
    # def search
    #     index
    #     render :index
    # end
    # @fgCustctList = ContactTracingForm.where("id = ? AND created_at > ?", flaggedCustomerid, 5.days.ago)
end