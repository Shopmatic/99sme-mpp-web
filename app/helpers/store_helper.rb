module StoreHelper
  def p_image(image)
    (image.include? "cdn.myshopmatic.com")  ? image.sub(/(.*)\b.\b/i, '\1_m.') : image
  end
end
