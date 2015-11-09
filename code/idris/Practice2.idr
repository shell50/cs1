module realWorld

data course = cs1 | calc | econ| bio

after: course -> course
after cs1 = calc
after calc = econ
after econ = bio
after t = cs1
