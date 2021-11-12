library(quantmod)
# Downloads from Yahoo Finance the timeseries of a stock.
#
# @param symbol The symbol of the stock.
# @param start_date The start date of the timeseries.
# @param end_date The end date of the timeseries.
get_yf_daily <- function(symbol, start_date, end_date) {
    data = getSymbols.yahoo(symbol,
                    env = globalenv(),
                    from = start_date,
                    to = end_date,
                    src='yahoo')
    return (data)
}