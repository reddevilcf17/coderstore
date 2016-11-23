class Product < ActiveRecord::Base
  # file: app/models/product.rb
    mount_uploader :image, ImageUploader

    def image_path_or_image
      image_path.presence || image
    end
end
