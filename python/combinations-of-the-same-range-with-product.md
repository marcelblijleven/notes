# Combinations of the same range with product
The product function from itertools has an optional parameter called repeat which creates a nested for loop of the first parameter.

For example these two lines provide the same output
```python
from itertools import product

product(range(100), range(100))
product(range(100), repeat=2)
```

