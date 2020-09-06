module ApplicationHelper
  def signed_in
    if user_signed_in?
      render 'layouts/signout'
    else
      render 'layouts/login'
    end
  end
end
