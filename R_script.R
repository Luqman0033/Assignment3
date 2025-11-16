#install.packages("data.table")













#library(data.table)
#film <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/film.csv")
#print(film)
#Q1 <- film[rating == "PG" & rental_duration > 5,
 #          .(film_id, title, rating, rental_duration)]

#print(Q1)


#language <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/language.csv")
#customer <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/customer.csv")
#store <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/store.csv")
#payment <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/payment.csv")
#staff <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/staff.csv")
#rental <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/rental.csv")
#inventory <- fread("D:/MSCS/Semester 1/Tools and Techniques for Data science/Assignment 3/schema/inventory.csv")

#Q2 <- film[, .(avg_rental_rate = mean(rental_rate)), by = rating]
#print(Q2)


#Q3 <- film[, .(total_films = .N), by = language_id]
#print(Q3)

#Q4 <- merge(customer, store, by = "store_id")[
 #       , .(first_name, last_name, store_id)]

#print(Q4)

#Q5 <- merge(payment, staff, by = "staff_id")[
   #     , .(staff_name = paste(first_name, last_name),
  #          amount,
 #           payment_date)]

#print(Q5)

#rented <- merge(rental, inventory, by = "inventory_id")[, unique(film_id)]

#Q6 <- film[!(film_id %in% rented), .(film_id, title)]

#print(Q6)





#install.packages("rlang")
#install.packages("vctrs")
#install.packages("cli")
#install.packages("lifecycle")
#install.packages("farver")
#install.packages("withr")
#install.packages("isoband")
#install.packages("S7")
#install.packages("scales")
#install.packages("R6")
#install.packages("viridisLite")
#install.packages("gtable")
#install.packages("ggplot2")
#options(timeout = 600)
#install.packages("ggplot2", dependencies = TRUE)
library(data.table)
library(ggplot2)

rating_counts <- film[, .N, by = rating]

ggplot(rating_counts, aes(x = rating, y = N)) +
  geom_bar(stat = "identity") +
  ggtitle("Number of Films by Rating") +
  xlab("Rating") +
  ylab("Count of Films")


