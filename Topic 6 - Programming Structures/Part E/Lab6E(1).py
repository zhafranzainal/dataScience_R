#Q1
import numpy as np

a = np.array([87, 69, 56, 30, 96]); a

b = np.array([[72,38,27], [58,22,66], [92,67,35]]); b

c = np.array([ [[1,5,9], [2,6,10], [3,7,11], [4,8,12]], [[13,17,21], [14,18,22], [15,19,23], [16,20,24]] ]); c

import string
string.ascii_letters[:26]

import pandas as pd
cars = {
  "Model": ["Axia", "Myvi", "Aruz", "Bezza", "Alza"],
  "Price (RM)": [32485, 52697, 73226, 48356, 60525]
  }
pd.DataFrame(cars, columns=["Model","Price (RM)"])
