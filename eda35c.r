#http://www.itl.nist.gov/div898/handbook/eda/section3/eda35c.htm
#Autocorrelation
#R code and output:

## Read data.
diameter <- scan("lew.dat",skip=25)

## Attach "nlme" library and compute autocorrelations.
library(nlme)
z = acf(diameter,lag.max=49)

## Print results.
Lag = round(z$lag,2)
ACF = round(z$acf,2)
data.frame(Lag, ACF)

>    Lag   ACF
> 1    0  1.00
> 2    1 -0.31
> 3    2 -0.74
> 4    3  0.77
> 5    4  0.21
> 6    5 -0.90
> 7    6  0.38
> 8    7  0.63
> 9    8 -0.77
> 10   9 -0.12
> 11  10  0.82
> 12  11 -0.40
> 13  12 -0.55
> 14  13  0.73
> 15  14  0.07
> 16  15 -0.76
> 17  16  0.40
> 18  17  0.48
> 19  18 -0.70
> 20  19 -0.03
> 21  20  0.70
> 22  21 -0.41
> 23  22 -0.43
> 24  23  0.67
> 25  24  0.00
> 26  25 -0.66
> 27  26  0.42
> 28  27  0.39
> 29  28 -0.65
> 30  29  0.03
> 31  30  0.63
> 32  31 -0.42
> 33  32 -0.36
> 34  33  0.64
> 35  34 -0.05
> 36  35 -0.60
> 37  36  0.43
> 38  37  0.32
> 39  38 -0.64
> 40  39  0.08
> 41  40  0.58
> 42  41 -0.45
> 43  42 -0.28
> 44  43  0.62
> 45  44 -0.10
> 46  45 -0.55
> 47  46  0.45
> 48  47  0.25
> 49  48 -0.61
> 50  49  0.14
