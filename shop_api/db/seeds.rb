10.times do |number|
  User.create(
    name: Faker::JapaneseMedia::OnePiece.unique.character,
    email: Faker::Internet.email,
    password: 'aaaaaaaa',
  )

  Shop.create(
    name: Faker::JapaneseMedia::OnePiece.sea,
    image: "https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg",
    description: Faker::JapaneseMedia::OnePiece.quote,
    shop_url: Faker::Internet.url,
  )

  Brand.create(
    name: Faker::JapaneseMedia::OnePiece.island,
  )

  puts "#{number}番目のダミーデータを作成しました"
end

# 記事、カテゴリのidを列挙して中間テーブルに投入
# Shop.all.ids.sort.each do |shop_id|
#   Brand.all.ids.sort.each do |brand_id|
#     Shop_brands.create(article_id: article_id, category_id: category_id)
#   end
# end