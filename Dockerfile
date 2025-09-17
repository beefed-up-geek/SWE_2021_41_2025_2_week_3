FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 && \
    rm -rf /var/lib/apt/lists/*

CMD ["python3", "-c", "\
def isHappy(n):\n\
    while n != 1 and n != 4:\n\
        s = 0\n\
        while n > 0:\n\
            digit = n % 10\n\
            s += digit * digit\n\
            n //= 10\n\
        n = s\n\
    return n == 1\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]
