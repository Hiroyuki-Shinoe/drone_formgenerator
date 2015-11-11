class FormatsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @format = Format.new
  end

  def show
    @user = User.find(params[:user_id])
    @format = Format.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @format = @user.formats.build(format_params)
    @format.type_id = params[:type_id]

    if @format.save
      flash[:success] = "申請書類の出力に成功しました"
      redirect_to user_format_path(params[user_id: current_user.id, id: @format.id])
    else
      render action :new
    end
  end

  private
    def format_params
      params.require(:format).permit(:type1_year, :type1_month, :type1_date, :to_whom, :type1_name, :address, :purpose_01, :purpose_02, :purpose_03, :purpose_04, :purpose_05, :purpose_06, :purpose_07, :purpose_08, :purpose_09, :purpose_10, :purpose_11, :purpose_12, :date_time, :route, :altitude, :characteristic_of_drone, :which_of_exclusion_zone_1, :which_of_exclusion_zone_2, :which_of_exclusion_zone_3, :reason_for_exclusion_zone, :which_of_prohibited_manner_1, :which_of_prohibited_manner_2, :which_of_prohibited_manner_3, :which_of_prohibited_manner_4, :which_of_prohibited_manner_5, :which_of_prohibited_manner_6, :reason_for_prohibited_manner, :function_performance_of_drone, :experience_skill_of_pilot, :measure_for_safety, :others, :maker_of_drone, :model_of_drone, :serial_number, :maximum_takeoff_weight )
    end
end
