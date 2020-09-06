module ReviewsHelper
  def edit_review
      render 'reviews/edit' if @review.user_id == current_user.id
  end
end
