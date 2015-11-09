module: mapTest

import person
import list


n: (list person -> String) -> list person -> list String
n = map name people
