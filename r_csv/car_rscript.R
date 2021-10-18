library("rvest")
library("dplyr")
wiki <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values")
wiki %>%
  html_nodes("pre")%>%
  html_text()

df <- data.frame(Year = c(1997),
                 Car_Brand = c("Ford"),
                 Model = c("E350"),
                 Comment = c("Super luxurious truck")
                 )
print(df)

write.csv(df, "C:\\Users\\valer\\Documents\\st2195_assignment_2\\r_csv\\Car.csv", row.names= TRUE)
