AVATAR_COUNT = 4

# 追加したレコードに画像を追加
User.all.each do |user|
  unless user.avatar.attached?
    user.avatar.attach(io: File.open("db/fixtures/images/user/#{Random.rand(1..4)}.jpg"), filename: "#{Random.rand(1..4)}.jpg")
  end
