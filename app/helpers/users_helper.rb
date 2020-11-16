module UsersHelper
  def check_image(user)
    if @user.image_url.nil?
      image_tag('user.jpg', alt: user.name, class: 'avatar')
    else
      cl_image_tag(@user.image.url, alt: user.name, class: 'avatar')
    end
  end
end
