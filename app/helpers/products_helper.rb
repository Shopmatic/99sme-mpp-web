module ProductsHelper

  def product_image(product, image, order_no, order, active)
   
    html = <<-PRODUCT_IMAGES
        <div class="#{active} item carousel-item" data-slide-number="#{order_no}">
                  <div id='#{order}-#{product.id}'>
                    <img  class="img-fluid" alt="" src="#{!(image.blank?)  ? image : 'http://placehold.it/600x600'}">
                  </div>
         </div>
    PRODUCT_IMAGES
    html
  end

end
