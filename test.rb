y, m, d = gets.split.map(&:to_i)
a,b = gets.split.map(&:to_i)
one_year_days = 183

num = y
while num % 4 != 1 do
  num += 1
  puts num
end

if m > a
    month = (13 - m) + a
    puts "残り#{month}ヶ月、#{month * one_year_days}日"
    p "----------"
else
    month = a - m
    puts "残り#{month}ヶ月、#{month * one_year_days}日"
    p "----------"
end

year = (num - y) * one_year_days

puts year


# 4で割って1余る年だけ開催。
# 1月、3月、5月、7月、9月、11月、13月：日数が15日
# 2月、4月、6月、8月、10月、12月：日数が13日