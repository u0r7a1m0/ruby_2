n = gets.to_i # 人数
first_ball = []
n.times do
    s = gets.to_i
    first_ball << s # みんなの最初に持ってるボール数
end
p first_ball, "--------"
m = gets.to_i # パス情報
pass_info = []
x = 0

m.times do
    i = gets.split.map(&:to_i)
    pass_info << i
    p i
    p first_ball[i[x] - 1] # 各持ってる最初の個数
    
end
