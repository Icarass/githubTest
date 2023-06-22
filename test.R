# Load required libraries
library(quantmod)

# Define the ticker symbol and the start and end dates for the data
ticker <- "AAPL"  # Change to the desired ticker symbol
start_date <- "2018-01-01"  # Change to the desired start date
end_date <- "2022-12-31"  # Change to the desired end date

# Fetch the stock data
getSymbols(ticker, from = start_date, to = end_date)

# Access the stock data
stock_data <- eval(parse(text = ticker))

# Calculate the monthly returns
monthly_returns <- diff(log(Cl(stock_data)))

# Filter for the desired period
desired_period <- subset(monthly_returns, index(monthly_returns) >= as.Date("2018-01-01") & index(monthly_returns) <= as.Date("2022-12-31"))

# Calculate the average of the monthly returns
average_monthly_return <- mean(desired_period, na.rm = TRUE)

# Print the average monthly return
print(paste("Average Monthly Return (2018-2022):", average_monthly_return))

# Calculate the standard deviation of the monthly returns
standard_deviation <- sd(monthly_returns, na.rm = TRUE)

quotient

risk_free_rate <-"0.0372" # Define the risk free rate

adjusted_rate <- average_monthly_return - risk_free_rate

Sharpe_ratio <- adjusted_rate / standard_deviation
  
print(paste("standard Deviation:", Sharpe_ratio))
print("test")
