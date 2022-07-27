class BasicDetailsController < ApplicationController
  def basic_detail
    # @basic_details = BasicDetail.all
  end

  # def new
      
  # end

  def create 
    @basic_detail=BasicDetail.new(basic_params)
    if @basic_detail.save
      # @basic_details=BasicDetail.all
      render plain: "Success"
    else
      flash[:error] = @basic_detail.errors.full_messages.join(",")
    end
  end

  private

  def basic_params
      params.require(:basic_detail).permit(:student_name,:dob,:gender,:address,:primary_number,:alternate_number,:email_id,:parent_name,:parent_relation,:declaration)
  end


end



