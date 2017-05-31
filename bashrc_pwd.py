import os
pwd = os.getcwd()
split_array = pwd.split('/')
pwd_to_show = '..'
if len(split_array) > 4:
  for i in [-3,-2,-1]:
    pwd_to_show += '/' + split_array[i]
elif len(split_array) == 4:
  pwd_to_show = ''
  for i in [-3,-2,-1]:
    if i == -3:
      pwd_to_show += split_array[i]
    else:
      pwd_to_show += '/' + split_array[i]
elif len(split_array) == 3:
  pwd_to_show = split_array[-2] + '/' + split_array[-1]
else:
  pwd_to_show = split_array[-1]
print pwd_to_show
