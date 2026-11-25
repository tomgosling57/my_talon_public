-
main screen: 
	mimic("grid screen one")
    mimic("grid five one touch")

second screen: 
	mimic("grid screen zero")
    mimic("grid five one touch")

select screen:
  mimic("grid screen one")
  mimic("grid nine six nine touch")
  sleep(0.2)
  mimic("drag")
  sleep(0.2)
  mimic("grid one one")
  sleep(0.2)
  mimc("end drag")
