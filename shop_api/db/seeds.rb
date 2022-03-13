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

  ShopUser.create(
    user_id: 1,
    shop_id: 1,
  )

  ShopBrand.create(
    user_id: 1,
    brand_id: 1,
  )

  BrandUser.create(
    user_id: 1,
    brand_id: 1,
  )

  puts "#{number}番目のダミーデータを作成しました"
end