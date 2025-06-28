# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 既存のデータを削除
Aroma.destroy_all

# 10種類の精油データを作成
aromas = [
  { 
    name: "ラベンダー", 
    keyword: "リラックス・安眠・癒し", 
    message: "今日は心と体を休ませる日。ラベンダーの香りが、あなたを深いリラックスへと導きます。穏やかな気持ちで過ごせば、新たなエネルギーが湧いてくるでしょう。"
  },
  { 
    name: "ローズマリー", 
    keyword: "集中力・記憶力・自信", 
    message: "頭がスッキリ冴え渡る一日。ローズマリーの香りが、あなたの集中力を高めてくれます。難しい課題にも、自信を持って取り組めるでしょう。"
  },
  { 
    name: "ペパーミント", 
    keyword: "リフレッシュ・気分転換・元気", 
    message: "気分をリフレッシュして、新しいスタートを切りましょう。ペパーミントの爽やかな香りが、あなたに元気と活力を与えてくれます。"
  },
  { 
    name: "オレンジ・スイート", 
    keyword: "幸福感・喜び・楽観", 
    message: "太陽のような明るいエネルギーに満たされる一日。オレンジ・スイートの甘い香りが、あなたに幸福感と喜びをもたらします。"
  },
  { 
    name: "ティーツリー", 
    keyword: "浄化・清潔・守り", 
    message: "心の中のモヤモヤを浄化し、クリアな状態を取り戻しましょう。ティーツリーの清潔な香りが、あなたを不要なものから守ってくれます。"
  },
  { 
    name: "ゼラニウム", 
    keyword: "バランス・調和・安定", 
    message: "心と体のバランスを整えるのに最適な一日。ゼラニウムの優しい香りが、あなたの感情の波を穏やかにしてくれます。"
  },
  { 
    name: "フランキンセンス", 
    keyword: "瞑想・精神性・平穏", 
    message: "心を静め、自分自身と向き合う時間を作りましょう。フランキンセンスの神聖な香りが、あなたを深い瞑想状態へと誘います。"
  },
  { 
    name: "イランイラン", 
    keyword: "喜び・官能・解放", 
    message: "自分の感情を解放し、喜びを存分に味わう一日。イランイランの甘くエキゾチックな香りが、あなたの心を解き放ちます。"
  },
  { 
    name: "レモングラス", 
    keyword: "活力・前進・変化", 
    message: "目標に向かって、力強く前進できる一日。レモングラスのフレッシュな香りが、あなたの背中を押してくれます。"
  },
  { 
    name: "サンダルウッド", 
    keyword: "落ち着き・グラウンディング・内省", 
    message: "心を落ち着かせ、地に足のついた感覚を取り戻しましょう。サンダルウッドの深くウッディな香りが、あなたを安定させます。"
  }
]

# データベースに保存
aromas.each do |aroma|
  Aroma.create!(aroma)
end

puts "10種類のアロマの初期データを作成しました！"
