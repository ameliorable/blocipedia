class DowngradeController < ApplicationController
  def new
  end

  def create
    current_user.update_attribute(:role, 'standard')

    flash[:notice] = "Aw, you have successfully downgraded your account! Please, check us out again."

    redirect_to root_path
  end
end
