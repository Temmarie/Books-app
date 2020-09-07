module ReviewsHelper
  def edit_review
    if user_signed_in?
       if @review.user_id == current_user.id
        link_to("Edit", edit_book_review_path(review.book, review, class: "btn btn-custom"))
      end
   end
  end
end
