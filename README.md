# school_results_code_review

## Task

To create a reporting system based on a list of student grades.

example: "green,Green, Red, Amber, red" -> "Green: 2\nAmber: 1\nRed: 2"

```

input                             |              output 

""                                                "No results given."

"Green"                                            "Green: 1"

"Green, Red"                                       "Green: 1\nRed: 1"

"Green, Amber, Red"                                 "Green: 1\nAmber: 1\nRed: 1"

"red, Green, Amber, amber"                          "Green: 1\nAmber: 2\nRed: 1"

"Red, blue, Green, green, yellow"                   "Green: 2\nRed: 1\nUncounted: 2"

"amber,green, Green, orange, Red"                   "Green: 2\nAmber: 1\nRed: 1\nUncounted: 1"

```





