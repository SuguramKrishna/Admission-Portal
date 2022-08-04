class EducationalDetailsController < ApplicationController
  def education
    if educational_user == true 
      redirect_to "/family_details/family"
    end
  end

  def create 
    current_user
    @educational_detail=EducationalDetail.new(educational_params)
    session[:educational] = true
    puts current_user.id
    @educational_detail.basic_details_id = current_user.id
    if @educational_detail.save
      @basic_details=BasicDetail.all
      redirect_to "/family_details/family" 
    else
      flash[:error] = @educational_detail.errors.full_messages.join(",")
      redirect_to "/educational_details/education" 
    end
  end

  private

  def educational_params
      params.require(:educational_detail).permit(:current_class,:sslc_school_name,:sslc_school_type,:sslc_completion,:sslc_maths_score,:sslc_english_score,:sslc_total_score,:sslc_school_medium,:higher_education_name,:higher_education_type,:higher_education_completion,:higher_education_maths_score,:higher_education_english_score,:higher_education_computer_score,:higher_education_total_score,:higher_education_diploma_score,:higher_education_medium)
  end

end
