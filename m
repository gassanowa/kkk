t = """
У лукоморья дуб зелёный
"""
text = text.lower()
text = text.split()

count = {}
for word in text:
    if word in count:
        count[word] += 1
    else:
        count[word] = 1
for char, cnt in count.items():
    print(f"Символ {char} встречается {cnt} раз")

heads = 35  # количество голов
legs = 94  # количество ног

for r in range(heads + 1):  # количество кроликов
    for ph in range(heads + 1):  # количество фазанов
        #  если суммарное количество голов превышено или ног превышено, то переходим на следующий шаг цикла
        if (r + ph) > heads or \
                (r * 4 + ph * 2) > legs:
            continue
        if (r + ph) == heads and (r * 4 + ph * 2) == legs:
            print("Количество кроликов", r)
            print("Количество фазанов", ph)
            print("---")

n = 1
while n ** 2 < 1000:
    n += 1
print("result: ", n - 1)

p = 1
n = 5

for i in range(1, n + 1):
    p *= i
print(p)

N = 5

for i in range(1, N + 1):
    print("*" * i)

random_matrix = [[1, 2, 3],
                 [7, -1, 2],
                 [123, 2, -1]
                 ]

min_value_rows = []
min_index_rows = []
max_value_rows = []
max_index_rows = []
for row in random_matrix:
    min_index = 0
    min_value = row[min_index]
    max_index = 0
    max_value = row[max_index]
    for index_col in range(len(row)):
        if row[index_col] < min_value:
            min_value = row[index_col]
            min_index = index_col
        if row[index_col] > max_value:
            max_value = row[index_col]
            max_index = index_col
    min_value_rows.append(min_value)
    min_index_rows.append(min_index)
    max_value_rows.append(max_value)
    max_index_rows.append(max_index)
print("Minimal elements:", min_value_rows)  # минимальные элементы
print("Their indices:", min_index_rows)  # их индексы
print("Maximal elements:", max_value_rows)  # максимальные элементы
print("Their indices:", max_index_rows)  # их индексы
