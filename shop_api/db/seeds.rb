# テスト用ログインユーザー
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
    "image" => "https://i.imgur.com/ZVcSgtB.jpg",
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
    "image" => "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAABPT0/Nzc0kJCTx8fHFxcUeHh4LCwtWVlZ1dXXIyMgSEhI/Pz9oaGhcXFwYGBgpKSm/v7+Ojo5KSkowMDA6OjqWlpbl5eX39/erq6u3t7fS0tLc3NydnZ2jo6ODg4NkZGRvb2+wsLB8fHzg4OBERESHh4c1NTXAq0+fAAAFiElEQVR4nO2b6XraOhRFcYjDPIQ5UKaQJrz/E962XKS9ZYlEtiB87V7/gu0jL8vWkY6dWk0IIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEP8Qi7pl/d0ncxW2mWWQMnDPMkkZNxo0fE0ZGOIOU8aNBg3bKQND3EbKuNEsb2D4vX2Ihm8pA9+l4bX6sJsybjSHG4w092O4Txn4Lg2T5sO7eQ5XNzD83myBhq2Ugf8pw8eUcaMZ/fWGV+vDpo37nDJuNGj4kDIwGE5Txo1mdAPDY8q40dzCcJYybjS3MOyljBvNLQzfU8aN5mqGXRv3e6sYMixN90pxo3mSYVnAMOmaJRq/Yf5E/Cget15+tHrH6ey9Px/lvsDDzwzz0bw/mU2PvdZuGVeLfona22/YyoiFc1C9zduP22KjYOipHeSbKYd4K0qOJw9nJpvTT+tlu5dlm+qGa259xIesnrMi4xjDRd8TYeI6Yin3T4hN4/THtrrhAzX9QQesnYtv6HzZcBeIsOPd6qiPf1Y3/EHt8oxkmwXhhsGwTxsWjWCEHt3sC9gyq3XsH8soQzjQGB6pWWp1HhZ0ng/wIMNF+Hh3JQkbGi/wR2XDDTVK4+ghu8jTFwwvR2gFdu3ik1vV8Cc1SbceX//Gpr5e8SML/R0w3NP+7dG6M6Zf8OwfA5ehqiGNlFwGpyTy/+hJ3QpvPvyG2Fw2OyXSnFqEi/R+HcMPOgfal0Ygkx6oD2zyB0MYS/ERNwWqHCPM7c6DgOGhkmGdYnEixxah9oJj49z3qzWka2TzHz35NrAva/6mWh9SqJ+0Kw5n2cr+jgnEinsNcS40CUSue/c+H9R+27XtHiUM6bI98a5YlsPepZvMTPDA0M5LYeFPPbGH3+0EwzFsbN3ZYwlDknCnf9ggPaB4kOlbnyEN0zhJw9vAVnXYsGw1Fw0HdLcU3ibOYCO9Lvb2ABia2SBdQIxQ925gw5KCFHuA2aBYesDm5rjhDTaYzOAzpGEXI1DnmnuRDOOGl4DhHkM23VUfdTBNBPDEzT0G6dpcLLwUTYxAj7KZRZFh3KIwYDigbnLfidGEhq4oTlZNkgNDM3fHU6bw/sEUdy//ZgANW/ygOI82XWcyxHTmMzT9GjSkS+s1LP+NARvyynBHe9J1pnEW+9BcazA07y3wLs2Csb13KZ9LBUOeW69oV9xCS3pc0ZrM4DMMjjTUrJlnoCEvwysYOgtASrE4p6QFEU4TzJnAdNr0Kz0EOJJ9ni0KVZLShjTL5OcbG6TXuniE6XYwNOtaqv/g3Aszvn0Xhw1SeqpmSOsbyuzUA9C7/mTmMwze6Pj477yGcfW1i4bOmgXqSzSYQou43rKdDoa2w/Gc4Ssbegz9M++46tNlQxKhTEvun4l7Del5s8u8PfwKH1ChYekpjZPx/8BlBShY0+rOfOZHdSt7PcAQUh+VIs9jDX49iJ2FhnGr3k8MnWIRxKZseVLMcT6O4wG4gCE95d3T8oKHbzg3NOTEVdXQqajZQcWpBO4OS16G49DrN3TW7Q/b1bhLv3QC+zp194qGfC/ha3gaTotg+gwY1rrhwzMn7b1ez5CL3njvXSh5O6XVkGHeDAdwvlLeJzFEGTuoODUgWI6Ha8JdruqEDGsvs2AIJ62joVNRqWz4wi3jKS4m/rNzPxKHIdb9vjTwauDZffmE2amKYfMMJganq2jt0vE4vhaKRO/d4XDY/UWz+PVl7nn7NC2Olv3G45ksrr72FXKGNy42JLk/eN8CX2SEw0g2G9/hfyStR5vxeDxfdkqV+H6T15fzXyE2K89LdCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCiDP/AZ3mQVmsp6NwAAAAAElFTkSuQmCC",
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
    "image" => "https://ac-static.api.everforth.com/img/post/0bac3b01-d1e2-41c2-83fe-c5ed387ce400/8bfce94457f98310b0e6a71d8fd80b0a.jpg",
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
    "image" => "https://static.wixstatic.com/media/af7b6a_3049b497a7964d8cba3e7b5a425f9467~mv2.jpg/v1/crop/x_0,y_0,w_2239,h_656/fill/w_2239,h_655,al_c,q_85,enc_auto/22ss_top%E3%83%90%E3%83%8A%E3%83%BC.jpg",
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
  {
    "name" => "LEMAIRE",
    "image" => "https://i.pinimg.com/originals/24/11/2f/24112fd2bce1e5063d1064e85288b385.jpg",
    "description" => "ルメールは「日常のために服をデザインする」という共通のファッションへの信念を持って、クリエーションを行っている。 思慮深いシルエットと最高級の素材を組み合わせたルメールの服は、都会的で洗練されたパリジェンヌ／パリジャンスタイルの文脈の、まさに中心に位置するものだ。コレクションは、ブランドのフラッグシップストアが位置する、パリのマレ地区にあるアトリエでデザインされている。",
    "brand_url" => "https://us.lemaire.fr/",
  },
  {
    "name" => "is-ness",
    "image" => "https://jackinthenet.jp/wp-content/uploads/2021/07/3542D779-F421-4AA5-A995-C66C9C8D1F3C.jpeg",
    "description" => "イズネス(is-ness)は日本のファッションブランド。2001年より本格始動。ブランド名のイズネスとは、”存在そのもの”を示しており「存在そのもの≒is-ness」。技術、アート、ミュージック、ファッション、映画、文学、デザインなどをキーワードとしている。伝統と現代的センスを融合して革新的クリエーティブワークと独創的ブランドイメージを構想するデザイングループ、五感では感じられない何かを感じとれるような「心で感じるプロダクト」を目指している。",
    "brand_url" => "http://www.is-ness.com",
  },
  {
    "name" => "INTERIM",
    "image" => "https://jackinthenet.jp/wp-content/uploads/2021/04/%E5%90%8D%E7%A7%B0%E6%9C%AA%E8%A8%AD%E5%AE%9A-1-3-1024x1024.jpg",
    "description" => "INTERIMは2019年に設立されたメンズファッションブランド。ブランド名のINTERIMは「暫定的なもの」という意味があり、“目まぐるしく変わるファッションシーンにおいて普遍的なアイテムを提案していくこと”をブランドコンセプトに掲げたものづくりを行う。",
    "brand_url" => "https://interim-tokyo.com/",
  },
  {
    "name" => "CAMIEL FORTGENS",
    "image" => "data:image/png;base64,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",
    "description" => "デザイナー カミエル・フォートヘンス自身が立ち上げたアムステルダムのファッションブランド。 アートや芸術からではなく、カミエル自身が日常で感じたもの、社会情勢、社会規範をコンセプトとし、様々な視点からのインスピレーションをファッションに落とし込んだコレクションを展開している。",
    "brand_url" => "https://camielfortgens.com",
  },
  {
    "name" => "OAMC",
    "image" => "http://voice-public.com/wp/wp-content/uploads/2016/08/blog0814_1.jpg",
    "description" => "OAMC(オーエーエムシー)は、フランス、パリを拠点とするファッションブランド。 ラグジュアリーな素材を使用し、モダンで構築的なデザインに機能性を充実させたメンズウェアを展開。",
    "brand_url" => "https://jp.oamc.com/",
  },
  {
    "name" => "CASEY CASEY",
    "image" => "https://cdn.shopify.com/s/files/1/0519/5887/4266/files/Logo_CC.png?height=628&pad_color=fff&v=1636564637&width=1200",
    "description" => "ケイシーケイシー(CASEY CASEY)は、フランス・パリのファッションブランド。長年着古し、愛着のわくような服、経年変化した服の風合いを、洗いや染めによって再現することを得意とする。「タイムレス・快適・リラックス・機能的」をテーマに、レディ・トゥ・ウェア(既製服)を、すべてパリのアトリエで製作している。手作りによる服は、手洗い、手染め、手縫い、絞りなどの工程を絶対にアトリエで施してからショップに並ぶ。",
    "brand_url" => "https://caseycasey.eu",
  },
  {
    "name" => "Cristaseya",
    "image" => "https://raku-ru.jp/images/brand_img/20210527140720_1.jpg",
    "description" => "クリスタセヤ(CristaSeya)は、イタリア人のクリスティーナ・カシーニ(Cristina Casini)と日本人の瀬谷慶子が、パリをベースに2013年にスタートしたファッションブランド。ファッションのシーズンにとらわれない、独自のスタイル「エディション」でアイテムを展開。2013年にファーストエディション「WINTER SKY」を発表。アイテムは、長くつきあうことができる、オーセンティックな魅力を持ち、着心地の良さを上質さを大切にしている。",
    "brand_url" => "https://cristaseya.co",
  },
  {
    "name" => "DIGAWEL",
    "image" => "https://rakutenfashionweektokyo.com/jp/wp-content/uploads/2018/01/digawel_ogp_620x520.jpg",
    "description" => "ディガウェル(DIGAWEL)は、日本のファッションブランド。メンズを中心としながら同じデザインでウィメンズも展開する。2006年に祐天寺にショップをオープンし、ディガウェルをスタート。西村自身が企画、デザイン、販売を行う。",
    "brand_url" => "http://www.digawel.com/",
  },
  {
    "name" => "stein",
    "image" => "https://rakutenfashionweektokyo.com/jp/wp-content/uploads/2022/01/stein_logo_620_340.jpg",
    "description" => "シュタイン(stein)は、デザイナー・浅川喜一朗が手掛ける日本のファッションブランド。「Stillness and motion , minimal and maximal , mode and tradition.」「無から有へ。そのはざまの部分を表現する。」をブランドコンセプトに、メンズおよびウィメンズのアイテムを展開している。",
    "brand_url" => "http://www.ssstein.com/",
  },
  {
    "name" => "YOKE",
    "image" => "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAADp6eljYmL19fWLi4ucnJx9fX3c3NwpKChDQ0P4+Pjz8/ODg4Pv7+/8/Px0dHQiISGioqI2NTU/Pj6mpqbNzc1dXFzT09MMCgqtra28vLx5eXmVlZXj4+Pb2tpUU1Nra2tOTU0yMTEcGxvGxsYUExO+vr4YFxfRlciKAAAC60lEQVR4nO3Ya3OiMBiGYV9ACyoH6xEVK9Z2+/9/4QJVyWl3urOOTWfu60tNCDN5SsiBwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAneon1ch7H7oY/1lGWWjmVod1oeggmD+rP/WUiU6UYS2I0yJdHac32K/vuZdonr9Ln/sI0HSqe7Tsf6FlqpTQWI8eyCXfcj4b1XGRsDeC1RJdf+VFOeX8hENXi/t3+F3Ml1FZC7Vo0lnJ5eUyHQmRk3BteE0YLKdQLgRRZcJPdvdP/ZCOv158TEa0z+VwK5cFszmbEa8IsMV7fQJ7u3c//UNz6vRf9jQkl1crRTN6MBl3CQ2nc6FnCSCTofrzIXLuwk6PR9CBlrpY/E25EdkZDvxI2b9+6+7uQjVY/uyRXVPo47RK+ifFkB94lbGbQtotLfbIYrBy9zPXVpE24FbE3Cb4ljGXWLGFym/o/pcYj7RRanFCa1WZmPWn/EnY7mUK2euVCcrvlTmsVlqkspnarJmHqqP1GeSlbGRuVVkUr1paFsJS149/QJkzGV3NzGvoWO7Hfpsv8o9OHX5PQsY3tmp2Tq3cvEjY7cGtYfSXh+8Id0bv3cDB9L63R9pVRKpk7on8Ja/ll1Y1dM81Wn2lk0uzsHBG9S7hyjcihe7U4KKV2PZy4InqXMLF3L23svVWX99v0VreniV6lMtv5lrCyjkUdR+5K32J/7kujxIroWcKD/mBu3uRk1MRy1sqXs4Ud0bOEJ9cL1yqMfmZno+X1fDhNjFHgV8KdseNWnKRW9qqrD+OzVX/Gz2b68PUqYXOw//OHtLXI6HLs39Ri7lz7hIPsQ4sYSH2Ib16iwXcqrOOrapeIzIunfdhs60Jr4um/RLUjWBmo+pco8/PWY8Xz+u8NdvWs6WO5GDo+FW+rflMQVFX/H5hWI0XlWIv8kmeuExIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4AF+A4LhGZICjK3/AAAAAElFTkSuQmCC",
    "description" => "YOKEは日本のファッションブランド。素材やパターンに拘り、スタンダードなアイテムにコンテンポラリーな要素をプラス。ユニセックスで着用できる洗練されたアイテムを提案。ブランド名のYOKEは、「 繋ぐ」「絆」「洋服の切り替え布」といった意味がありブランドのコンセプトに通じている。",
    "brand_url" => "YOKEhttps://www.yoketokyo.com",
  },
  {
    "name" => "MAATEE & SONS",
    "image" => "https://shop6-makeshop.akamaized.net/shopimages/LINKSGOHONGI/slide1.jpg?MjAyMi0wMy0xNyAxNjoyMzowMw==",
    "description" => "MAATEE &SONS 福岡市今泉のセレクトショップ – UNREAL REAL CLOTHES. tim.（ティム）を展開していた松村大基が中心となって立ち上げたブランド。",
    "brand_url" => "www.maateeandsons.com",
  },
  {
    "name" => "NICENESS",
    "image" => "data:image/png;base64,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",
    "description" => "「ナイスネス(NICENESS)」は、イイものはイイ＝Just good is goodをコンセプトに洋服をデザイン。サヴィー(salvy;)でブランド立ち上げから2017-18年秋冬コレクションまでデザインを担当していた郷裕一が、パーソナルな趣向を反映させた洋服を展開するブランドとして「ナイスネス」をスタートさせる",
    "brand_url" => "http://www.niceness.jp/",
  },
  {
    "name" => "amachi.",
    "image" => "https://www.garage69.jp/wp-content/uploads/2020/07/amachi-logo.jpg",
    "description" => "2016年に、吉本天地(Amachi Yoshimoto)が立ち上げたブランド。 長野県の山奥に拠点を置いています。 1993年、アメリカのカリフォルニア州の山奥、エルクバレー生まれ。 ミュージシャンの両親のもとで幼少期を過ごしました。",
    "brand_url" => "https://vimeo.com/amachi",
  },
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
    "image" => "https://arts-science.com/wp/wp-content/uploads/2018/11/L1006158_s.jpg",
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

