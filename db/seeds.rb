# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(
  email: 'f1@test.com',
  name: '高橋',
  is_folklore: true,
  profile: 'まじ人工たりねえ けど、引き継ぎてえ ならやっるきゃねえ DenkNet',
  profile_image: File.open("./app/assets/images/f.png"),
  password: 'password',
  password_confirmation: 'password'
)

u2 = User.create(
  email: 's1@test.com',
  name: '継承者',
  is_folklore: false,
  profile: '俺は継承者',
  profile_image: File.open("./app/assets/images/s.png"),
  password: 'password',
  password_confirmation: 'password'
)

u3 = User.create(
  email: 'f2@test.com',
  name: '広戸',
  is_folklore: true,
  profile: '選挙・心境・最強！ にしても現況 最高 忖度なくして選択して ワクワクらくらくしようぜ',
  profile_image: File.open("./app/assets/images/f.png"),
  password: 'password',
  password_confirmation: 'password'
)

u4 = User.create(
  email: 'f4@test.com',
  name: '河上',
  is_folklore: true,
  profile: 'この伝統 絶えさせぬための継承 兎にも角にも よろしくたのもうす',
  profile_image: File.open("./app/assets/images/f.png"),
  password: 'password',
  password_confirmation: 'password'
)

c1 = Category.create(name: '安来節')
c2 = Category.create(name: '石見神楽')
c3 = Category.create(name: '出雲弁')
c4 = Category.create(name: '郷土料理')

UserCategory.create(user: u1, category: c1)
UserCategory.create(user: u3, category: c2)
UserCategory.create(user: u4, category: c3)

# 唯一の継承者データ
UserCategory.create(user: u2, category: c1)

# 安来節の伝承者を大量に作る
20.times do |n|
  user = User.create!(
    email: "test#{n + 100}@test.com",
    name: "伝承プロ#{n + 1}",
    is_folklore: true,
    profile: 'よろしくお願いします。プロです。',
    profile_image: File.open("./app/assets/images/f.png"),
    password: 'password',
    password_confirmation: 'password'
  )

  UserCategory.create(user: user, category: c1)
end

# 石見神楽の伝承者を大量に作る
20.times do |n|
  user = User.create!(
    email: "test#{n + 200}@test.com",
    name: "伝承プロ#{n + 1}",
    is_folklore: true,
    profile: 'よろしくお願いします。プロです。',
    profile_image: File.open("./app/assets/images/f.png"),
    password: 'password',
    password_confirmation: 'password'
  )

  UserCategory.create(user: user, category: c2)
end

# 出雲弁の伝承者を大量に作る
20.times do |n|
  user = User.create!(
    email: "test#{n + 300}@test.com",
    name: "伝承プロ#{n + 1}",
    is_folklore: true,
    profile: 'よろしくお願いします。プロです。',
    profile_image: File.open("./app/assets/images/f.png"),
    password: 'password',
    password_confirmation: 'password'
  )

  UserCategory.create(user: user, category: c3)
end

# 郷土料理の伝承者を大量に作る
20.times do |n|
  user = User.create!(
    email: "test#{n + 400}@test.com",
    name: "伝承プロ#{n + 1}",
    is_folklore: true,
    profile: 'よろしくお願いします。プロです。',
    profile_image: File.open("./app/assets/images/f.png"),
    password: 'password',
    password_confirmation: 'password'
  )

  UserCategory.create(user: user, category: c4)
end
