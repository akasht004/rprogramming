library(robotstxt)
library(rvest)

url = "https://en.wikipedia.org/wiki/World_population"

path = paths_allowed(url)

my_html = read_html(url)
View(my_html)

population_tables = html_nodes(my_html,"table")
View(population_tables)

final_table = html_table(population_tables)[[5]]
View(final_table)

population = final_table[1:4]
View(population)

write.csv(population, "top 10 population")
