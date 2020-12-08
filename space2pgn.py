from sys import argv
half_moves = 0
with open(argv[1]) as fn:
    for line in fn:
        line = line.replace('\n', '')
        move_list = line.split()
        for move in move_list:
            if half_moves % 2 == 0:
                full_moves = (half_moves // 2) + 1
                print('\n', full_moves, '.', sep='', end='')
            print(move, end=' ')
            half_moves += 1
print()
