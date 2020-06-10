def parasitic(num):
    for n in range(1, 11):
        res = n * num
        if str(num)[-1] + str(num)[:-1] == str(res):
            return n
    return False

parasitic(8421)
