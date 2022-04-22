# 10.times do |number|
#   User.create(
#     name: Faker::JapaneseMedia::OnePiece.unique.character,
#     email: Faker::Internet.email,
#     password: 'aaaaaaaa',
#   )

#   Shop.create(
#     name: Faker::JapaneseMedia::OnePiece.sea,
#     image: "https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no",
#     description: Faker::JapaneseMedia::OnePiece.quote,
#     shop_url: Faker::Internet.url,
#     latitude: 35.66166163404057,
#     longitude: 139.71664574234688,
#   )

#   Brand.create(
#     name: Faker::JapaneseMedia::OnePiece.island,
#     image: "https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg",
#     description: Faker::JapaneseMedia::OnePiece.quote,
#     brand_url: Faker::Internet.url,
#   )

#   ShopUser.create(
#     user_id: number,
#     shop_id: number,
#   )

#   ShopBrand.create(
#     shop_id: number,
#     brand_id: number,
#   )

#   BrandUser.create(
#     user_id: number,
#     brand_id: number,
#   )

#   puts "#{number}番目のダミーデータを作成しました"
# end

User.create(
  name: "test",
  email: "test@test.com",
  password: "aaaaaaaa",
)

brands = [
  {
    "name" => "AURALEE",
    "image" => "https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg",
    "description" => "オーラリー(AURALEE)は日本のファッションブランド。メンズ、ウィメンズともに展開している。コンセプトは、世界中から厳選した原料と日本屈指の生産背景で本当に良いと思える素材を追求。さら、その素材の個性を活かし、時代の気分を反映しながら、上質で洗練された洋服を作ること。",
    "brand_url" => "https://auralee.jp/",
  },
  {
    "name" => "COMOLI",
    "image" => "https://cdn.mastered.jp/wp-content/uploads/2020/03/16152109/comoli.jpg",
    "description" => "コモリ(COMOLI)は日本のファッションブランド。2011年に小森啓二郎(Keijiro Komori)が自身のブランドをスタートする。全ての洋服の原型は欧米から生まれ、ある目的の為に作られた物である。”という考えの基、“今の”日本の気候に合う、日本人の体型に合った、上質でシンプルな日常着を展開。",
    "brand_url" => "https://www.comoli.jp",
  },
  {
    "name" => "Graphpaper",
    "image" => "https://static.staff-start.com/articles/46/21872/046218720001592559270.jpg",
    "description" => "クリエイティブディレクター南貴之が手がける 「Graphpaper」。常に時代のスタンダードであり続ける大人のための上質なワードローブ。人と衣服の間に“余白”を作り、ノイズにならない寄り添う衣服。衣服における新しいデザインは20世紀までに出尽くしたと言っていいでしょう。偉大な先人たちが構築してきた機能や概念には敬意を表しつつ、現代の都市生活に必要な機能とデザインを残し、出来うる限りのサイズ概念をなくすことであらゆる体型に合うよう設計しています。",
    "brand_url" => "https://graphpaper-tokyo.com",
  },
  {
    "name" => "sacai",
    "image" => "https://pbs.twimg.com/media/BriOSYyCIAIeuyk.png",
    "description" => "sacai(サカイ)は、日本を代表するファッションブランド。メンズ・ウィメンズともに展開。ブランドコンセプトは「日常の上に成り立つデザイン」。スタンダードなものを大切にしながら、エレガントな要素を加え、またクラシックなアイテムにひねりを加えることで、sacaiの考えるエレガントな「ニュースタンダード」を表現。",
    "brand_url" => "https://www.sacai.jp/",
  },
  {
    "name" => "kolor",
    "image" => "data:image/png;base64,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",
    "description" => "カラー（kolor）は、デザイナー阿部潤一が、2005年に立ち上げた日本のファッションブランド。 スタンダードアイテムをベースに、色柄や素材、パターン、ディテールを独特のバランス感覚で組み合わせていくデザインが特徴。 メンズからスタートし、現在はレディスも手掛ける。",
    "brand_url" => "https://kolor.jp/",
  },
  {
    "name" => "Maison Margiela",
    "image" => "https://jackinthenet.jp/wp-content/uploads/2020/03/1-107.jpg",
    "description" => "“メゾン・マルタン・マルジェラ”（Maison Martin Margiela）は、ベルギー出身の同名のファッションデザイナー（1957年生）の制作による、1988年設立のフランス・パリ発のファッションブランド。 婦人・紳士向けの既製服をはじめ、各種アクセサリーや香水などを展開している。",
    "brand_url" => "https://www.maisonmargiela.com",
  },
  {
    "name" => "cantate",
    "image" => "https://fs.scene7.com/is/image/flagshop/brand_23979?wid=600&hei=315",
    "description" => "日本が誇る職人の手仕事と“至高”の素材を駆使し、失われつつある希有な技術を継承・アーカイブしていくハイファッションブランド「 cantate（カンタータ）」",
    "brand_url" => "https://www.cantate.jp/",
  },
  {
    "name" => "OUR LEGACY",
    "image" => "https://gigaplus.makeshop.jp/odaikanyama/mailmag/our%20legacy%28web%E7%94%A8%29.jpg",
    "description" => "アワーレガシー(OUR LEGACY)は、2005年に北欧・スウェーデンにて創設されたファッションブランド。“LEGACY = 遺産”の名の通りイタリアやポルトガル、日本など、土地土地の伝統的なファブリックを集め、タイムレスでオーセンティックなコレクションを提案している。",
    "brand_url" => "https://www.ourlegacy.se",
  },
  {
    "name" => "A.P.C.",
    "image" => "https://i.pinimg.com/736x/68/ae/c7/68aec7fd06ada249a53721627b5894ea.jpg",
    "description" => "1986年、メンズのブランドとし「A.P.C.(アーペーセー)」をパリで発表。A.P.C.のブランド名は「生産と創造の工房(Atelier de Production et de Creation)」の略で、デザイナーの名前を服のデザインに結び付けたくない、ということが意図されている。フレンチベーシックで、機能的なファッションがベースでありながら、ストリートを意識した、どこか反骨精神のある仕上がりが特徴。天然繊維をよく使用する。ブランドの名前にあるように、それはある種、脱個性的で、着る人を選ばないが、それが逆に着る人の個性を最大限引き出す。",
    "brand_url" => "https://www.apc.fr/",
  },
  {
    "name" => "Hender Scheme",
    "image" => "https://www.imn.jp/images/brand/681.jpg",
    "description" => "エンダースキーマ(Hender Scheme)は日本のシューズブランド。プレミアムなレザーを使ったシューズのほか、バック、名刺入れなど革小物なども展開している。",
    "brand_url" => "http://henderscheme.com/",
  },
  {
    "name" => "STUDIO NICHOLSON",
    "image" => "https://www.imn.jp/images/upload/2020/12/180b45b30b42a735128bdc481a7cd1c6.jpg",
    "description" => "スタジオ ニコルソン(STUDIO NICHOLSON)はイギリスのファッションブランド。2010年、2011年春夏コレクションでデビューする。デザイナーはニック・ウェイクマン(Nick Wakeman)。スタジオ ニコルソンのコレクションはクリーンでミニマル。",
    "brand_url" => "https://www.studionicholson.com/",
  },
  {
    "name" => "CIOTA",
    "image" => "https://osozakifashion.com/wp-content/uploads/2019/10/og-2-e1571881875126.png",
    "description" => "CIOTAは、岡山に本拠を構える縫製工場・生地製造販売会社、株式会社シオタが立ち上げたアパレルブランドです。私たちCIOTAの特徴は、原料の選別から、生地のデザイン、生地織り、洋服のデザイン、縫製仕様の考案、縫製まで、洋服作りにおけるすべての工程を自社で行えること。そして、すべての工程に徹底的にこだわること。",
    "brand_url" => "http://www.ciota.jp",
  },
  {
    "name" => "blurhms",
    "image" => "https://image.salesnauts.com/mark/img/kfZWWvtWzt8M.jpg",
    "description" => "ブラームス(blurhms)は、日本のファッションブランド。 メンズ、ウィメンズともに展開。 着心地、丁寧さ、程よいリラックス感と使いやすさがコンセプト。 ブラームスというブランド名は“blur”と“hmm…”を組み合わせた造語。",
    "brand_url" => "",
  },
  {
    "name" => "polyploid",
    "image" => "https://makes.itembox.design/item/design/img05/polyploid-PC.jpg",
    "description" => "化学用語で”多倍数体”を意味するPOLYPLOIDは”事実はない あるのは解釈だ”をコンセプトにドイツ・ベルリンにて設立。プロダクトに奥行きや広がりをもたらす実験的アプローチを試みているユニセックスブランド。",
    "brand_url" => "https://poly-ploid.com",
  },
  {
    "name" => "SHINYA KOZUKA",
    "image" => "https://idiome.co.jp/brand-logo/brand-2296340.png",
    "description" => "シンヤコヅカ(SHINYAKOZUKA)は、2015年よりスタートした小塚信哉によるメンズウェアブランド。ブランドコンセプトは、Blur、Vague、Unclear、Hidden。「曖昧」と「ぼかす」の2つをキーワードに、ワークウェアやユニフォームが持つ機能性・匿名性をベースとしている。",
    "brand_url" => "https://shinyakozuka.com",
  },
  {
    "name" => "DAIRIKU",
    "image" => "https://www.freaksstore.com/client_info/FREAKSSTORE/itemimage/dairiku_logo.jpg",
    "description" => "デザイナーの岡本大陸氏が自身の名を冠したブランド、DAIRIKU(ダイリク)。バンタンデザイン研究所で鬼才として名を轟かせていた大陸氏が在学中に始動させ、2016年10 月には Asia fashion collectionでグランプリを獲得。その後2017年2月にNYファッションウィークにて、ランウェイ形式でコレクションを発表し、2018SSから展示会形式で本格始動が始まった新進気鋭のブランドです。",
    "brand_url" => "",
  },
  {
    "name" => "mfpen",
    "image" => "https://etcseoul.com/web/upload/category/mobile/shop1_1249_top_234042.png",
    "description" => "エムエフペン(mfpen)は、デンマーク・コペンハーゲン発のメンズウェアレーベル。デザイナー・Sigurd Bankが2015年にスタートした。カッティングにこだわりを持っており、シンプルで上質なデイリーユースアイテムを展開。プロダクトはヨーロッパ内にて生産を行っている。",
    "brand_url" => "https://mfpen.com",
  },
  {
    "name" => "OUTIL",
    "image" => "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATYAAACjCAMAAAA3vsLfAAAAb1BMVEX///8AAAD8/Pz5+fn19fXT09O6uro5OTnk5OS+vr6KiorZ2dkPDw9gYGA8PDx4eHixsbHs7Oze3t6goKDMzMxCQkI0NDSdnZ21tbUmJiaRkZHFxcVHR0dXV1eqqqqDg4NRUVEoKChqamoYGBguLi7WJ3ztAAACVElEQVR4nO3YW3eiMBSG4ewELXioIigVD4y1//83zk4I6DjtjHd0lfdpl4TARda3EnIwBgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB+NBv//I8Kl9sTX9e/6Jx1/trdj5q9JWNcyK2vN22cd6/2tz7AMXMhh/JcrPOYS56lvkqL80wrNtNsmrVKY8uDPkoO80Hb/B04Z2oJtmkI7k2atpe5nWg8csffac6lnMY+RjWfXyKz9bnai2x855vKzITB6l5krikWRVHtF7VeziE2YyayHLrRQ3NmJpeNL9l3+fCjNMamFS8SB6N9XeRtScQSm/GfMtFwrE4G1olMTYwtPOpjS14XaVsitmgtS5+Zpqb9bmXa2AJi+4eVFDpSw6g8yN5YYnvKUd66FW7q50pie8pOyi42S2xPe5Wsi01nhzhImRL+5yTnLrZSLsb3tuZxAUJsf6lDSmEmrfxMajP/G3anV0nbPD+JzT7sV8cmk0Wi6zan/xc/XrXPHXWvoCkm/lMXkvm0t404M79L2Etl/RLEFDpGNS33oXOrD6XRbvdlbxs5PwXI+8S4+Up0TtWOp3t5qXKTz0Tyr2I7beYqHbDdQ7PmHM83rof2I9ediFwn3VyR7OTP2PoTkbHyozMvTtvtcu3aI0v9sG2q5XG1vh1fmrpJ2kLT6CtJvQrqgdr8HdiHO9cfhNv7d/qquwNgM94jXhsWGzYuQWIw7c3t4NvGYlsdj8t9cahWAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADw0/wGlooScPkI938AAAAASUVORK5CYII=",
    "description" => "ウティ(OUTIL)は、日本のユニセックスブランド。ブランド名の”OUTIL”にはフランス語で道具・ツールといった意味があり、人と人とを繋ぐため、生きるための洋服を作っている。生産はフランスと日本が中心。デザインは古くからのフランスのワークウェアからインスパイアされている。",
    "brand_url" => "https://outil-vetements.com/",
  },
  {
    "name" => "TAUPE",
    "image" => "https://static.wixstatic.com/media/af7b6a_3049b497a7964d8cba3e7b5a425f9467~mv2.jpg/v1/crop/x_0,y_0,w_2239,h_656/fill/w_638,h_208,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/22ss_top%E3%83%90%E3%83%8A%E3%83%BC.jpg",
    "description" => "“大人に向けた、個性を発揮する為の日常着” 大人＝保守的という固定観念に捉われずに、自由な発想で個の主張やスタイルを持ち続ける為のリアルクローズ。ジャストスタンダードではなく、日常に溶け込む趣向品を目指しています。",
    "brand_url" => "https://www.taupe-japan.com/",
  },
  {
    "name" => "MASU",
    "image" => "https://www.freaksstore.com/client_info/FREAKSSTORE/itemimage/MASU.jpg",
    "description" => "MASUは2017年春夏シーズンに設立されたメンズファッションブランド。 設立時は「マス(masu)」というブランド名だったが、2018年秋冬コレクションよりデザイナーの後藤愼平氏を迎えリブランディング。 ブランド名も現在の「エムエーエスユー(MASU)」へ改名",
    "brand_url" => "",
  },
  {
    "name" => "TTT MSW",
    "image" => "https://baseec-img-mng.akamaized.net/images/user/logo/539ec884a7e86be094f6f0c8dd3a4e7d.jpg?imformat=generic&q=90&im=Resize,width=2048,type=downsize",
    "description" => "ティー(TTT_MSW)は東京発のストリートブランド。 サブネームである「MSW」はモダンストリートウエアの略。 ブランド名の通り、モダンなデザインでありながら、ストリートなどライフスタイルの一部となりうる高品質なウェアを提案。 「ジャンルレス、ジェンダレス、ボーダレス」をコンセプトに掲げている。",
    "brand_url" => "https://www.tttmsw.jp",
  },
# {
#   "name" => "",
#   "image" => "",
#   "description" => "",
#   "brand_url" => "",
# },
]

