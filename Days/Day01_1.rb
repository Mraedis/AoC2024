unolists = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input01.txt"))
ulist1, ulist2 = [], []
for line in unolists.split(/\n/)
    t1, t2 = line.split(' ')
    ulist1.push(t1.to_i)
    ulist2.push(t2.to_i)
end
ulist1 = ulist1.sort()
ulist2 = ulist2.sort()
sumall = 0
ulist1.each_with_index {|num, i| sumall += (num - ulist2[i]).abs()}
puts sumall
