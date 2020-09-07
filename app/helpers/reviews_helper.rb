module ReviewsHelper
  def edit_review
    if user_signed_in?
      render 'reviews/edit' if @review.user_id == current_user.id
    end
  end
end
