require 'minruby'

def max(tree)
  case tree[0]
  when "lit"
    tree[1]
  else
    left = max(tree[1])
    right = max(tree[2])
    if left >= right
      left
    else
      right
    end
  end
end


str = gets

tree = minruby_parse(str)

answer = max(tree)

p(answer)
