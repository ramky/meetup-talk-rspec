class AdminsController < AuthenticatedController
  before_filter :ensure_admin

  def ensure_admin
    unless current_user.admin?
      flash[:error] = 'You do not have access to that area.'
      redirect_to root_path
    end
  end
end
