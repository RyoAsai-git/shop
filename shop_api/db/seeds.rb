3.times do |number|
  Shop.create(
    name: "#{number}番目のお店",
    description: "#{number}番目の店舗説明",
    shop_url: "http://test#{number}/shop",
    # puts "#{number}番目のお店を作成しました"
  )
  puts "#{number}番目のメッセージを作成しました"
end