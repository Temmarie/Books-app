module UsersHelper
  def check_image(user)
    if @user.image.nil?
      image_tag('default.png', alt: user.name, class: 'avatar')
    else
      image_tag(@user.image, alt: user.name, class: 'avatar')
    end
  end
end
