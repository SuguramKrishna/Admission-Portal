class BasicDetailsController < ApplicationController
  def basic
    # @basic_details = BasicDetail.all

    if  current_user != nil
      redirect_to "/educational_details/education"
    else
      render "basic_details/basic"
    end
  end

  # def new
      
  # end

  def create 
    @basic_detail=BasicDetail.new(basic_params)
    if @basic_detail.save
      session[:current_user_id] = @basic_detail.id
      redirect_to "/educational_details/education"
    else
      flash[:error] = @basic_detail.errors.full_messages.join(",")
      redirect_to "/basic_details/basic"
    end
  end

  private

  def basic_params
    params.require(:basic_detail).permit(:student_name,:dob,:gender,:address,:primary_number,:alternate_number,:email_id,:parent_name,:parent_relation,:declaration,:basic_details_id)
  end


end



