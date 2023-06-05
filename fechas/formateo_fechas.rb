time = Time.new
p time.strftime("%d/%m/%Y")        # "05/12/2015"
p time.strftime("%k:%M")           # "17:48"
p time.strftime("%I:%M %p")        # "11:04 PM"
p time.strftime("Today is %A")     # "Today is Sunday"
p time.strftime("%d of %B, %Y")    # "21 of December, 2015"
p time.strftime("Unix time is %s") # "Unix time is 1449336630"