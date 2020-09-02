module BooksHelper
  def star_reviews(average)
    5.times do |i|
      if average && average > i && average < i + 1
        render 'half-starred'
      elsif average.nil? || average > i+1
        render 'star-off'
      else
        render 'star'
      end
    end
  end

  def star_show(avg, i)
    avg == i + 1 ? 'starred' : ''
  end
end
