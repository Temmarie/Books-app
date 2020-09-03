# rubocop:disable Metrics/PerceivedComplexity
module BooksHelper
  # rubocop:disable Metrics/CyclomaticComplexity

  def star_reviews(average_review)
    content_tag(:div, class: 'starred-div') do
      5.times do |i|
        if average_review && average_review > i && average_review < i + 1
          concat(content_tag(:i, '', class: 'fa fa-star-half-o starred'))
        elsif average_review.nil? || average_review > i + 1
          concat(content_tag(:i, '', class: 'fa fa-star-o'))
        else
          concat(content_tag(:i, '', class: "fa fa-star #{@average_review == i + 1 ? 'starred' : ''}"))
        end
      end
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
# rubocop:enable Metrics/PerceivedComplexity
