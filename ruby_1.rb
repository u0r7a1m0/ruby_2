n = gets.to_i
#回数
m = n * (n - 1) / 2
array = []
m.times do
    vs = gets.split.map(&:to_i)
    array << vs
end

# p array
# 人数分の配列
people = [*1..n]
i = 0
x = 0
wl_array = []
vs_array = []

while n > i do
    array.each do |a|
        if a.include? people[i]
            if a[0] == people[i]
                vs_array << ["W", a[1]]
            elsif
                vs_array << ["L", a[0]]
            end
        else
            unless vs_array.include? ["-", people[i]]
            vs_array << ["-", people[i]]
            end
        end
    end
        # aとかbはvs_arrayでいう「"-", 1」「"L", 2」の一つ一つを表してる
        # a[1]で「"-", 1」の「1」部分を表してる
        wl_array << vs_array.sort{|a, b| a[1] <=> b[1]}
        # wl_array << vs_array
        # p vs_array[0]

        vs_array = []
    i += 1
end


last_array = []

wl_array.each do |w|
    w.each do |wow|
        # p wow[0]
        last_array << wow[0]
    end
end
o = 0
n.times do
    puts last_array.each_slice(n).to_a[o].join(" ")
    o += 1
end


