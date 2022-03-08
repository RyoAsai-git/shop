3.times do |number|
  Shop.create(
    name: "#{number}番目のお店",
    image: "https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg",
    description: "#{number}番目の店舗説明",
    shop_url: "https://auralee.jp/",
    # puts "#{number}番目のお店を作成しました"
  )
  puts "#{number}番目のメッセージを作成しました"
end