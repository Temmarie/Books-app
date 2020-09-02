module BooksHelper
  # def star_reviews(average)
  #   5.times do |i|
  #     if average && average > i && average < i + 1
  #       render 'half-starred'
  #     # elsif average.nil? || average > i+1
  #     #   render 'star-off'
  #     # else
  #     #   render 'star'
  #     end
  #   end
  # end

  # def star_reviews(average_review)
  #   5.times do |i|
  #     if average_review && average_review > i && average_review < i + 1
  #       '<i class="fa fa-star-half-o starred" aria-hidden="true"></i>'
  #     elsif average_review.nil? || average_review > i+1
  #       '<i class="fa fa-star-o " aria-hidden="true"></i>'
  #     else
  #       '<i class="fa fa-star <%= @average_review == i + 1 ? "starred" : " " %>" aria-hidden="true"></i>'
  #     end
  #   end
  # end

  # def star_show(avg, i)
  #   avg == i + 1 ? 'starred' : ''
  # end

  # def star_reviews(average_review)
  #   5.times do |i|
  #     if average_review && average_review > i && average_review < i + 1
  #       content_tag(:i, '', class: "fa fa-star-half-o starred")
  #     elsif average_review.nil? || average_review > i+1
  #       content_tag(:i, '', class: "fa fa-star-o")
  #     else
  #       content_tag(:i, '', class: "fa fa-star #{@average_review == i + 1 ? 'starred' : ''}")
  #     end
  #   end
  # end

  # def star_reviews(average_review)
  #   ['','','','',''].collect |i|
  #     if average_review && average_review > i && average_review < i + 1
  #       concat(content_tag(:i, '', class: "fa fa-star-half-o starred"))
  #     elsif average_review.nil? || average_review > i+1
  #       concat(content_tag(:i, '', class: "fa fa-star-o"))
  #     else
  #       concat(content_tag(:i, '', class: "fa fa-star #{@average_review == i + 1 ? 'starred' : ''}"))
  #     end
  #   end

  # def star_reviews(average_review)
  #   ['','','','',''].collect |i|
  #       concat(content_tag(:i, '', class: "fa fa-star-half-o starred"))
  #    end

  def star_reviews(average_review)
  content_tag(:div, class: 'starred-div') do
    5.times do |i|
      if average_review && average_review > i && average_review < i + 1
        concat(content_tag(:i, '', class: "fa fa-star-half-o starred"))
      elsif average_review.nil? || average_review > i+1
        concat(content_tag(:i, '', class: "fa fa-star-o"))
      else
        concat(content_tag(:i, '', class: "fa fa-star #{@average_review == i + 1 ? 'starred' : ''}"))
      end
    end
  end
end
end