brands.each do |brand|
  Brand.create(
    name: brand["name"],
    image: brand["image"],
    description: brand["description"],
    brand_url: brand["shop_url"],
  )
end

shops = [
  {
    "name" => "AURALEE",
    "image" => "https://lh5.googleusercontent.com/p/AF1QipMccV9puxC1HRW6434gib2j3boiTTMHb_0jBEPM=w1080-k-no",
    "description" => "オーラリー(AURALEE)は日本のファッションブランド。メンズ、ウィメンズともに展開している。コンセプトは、世界中から厳選した原料と日本屈指の生産背景で本当に良いと思える素材を追求。さら、その素材の個性を活かし、時代の気分を反映しながら、上質で洗練された洋服を作ること。",
    "shop_url" => "https://auralee.jp/",
    "latitude" => 35.66166163404057,
    "longitude" => 139.71664574234688,
  },
  {
    "name" => "COMOLI",
    "image" => "https://itl-corp.jp/wp-content/uploads/2020/06/comolo_01.jpg",
    "description" => "コモリ(COMOLI)は日本のファッションブランド。2011年に小森啓二郎(Keijiro Komori)が自身のブランドをスタートする。全ての洋服の原型は欧米から生まれ、ある目的の為に作られた物である。”という考えの基、“今の”日本の気候に合う、日本人の体型に合った、上質でシンプルな日常着を展開。",
    "shop_url" => "https://www.comoli.jp",
    "latitude" => 35.662705698478185,
    "longitude" => 139.71644289728934,
  },
  {
    "name" => "Graphpaper",
    "image" => "https://d2j6doapa7j1ze.cloudfront.net/upload_picture/S1536643510941_1.JPG",
    "description" => "ギャラリーとしての機能を持つキュレーション型セレクトショップ インディペンデント・キュレーターとして、国際現代美術展の変容を先取りしたハラルド・ゼーマンの”レギュレーションに縛られない姿勢”をヒントに、時代や部類を超え、全てを作品として捉え、ギャラリーで展示するように並べることを目的としています。全てを並列化するためのシンメトリーな空間には、壁面に黒いキャンバスを黄金比で配置し、そのキャンバスを手前に引くことにより、作品が存在する仕組みとなっています。キャンバスに作品をおさめたのは、空間自体を作品とし、余計な視覚的要素を排除することが目的です。",
    "shop_url" => "https://graphpaper-tokyo.com",
    "latitude" => 35.66445791193939,
    "longitude" => 139.70594432427936,
  },
  {
    "name" => "1LDK",
    "image" => "https://stat.ameba.jp/user_images/20200805/15/mihara19790807/cc/13/j/o1024068314799491716.jpg",
    "description" => "東京を中心に展開するセレクトショップ。「by TASS STANDARD」や「grime effect」を打ち出してきたI.D.LAND COMPANYが新たなアプローチとして今までにないスタイルのショップ。",
    "shop_url" => "http://1ldkshop.com",
    "latitude" => 35.64596963596235,
    "longitude" => 139.70023644860663,
  },
  {
    "name" => "BLOOM & BRANCH",
    "image" => "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bloomandbranch-b-1585281217.jpg?crop=1.00xw:0.752xh;0,0.0931xh&resize=1200:*",
    "description" => "『根、幹、枝、花』花が開くまでに過程があるように、私達はルーツを掘り下げ伝統を重んじそこからの革新を求めます。『花は枯れはて葉は落ち、裸の枝になってしまった木』そんな儚い情景にさえも美を感じてしまう、日本人が本来備えもった感覚を大事にしています。",
    "shop_url" => "https://bloom-branch.jp",
    "latitude" => 35.662696334139554,
    "longitude" => 139.71126803348434,
  },
  {
    "name" => "H BEAUTY&YOUTH",
    "image" => "https://otokomaeken.com/wp-content/uploads/2016/06/shops-h-beauty-and-youth-20.jpg",
    "description" => "エイチ ビューティ＆ユース｜ストアブランド紹介 '東京大人のクールな服'をテーマに「City Man and Woman」のコンセプトのもと、ハイエンドなスポーツ・カジュアルを軸にアイテムを提案するビューティ＆ユースの新コンセプトストア。",
    "shop_url" => "https://store.united-arrows.co.jp",
    "latitude" => 35.66479805273124,
    "longitude" => 139.7146654457209,
  },
  {
    "name" => "L'ECHOPPE 青山店",
    "image" => "https://renacer-fashion.com/wp-content/uploads/2020/04/15830362-2477-450D-8de5DF-4484192CDFFB.jpg",
    "description" => "ひとつの服の発見が人々を繋ぐことを願い、まだ見ぬ新しいもの・見逃されてきた価値を追い求め、世界を渡り歩き、収集する。そして、それら価値あるものを発信する。",
    "shop_url" => "https://lechoppe.jp",
    "latitude" => 35.66476383985419,
    "longitude" => 139.71440878199942,
  },
  {
    "name" => "Dover Street Market Ginza",
    "image" => "https://numero.jp/wp-content/uploads/2017/10/DSC1249.jpg",
    "description" => "ムデギャルソン、川久保玲が仕掛けるコンセプトショップ「ドーバーストリートマーケット」（DOVER STREET MARKET）のはじまりは、2004年。ロンドンにある高級住宅街メイフェアのドーバーストリート沿いに作られたのが、その名前の由来です。 このショップのコンセプトは「Beautiful Chaos」（美しいカオス）。このコンセプトについて、川久保玲自身はこう語っています。 「一人ひとり様々な背景を持つクリエーターたちが、『美しいカオス』というコンセプトのもとに集い、新たな価値を創造していく場を作りたい。それぞれに強いヴィジョン、価値観を持つ個性豊かな魂たちが、混ざり合い影響し合う空間です」と。",
    "shop_url" => "https://shop-jp.doverstreetmarket.com",
    "latitude" => 35.67053003094324,
    "longitude" => 139.76309208937332,
  },
  {
    "name" => "ARTS&SCIENCE DAIKANYAMA",
    "image" => "https://arts-science.com/wp/wp-content/uploads/2018/11/L1006008_s.jpg",
    "description" => "東京では初の一軒家を改装した路面店。「ホーム&ベーシック」をコンセプトに、家での豊かな時間を過ごすための品々で構成したホームコレクションと、長い歳月をかけて作り続けてきたシーズンレス・ジェンダーレスの定番アイテムや、選び抜いた生活用品が並ぶ。",
    "shop_url" => "https://arts-science.com",
    "latitude" => 35.65134476712134,
    "longitude" => 139.6971014347005,
  },
  {
    "name" => "Bechics",
    "image" => "https://www.bazzstore.com/unfashion-map/wp-content/uploads/2017/01/83dc2a7aab2019723b5ffd3ac35999ac.jpg",
    "description" => "トレンドもカテゴリーも越えられる、強く自由な人のための店です。",
    "shop_url" => "https://www.bechics.com",
    "latitude" => 35.64789574785913,
    "longitude" => 139.69535372275092,
  },
  {
    "name" => "BIOTOP TOKYO",
    "image" => "https://www.biotop.jp/wp-content/themes/BIOTOP_201904/common/img/about/biotop_tokyo_2.jpg",
    "description" => "“ビオトープ” とは、「生き物の、ありのままの生態系が保たれた空間」という意味の環境用語。 これを新しいかたちのセレクトショップとして都会に実現しようと、2010年3月、東京・白金台に、ライフスタイルからファッション、ボタニカル、フードまでを提案する複合型ショップ「BIOTOP」をオープンしました。店内は、世界中から集められたトップメゾンや注目ブランドに加え、ナチュラルコスメ、生活雑貨などライフスタイルを豊かにするアイテムが並びます。",
    "shop_url" => "https://www.biotop.jp",
    "latitude" => 35.64172599639022,
    "longitude" => 139.7225967340428,
  },
  {
    "name" => "KIKUNOBU TOKYO",
    "image" => "https://cld.fashionsnap.com/image/upload/ar_4:3,c_fill,f_auto,g_auto:subject,q_auto,w_1200/asset/article/images/2015/09/IMG_5400a_hm.jpg",
    "description" => "ストリート×モードなデザインが人気のドメスティックブランド「Jieda（ジエダ）」の旗艦店であり、国内外から厳選したブランドを取り揃えることで人気のメンズショップ",
    "shop_url" => "http://kikunobu.jp/",
    "latitude" => 35.65287328172863,
    "longitude" => 139.7051917195653,
  },
  {
    "name" => "ARTS&SCIENCE AOYAMA",
    "image" => "https://arts-science.com/wp/wp-content/uploads/2017/08/L1009533s.jpg",
    "description" => "ARTS&SCIENCEのウィメンズ旗艦店。オリジナルとインポートの服やジュエリーをはじめ、国内外のブランドとのコラボレーションやエクスクルーシブ展開からなるA&S独自のアイテムが揃う。トランクショーや各種イベントも積極的に行う。",
    "shop_url" => "https://arts-science.com",
    "latitude" => 35.66329759242154,
    "longitude" => 139.71781595845644,
  },
  {
    "name" => "sacai Aoyama",
    "image" => "https://cld.fashionsnap.com/image/upload/c_limit,f_auto,q_auto,w_2000/asset/article/images/_MG_9341.JPG",
    "description" => "sacai(サカイ)は、日本を代表するファッションブランド。メンズ・ウィメンズともに展開。ブランドコンセプトは「日常の上に成り立つデザイン」。スタンダードなものを大切にしながら、エレガントな要素を加え、またクラシックなアイテムにひねりを加えることで、sacaiの考えるエレガントな「ニュースタンダード」を表現。",
    "shop_url" => "https://www.sacai.jp/",
    "latitude" => 35.66266485064138,
    "longitude" => 139.7139868564472,
  },
  {
    "name" => "kolor minami aoyama Flagship Store",
    "image" => "https://www.vogue.co.jp/fno/2013/datas/shop/0235.jpg",
    "description" => "カラー（kolor）は、デザイナー阿部潤一が、2005年に立ち上げた日本のファッションブランド。 スタンダードアイテムをベースに、色柄や素材、パターン、ディテールを独特のバランス感覚で組み合わせていくデザインが特徴。 メンズからスタートし、現在はレディスも手掛ける。",
    "shop_url" => "https://kolor.jp/",
    "latitude" => 35.66355777355259,
    "longitude" => 139.71214937040156,
  },
  {
    "name" => "Maison Margiela Tokyo",
    "image" => "https://cdn.amebaowndme.com/madrid-prd/madrid-web/images/sites/104056/2e5824028392ac3909dd96d862cffeef_ecfd5d70296b8ef0f1689bb59ad317db.jpg?width=596",
    "description" => "“メゾン・マルタン・マルジェラ”（Maison Martin Margiela）は、ベルギー出身の同名のファッションデザイナー（1957年生）の制作による、1988年設立のフランス・パリ発のファッションブランド。 婦人・紳士向けの既製服をはじめ、各種アクセサリーや香水などを展開している。",
    "shop_url" => "https://www.maisonmargiela.com",
    "latitude" => 35.643346439425486,
    "longitude" => 139.7083615819489,
  },
  {
    "name" => "A.P.C. HIBIYA",
    "image" => "https://static.fashionpost.jp/article/wp-content/uploads/2018/03/28195838/201803APCEC.jpg",
    "description" => "1986年、メンズのブランドとし「A.P.C.(アーペーセー)」をパリで発表。A.P.C.のブランド名は「生産と創造の工房(Atelier de Production et de Creation)」の略で、デザイナーの名前を服のデザインに結び付けたくない、ということが意図されている。フレンチベーシックで、機能的なファッションがベースでありながら、ストリートを意識した、どこか反骨精神のある仕上がりが特徴。天然繊維をよく使用する。ブランドの名前にあるように、それはある種、脱個性的で、着る人を選ばないが、それが逆に着る人の個性を最大限引き出す。",
    "shop_url" => "https://www.apc.fr/",
    "latitude" => 35.674162337717696,
    "longitude" => 139.75967301262978,
  },
  {
    "name" => "スキマ",
    "image" => "https://www.fashion-press.net/img/news/24860/sukimashop_001.jpg",
    "description" => "エンダースキーマ(Hender Scheme)は日本のシューズブランド。プレミアムなレザーを使ったシューズのほか、バック、名刺入れなど革小物なども展開している。",
    "shop_url" => "http://henderscheme.com/",
    "latitude" => 35.64788092831072,
    "longitude" => 139.71880041692845,
  },
# {
#   "name" => "",
#   "image" => "",
#   "description" => "",
#   "shop_url" => "",
#   "latitude" => ,
#   "longitude" => ,
# },
# {
#   "name" => "",
#   "image" => "",
#   "description" => "",
#   "shop_url" => "",
#   "latitude" => ,
#   "longitude" => ,
# },

]

shops.each do |shop|
  Shop.create(
    name: shop["name"],
    image: shop["image"],
    description: shop["description"],
    shop_url: shop["shop_url"],
    latitude: shop["latitude"],
    longitude: shop["longitude"],
  )
end
