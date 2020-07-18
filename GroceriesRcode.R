

install.packages("arules")
install.packages("arulesViz")

library("arules")
library("arulesViz")

data()

data("Groceries")
?Groceries

View(Groceries)
##### cannot view data directly
###use inspect function

inspect(Groceries[1:10])

summary(Groceries)

##Associaltion Rule apriori

rule <- apriori(Groceries,parameter = list(support=0.008, confidence =0.08, minlen=3))
rule

head(quality(rule))

inspect(rule[1:5])  # to view we use inspect 


window()
plot(rule,method ="scatterplot")
plot(rule,method = "grouped")
plot(rule,method = "graph")

rule <- sort(rule, by ="lift")

rule

inspect(rule[1:5])
 