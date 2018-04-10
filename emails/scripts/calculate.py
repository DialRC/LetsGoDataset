
def calc(filename):
    with open(filename, 'r') as f:
        x = f.read().splitlines()
    print x[3]
    tot = int(x[3].split(' ')[3].split('=')[0])
    non = int(x[4].split(' ')[4].split('=')[0])

    return tot, non

if __name__ == '__main__':
    with open('filenames.txt', 'r') as f1:
        files = f1.read().splitlines()
    total = 0
    non_turn = 0
    for each in files:
        t, n = calc(each)
        total += t
        non_turn += n
    print total
    print non_turn