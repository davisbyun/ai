def average(*args) :
    num_args = len(args)
    sum = 0
    for i in range(num_args) :
        sum = sum + args[i]

    avg = sum/num_args

    print("%d과목 평균 : %.1f" % (num_args, avg))

average(85, 96, 87)
average(77, 93, 85, 97, 72)


    

    

