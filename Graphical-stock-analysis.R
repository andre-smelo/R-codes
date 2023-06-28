
install.packages("quantmod")
install.packages("xts")
install.packages("moments")
library(quantmod)
library(xts)
library(moments)

startDate = as.Date("2019-06-27")
endDate = as.Date("2023-06-27")

getSymbols("BPAC11.SA", src = "yahoo", from = startDate, to = endDate, auto.assign = T)

head(Cl(BPAC11.SA),5) 

candleChart(BPAC11.SA)

plot(BPAC11.SA$BPAC11.SA.Close, main = "Fechamento Diário Ações BTG Pactual",
     col = "red", xlab = "Data", ylab = "Preço", major.ticks = 'months',
     minor.ticks = FALSE)


addBBands(n = 20, sd = 2)
addADX(n = 7, maType = "EMA")
