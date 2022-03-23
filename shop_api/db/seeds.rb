10.times do |number|
  User.create(
    name: Faker::JapaneseMedia::OnePiece.unique.character,
    email: Faker::Internet.email,
    password: 'aaaaaaaa',
  )

  Shop.create(
    name: Faker::JapaneseMedia::OnePiece.sea,
    image: "https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no",
    description: Faker::JapaneseMedia::OnePiece.quote,
    shop_url: Faker::Internet.url,
  )

  Brand.create(
    name: Faker::JapaneseMedia::OnePiece.island,
    image: "https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg",
    description: Faker::JapaneseMedia::OnePiece.quote,
    brand_url: Faker::Internet.url,
  )

  ShopUser.create(
    user_id: number,
    shop_id: number,
  )

  ShopBrand.create(
    shop_id: number,
    brand_id: number,
  )

  BrandUser.create(
    user_id: number,
    brand_id: number,
  )

  puts "#{number}番目のダミーデータを作成しました"
end