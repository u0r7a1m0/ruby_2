y, m, d = gets.split.map(&:to_i)
a, b = gets.split.map(&:to_i)

y_num = y
while y_num % 4 != 1 do
    y_num += 1
end
year = y_num - y

x = 0
if m > a
    month = (13 - m) + a
    year = year - 1
    month.times do
        if m == 13 || m.even?
            x = x + 13
        else # m.odd?
            x = x + 15
        end
    end
    x = x + 0
else
    month = a.to_i - m.to_i
    month.times do
        if m == 13 || m.even?
            x = x + 13
        else # m.odd?
            x = x + 15
        end
    end
    x = x + 2
end

z = 0
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
# puts "#{year}年後、#{x + z}日後。"
puts (year * 181) + (x + z)