shopBrands = [
  {
    # AURALEE
    "shop_id" => 1,
    "brand_id" => 1,
  },
  {
    # COMOLI
    "shop_id" => 2,
    "brand_id" => 2,
  },
  {
    # Graphpaper
    "shop_id" => 3,
    "brand_id" => 3,
  },
  {
    "shop_id" => 3,
    "brand_id" => 11,
  },
  {
    "shop_id" => 3,
    "brand_id" => 14,
  },
  {
    "shop_id" => 3,
    "brand_id" => 22,
  },
  {
    "shop_id" => 3,
    "brand_id" => 23,
  },
  {
    "shop_id" => 3,
    "brand_id" => 24,
  },
  {
    "shop_id" => 3,
    "brand_id" => 25,
  },
  {
    "shop_id" => 3,
    "brand_id" => 26,
  },
  {
    "shop_id" => 3,
    "brand_id" => 27,
  },
  {
    "shop_id" => 3,
    "brand_id" => 28,
  },
  {
    "shop_id" => 3,
    "brand_id" => 29,
  },
  {
    "shop_id" => 3,
    "brand_id" => 34,
  },
  {
    # 1LDK
    "shop_id" => 4,
    "brand_id" => 1,
  },
  {
    "shop_id" => 4,
    "brand_id" => 2,
  },
  {
    "shop_id" => 4,
    "brand_id" => 6,
  },
  {
    "shop_id" => 4,
    "brand_id" => 7,
  },
  {
    "shop_id" => 4,
    "brand_id" => 10,
  },
  {
    "shop_id" => 4,
    "brand_id" => 11,
  },
  {
    "shop_id" => 4,
    "brand_id" => 13,
  },
  {
    "shop_id" => 4,
    "brand_id" => 17,
  },
  {
    "shop_id" => 4,
    "brand_id" => 23,
  },
  {
    "shop_id" => 4,
    "brand_id" => 25,
  },
  {
    "shop_id" => 4,
    "brand_id" => 28,
  },
  {
    "shop_id" => 4,
    "brand_id" => 29,
  },
  {
    "shop_id" => 4,
    "brand_id" => 30,
  },
  {
    "shop_id" => 4,
    "brand_id" => 31,
  },
  {
    "shop_id" => 4,
    "brand_id" => 32,
  },
  {
    # BLOOM & BRANCH
    "shop_id" => 5,
    "brand_id" => 1,
  },
  {
    "shop_id" => 5,
    "brand_id" => 2,
  },
  {
    "shop_id" => 5,
    "brand_id" => 7,
  },
  {
    "shop_id" => 5,
    "brand_id" => 12,
  },
  {
    "shop_id" => 5,
    "brand_id" => 13,
  },
  {
    "shop_id" => 5,
    "brand_id" => 18,
  },
  {
    "shop_id" => 5,
    "brand_id" => 25,
  },
  {
    "shop_id" => 5,
    "brand_id" => 27,
  },
  {
    "shop_id" => 5,
    "brand_id" => 28,
  },
  {
    # H Beauty&Youth
    "shop_id" => 6,
    "brand_id" => 1,
  },
  {
    "shop_id" => 6,
    "brand_id" => 2,
  },
  {
    "shop_id" => 6,
    "brand_id" => 8,
  },
  {
    "shop_id" => 6,
    "brand_id" => 10,
  },
  {
    "shop_id" => 6,
    "brand_id" => 22,
  },
  {
    "shop_id" => 6,
    "brand_id" => 25,
  },
  {
    # L'ECHOPPE
    "shop_id" => 7,
    "brand_id" => 18,
  },
  {
    "shop_id" => 7,
    "brand_id" => 32,
  },
  {
    "shop_id" => 7,
    "brand_id" => 33,
  },
  {
    "shop_id" => 8,
    "brand_id" => 4,
  },
  {
    "shop_id" => 8,
    "brand_id" => 5,
  },
  {
    "shop_id" => 8,
    "brand_id" => 6,
  },
  {
    "shop_id" => 8,
    "brand_id" => 10,
  },
  {
    "shop_id" => 9,
    "brand_id" => 34,
  },
  {
    # BIOTOP TOKYO
    "shop_id" => 11,
    "brand_id" => 1,
  },
  {
    "shop_id" => 11,
    "brand_id" => 2,
  },
  {
    "shop_id" => 11,
    "brand_id" => 6,
  },
  {
    "shop_id" => 11,
    "brand_id" => 21,
  },
  {
    "shop_id" => 11,
    "brand_id" => 22,
  },
  {
    "shop_id" => 11,
    "brand_id" => 25,
  },
  {
    "shop_id" => 11,
    "brand_id" => 26,
  },
  {
    "shop_id" => 11,
    "brand_id" => 28,
  },
  {
    # sacai
    "shop_id" => 14,
    "brand_id" => 4,
  },
  {
    # kolor
    "shop_id" => 15,
    "brand_id" => 5,
  },
  {
    # Maison Margiela
    "shop_id" => 16,
    "brand_id" => 6,
  },
  {
    # A.P.C
    "shop_id" => 17,
    "brand_id" => 9,
  },
  {
    # スキマ
    "shop_id" => 18,
    "brand_id" => 10,
  },
# {
#   "shop_id" => ,
#   "brand_id" => ,
# },
# {
#   "shop_id" => ,
#   "brand_id" => ,
# },

]

shopBrands.each do |shopBrand|
  ShopBrand.create(
    shop_id: shopBrand["shop_id"],
    brand_id: shopBrand["brand_id"],
  )
end
