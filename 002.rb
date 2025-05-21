# 問題 2
#
# フィボナッチ数列の各項は、前の2つの項を加えることで生成されます。
# 1と2から始めると、最初の10項は次のようになります：
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, …
#
# このフィボナッチ数列のうち、400万を超えない項の中で
# 偶数の値の項の合計を求めなさい。
def fib(ary)
  ary[-1] + ary[-2]
end

ary = [1,2]
while true do
  ary << fib(ary)

  if fib(ary) > 4000000
    break
  end
end

puts ary.select {it.even?}.sum
