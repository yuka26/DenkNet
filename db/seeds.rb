# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

folklore = Folklore.create(
  user_id: '12345',
  tel_number: '08540000000',
  email: 'aaaaa@gmail.com',
  password: 'aaasswwe',
  gender: true,
  screen_name: '1111111',
  user_name: '田中権左衛門',
  furigana: '01たなかごんざえもん',
  icon: 'icon.jpg',
  birthday: '2999-10-25',
  identity: false,
  bio: 'よろぴこ'
)

successor = Successor.create(
    user_id: '6789',
    tel_number: '09674583217',
    email: 'mealis@gmail.com',
    password: 'rthwjs',
    gender: true,
    screen_name: 'あいあい',
    user_name: '門脇夢太郎',
    furigana: 'かどわきゆめたろう',
    icon: 'icon.jpg',
    birthday: '5000-12-24',
    identity: true,
    bio: 'なんでもしりたい'
)

large_category = LargeCategory.create(
    name: '安来節'
)

small_category = SmallCategory.create!(
    large_category: large_category,
    name: '歌'
)

FolkloreSmallCategory.create(
  folklore: folklore,
  small_category: small_category
)

SuccessorSmallCategory.create(
  successor: successor,
  small_category: small_category
)

Matching.create(
  folklore: folklore,
  successor: successor,
  message: '申請よろぴこ',
  is_approve: false,
  candidate_datetime: '2222-22-22 10:00,3333-33-33 11:00',
  phone_call_datetime: nil
)