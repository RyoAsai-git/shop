class Post < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :image

  def image_url
    # 紐づいている画像のURLを取得する
    image.attached? ? url_for(image) : nil
  end
end
