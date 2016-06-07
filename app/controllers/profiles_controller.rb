class ProfilesController < ApplicationController
  def new
    @user = current_user
    @profile = @user.profiles.new
  end

  def create
    @user = current_user
    @profile = @user.profiles.build(profile_params)
    if @profile.save
      flash[:notivce] = "Success"
      redirect_to user_path(@user)
    else
      flash.now[:notice] = "Something went wrong :("
      render :new
    end
  end

  def update
    @user = current_user
    @profile = @user.profile
    if @profile.user_id = @user.id
      @profile.update(profile_params)
      flash[:notice] = "Successfully Updated"
      redirect_to user_path(@user)
    else
      flash.now[:notice] = "Something went wrong :("
      redirect_to :back
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:bio, :user_id)
  end
end
