class UsersController < ApplicationController
  def show
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops], methods: [:avatar_url] )
  end

  # def update
  #   user = User.find(params[:id])
  #   if user.update(user_params)
  #   # if user.update(image: params[:image])
  #     render json: { user_id: user.id, message: '画像のアップロードに成功しました' }, status: 200
  #   else
  #     render json: { message: '画像をアップロードできませんでした', errors: user.errors.messages }, status: 400
  #   end
  # end

  def update
    user = User.find(params[:id])
    user.avatar.attach(params[:avatar])
  end

  def decode(str)
    Base64.decode64(str.split(',').last)
  end

  def encode_base64(image_file)
    image = Base64.encode64(image_file.download) # 画像ファイルをActive Storageでダウンロードし、エンコードする
    blob = ActiveStorage::Blob.find(image_file[:id]) # Blobを作成
    "data:#{blob[:content_type]};base64,#{image}" # Vue側でそのまま画像として読み込み出来るBase64文字列にして返す
  end
end