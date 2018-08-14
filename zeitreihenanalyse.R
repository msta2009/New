x1= rnorm (n=48, mean=0, sd=1) # x1 ist zeitreihe, rw = random walk
rw_x1=cumsum (x1)
x=ts(data.frame(x1, rw_x1),start= 2014, frequency = 12) # beide vektoren als data-frame
# wenn ich etwas spezifizieren möchte nehme ich c= start jahr, frequency 4 quartal, 12 monate
#-> frequency ist i.d.R. immer bezogen auf 1 jahr!; bei frequency 0,25 z.b. 4 jahre frequency
x
plot.ts(x[,c("x1","rw_x1")])
#x1 in der analyse unproblematisch, rw /random walk bei analyse schwierig-> stochastischer trend
#trend hier zufällig je nach walk des irrläufers

x1= rnorm (n=48, mean=5, sd=1) 
rw_x2=cumsum (x2)
x=ts(data.frame(x2, rw_x2),start= 2014, frequency = 12) 
x
plot.ts(x[,c("x2","rw_x2")])