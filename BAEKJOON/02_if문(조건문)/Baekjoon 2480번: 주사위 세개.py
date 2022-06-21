# 백준 2480번 주사위 세개

N1, N2, N3 = map(int, input().split())
# 1. 같은 눈이 3개가 나오면 10,000원+(같은 눈)×1,000원의 상금을 받게 된다. 
if N1 == N2 == N3:
    print(10000 + N1 * 1000)
# 2. 같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)×100원의 상금을 받게 된다. 
elif N1 == N2:
    print(1000 + N1 * 100)
elif N1 == N3:
    print(1000 + N1 * 100)
elif N2 == N3:
    print(1000 + N2 * 100)         
# 3. 모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)×100원의 상금을 받게 된다.  
else:
    print(100 * max(N1, N2, N3))    
