# Bitwise operators
Perform bitwise calculations on integers by converting them to binary and running the operation bit by bit.

| Operator | Description         |
|----------|---------------------|
| &        | Bitwise AND         |
| |        | Bitwise OR          |
| ~        | Bitwise NOT         |
| ^        | Bitwise XOR         |
| >>       | Bitwise right shift |
| <<       | Bitwise left shift  |

## Bitwise AND
Returns 1 if both bits are 1, else 0

```
10 = 1010
14 = 1110
 & = 1010
int('1010', 2) = 10 # Binary is base2

So 10 & 14 == 10
```

## Bitwise OR
Returns 1 if either of the bits are 1, else 0

```
10 = 1010
14 = 1110
 | = 1110
int('1110', 2) = 14

10 | 14 == 14
```

## Bitwise NOT
Returns the numbers complement (inverted value)

```
7 = 0111
    -(0111 + 1)
    -(1000)
int('-1000', 2) = -8

~7 = -8
```

## Bitwise XOR
Returns 1 if one of the bits is 1 and the other is 0, else 0

```
10 = 1010
 7 = 0111
 ^ = 1101
int('1101', 2) = 13

10 ^ 7 == 13
```

