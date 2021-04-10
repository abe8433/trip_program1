puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

plan_name1 = "沖縄"
plan_price1 = 10000
plan_name2 = "北海道"
plan_price2 = 20000
plan_name3 = "九州"
plan_price3 = 15000

DISCOUNT_STANDARD_VALUE = 5
DISCOUNT_RATE = 0.1
AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE

while true
  print "プランの番号を選択 > "
  select_plan_num = gets.to_i
  break if (1..3).include?(select_plan_num)
  puts "1〜3の番号を入力して下さい。"
end

case select_plan_num
when 1
  name = plan_name1
  price = plan_price1
when 2
  name = plan_name2
  price = plan_price2
when 3
  name = plan_name3
  price = plan_price3
end

puts "#{name}旅行ですね。\n何名で予約されますか？"
while true
  print "人数を入力 > "
  number_of_people = gets.to_i
  break if number_of_people >= 1
  puts "1以上を入力して下さい。"
end

puts "#{number_of_people}名ですね"
total_price = price * number_of_people
if number_of_people >= DISCOUNT_STANDARD_VALUE
  puts "#{DISCOUNT_STANDARD_VALUE}名以上なので#{(DISCOUNT_RATE*100).floor}%割引となります"
  total_price *= AFTER_DISCOUNT_RATE 
end

puts "合計金額は#{total_price.floor}円になります。"
