# # 自分の得意な言語で
# # Let's チャレンジ！！
# # N：参加者人数
N = gets.to_i
win = []
lose = []

all = []
N.times do
    vs = gets.split
    win << vs[0]
    lose << vs[1]
    all << vs
end

puts 

p "勝ち組"
p win

p "負け組"
p lose

# p "全件"
# p all[0..N-1]


