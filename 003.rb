# 問題 3
#
# 13195 の素因数は 5、7、13、29 です。
# では、600851475143 の最大の素因数は何でしょうか？
require 'prime'
p Prime.prime_division(600851475143).map { |ary| ary.first }.max
