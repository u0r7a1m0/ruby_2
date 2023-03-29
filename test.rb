# y, m, d = gets.split.map(&:to_i)
# a, b = gets.split.map(&:to_i)

# y_num = y
# while y_num % 4 != 1 do
#     y_num += 1
# end
# year = y_num - y

# #その他の月の合計日数
# x = 0
# if m > a
#     month = (13 - m) + a
#     year = year - 1
    
#     if m.even?
#         total_month = (year * 13) + month
#         puts total_month * 14 
#         puts "①"
#     else
#         total_month = (year * 13) + month
#         puts total_month * 14 
#         puts "②"
#     end
    
# else
#     month = a.to_i - m.to_i
#     if m.even?
#         total_month = (year * 13) + month
#         puts total_month * 14 
#         puts "③"
#     else
#         total_month = (year * 13) + month
#         puts total_month * 14 
#         puts "④"
        
#     end    
    
# end


# z = 0
# if m.even? #現在偶数月？
#     if a.even?
#         z = z + (15 - d) - (15 - b)
#     else
#         z = z + (15 - d) - (13 - b)

#     end
# else
#     if a.even?
#         z = z + (13 - d) - (15 - b)
#     else
#         z = z + (13 - d) - (13 - b)
#     end
# end
# # puts "#{year}年後、#{x + z}日後。"
# # puts (year * 181) + (x + z)

# 今が8月なら
m = 8

#全体の月数を year * 13 とする。


day = 0


    if m != 13 && m % 2 != 0
        day += 15
    else
        day += 13
    end



y, m, d = gets.split.map(&:to_i)
a, b = gets.split.map(&:to_i)

y_num = y
while y_num % 4 != 1 do
    y_num += 1
end
year = y_num - y

#その他の月の合計日数
x = 0
z = 0
if m.to_i > a.to_i #年を超える
    year = year - 1
    years = year * 13
    month = (13 - m) + a + years
    puts month
    month.times do
        if m != 13 && m % 2 != 0
            z += 15
        else
            z += 13
        end
    end
    if m.even? #現在偶数月？
        if a.even?
            z = z + (15 - d) - (15 - b)
        else
            z = z + (15 - d) - (13 - b)
    
        end
    else
        if a.even?
            z = z + (13 - d) - (15 - b)
        else
            z = z + (13 - d) - (13 - b)
        end
    end
    puts "(1)：OK"

else
    years = year * 13
    month = a.to_i - m.to_i + years
    puts month
    month.times do
        if m != 13 && m % 2 != 0
            z += 15
            # puts z
        else
            z += 13
            # puts z
        end
    end
    if m.even? #現在偶数月？
        if a.even?
            z = z + (15 - d) - (15 - b)
        else
            z = z + (15 - d) - (13 - b)
    
        end
    else
        if a.even?
            z = z + (13 - d) - (15 - b)
        else
            z = z + (13 - d) - (13 - b)
        end
    end
    puts "(2)：まだ" 
end
puts z
puts "#{year}年後（#{years}ヶ月分)、#{month}ヶ月後！"




