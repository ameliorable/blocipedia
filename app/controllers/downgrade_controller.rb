class DowngradeController < ApplicationController
  def new
  end

  def create
    @wikis = current_user.wikis
    current_user.update_attribute(:role, 'standard')
    @wikis.unscoped.update_all(private: 'false')

    flash[:notice] = "Aw, you have successfully downgraded your account! Please, check us out again."

    redirect_to root_path
  end
end
