h={}
h={:c=>3}
h[:a]=1
h[:b]=2
h[:c]=4

p h # {:c=>4, :a=>1, :b=>2}

p h[:c] # 4
p h[:d] # nil
# p h.fetch(:d) # key not found: :d (KeyError)
p h.fetch(:d,0) # 0 provide a default value

p h.key?(:a) # true
p h.sort # [[:a, 1], [:b, 2], [:c, 4]], sort by key
p h.sort_by {|k,v|v} # [[:a, 1], [:b, 2], [:c, 4]], sort by value
p h.keys # [:c, :a, :b]
p h.values # [4, 1, 2]

h1={:aaa=>1,:bbb=>2,:ccc=>3}
h2={:ccc=>10,:ddd=>11}
# `merge` do not change original hash, `merge!` will change original hash
p h1.merge(h2) # {:aaa=>1, :bbb=>2, :ccc=>10, :ddd=>11}
p h1.merge(h2) {|k,old,new| [old,new].min} # {:aaa=>1, :bbb=>2, :ccc=>3, :ddd=>11}
