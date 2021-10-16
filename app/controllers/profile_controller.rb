class ProfileController < ApplicationController
  before_action :set_profile, only: %i[ edit update ]

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(set_params)
        format.html { redirect_to root_path, notice: "Profile was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_params
    params.permit(:first_name, :last_name)
  end

  def set_profile
    @profile = current_user
  end
end
