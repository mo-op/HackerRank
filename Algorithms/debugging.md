## Debug the given function

Given two dates each in the format dd-mm-yyyy, you have to find the number of lucky dates between them (inclusive). To see if a date is lucky,

    Firstly, sequentially concatinate the date, month and year, into a new integer erasing the leading zeroes.
Now if is divisible by either or , then we call the date a lucky date.
```
import re
month = []

def updateLeapYear(year):
#change in logic
    if year % 400 == 0:
        month[2] = 29
    elif year % 100 == 0:
        month[2] = 28
    elif year % 4 == 0:
        month[2] = 29
    else:
        month[2] = 28

def storeMonth():
    month[1] = 31
    month[2] = 28
    month[3] = 31
    month[4] = 30
    month[5] = 31
    month[6] = 30
    month[7] = 31
    month[8] = 31
    month[9] = 30
    month[10] = 31
    month[11] = 30
    month[12] = 31

def findPrimeDates(d1, m1, y1, d2, m2, y2):
    storeMonth()
    result = 0

    while(True):
        x = d1
        x = x * 100 + m1
        #change from 1000 to 1000
        x = x * 10000 + y1
        if x % 4 == 0 or x % 7 == 0:
            result = result + 1
        if d1 == d2 and m1 == m2 and y1 == y2:
            break
        updateLeapYear(y1)
        d1 = d1 + 1
        if d1 > month[m1]:
            m1 = m1 + 1
            d1 = 1
            if m1 > 12:
                y1 =  y1 + 1
                #change from m1+1 to 1
                m1 = 1 
    return result;

for i in range(1, 15):
    month.append(31)

line = raw_input()
date = re.split('-| ', line)
d1 = int(date[0])
m1 = int(date[1])
y1 = int(date[2])
d2 = int(date[3])
m2 = int(date[4])
y2 = int(date[5])

result = findPrimeDates(d1, m1, y1, d2, m2, y2)
print(result)
```
Given an array of distinct integers, transform the array into a zig zag sequence by permuting the array elements. A sequence will be called a zig zag sequence if the first elements in the sequence are in increasing order and the last elements are in decreasing order.

```
def findZigZagSequence(a, n):
    a.sort()
    #change 1 : adding the -1
    mid = int((n + 1)/2)-1
    a[mid], a[n-1] = a[n-1], a[mid]

    st = mid + 1
    #change 2: n-2 instead of n-1
    ed = n - 2
    while(st <= ed):
        a[st], a[ed] = a[ed], a[st]
        st = st + 1
        #change 3: ed-1 instead of +1
        ed = ed - 1

    for i in range (n):
        if i == n-1:
            print(a[i])
        else:
            print(a[i], end = ' ')
    return

test_cases = int(input())
for cs in range (test_cases):
    n = int(input())
    a = list(map(int, input().split()))
    findZigZagSequence(a, n)
```
