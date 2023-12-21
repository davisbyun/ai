seats=[[0,0,0,0,0,0,0,0,0,0],\
       [0,0,0,0,0,0,0,0,0,0],\
       [0,0,0,0,0,0,0,0,0,0],\
       [0,0,0,0,0,0,0,0,0,0],\
       [0,0,0,0,0,0,0,0,0,0],\
       [0,0,0,0,0,0,0,0,0,0],\
       [0,0,0,0,0,0,0,0,0,0]]

seatsCount = int(input("몇 좌석예약하시겠습니까?"))
count = 1

while seatsCount <= seatsCount :
  row = int(input("좌석을 예약하기 행을 입력하기 "))
  colum = int(input("좌석예약하기 행을 입력하기 "))
  seats [row][colum] = 1  
  count += 1  
  for i in range (0,len(seats)) :
      print("%d행"%i, end=" ")
      for j in range(0, len(seats[i])) :
        if seats[i][j] == 0 :
          print("%3s" %"□" , end="")  
        else :  
          print("%3s" %"■" , end="")  
      print()


#좌석을 몇 개 예약하시겠습니까? 3
#그러면 3개 반복하여 예약    