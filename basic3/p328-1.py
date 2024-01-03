"""
import p328

print( p328.add( 10,20) ) # . ~안에 
print( p328.sub( 10,20) )
print( p328.mul( 10,20) )
print( p328.div( 20,10) )

import p328 as p

print( p.add( 10,20) ) # . ~안에 
print( p.sub( 10,20) )
print( p.mul( 10,20) )
print( p.div( 20,10) )
"""
from p328 import sub, mul, mm, ss

# print( p.add( 10,20) ) # . ~안에 
print( sub( 10,20) )
print( mul( 10,20) )
# print( p.div( 20,10) )
print( mm( 10,30 )) # 30의 제곱에다 10을 더하기 
print( ss(-3,2,1)) #가장 작은 수 출력하기