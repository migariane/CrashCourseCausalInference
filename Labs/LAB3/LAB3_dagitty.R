# Web: http://www.dagitty.net/dags.html

# Installing1 dagitty development verison
library(devtools)
install_github("jtextor/dagitty/r")

######################################
# DAGITTY: Baterfly or M-BIAS example
######################################

# Identifiying the minimal adjustment sets using DAGITTY
library(dagitty)
dag <- dagitty("dag {
          A -> Y
          W1 -> A
          W0 -> W1
          W0 -> Y
          W1 -> W2
          W3 -> W2
          W3 -> Y
               }")

plot(graphLayout(dag))

exposures(dag) <- c("A")
outcomes(dag) <- c("Y")

# Identifying parents and children
library(ggdag)
ggdag_parents(dag, "Y", text_col = "black")
ggdag_children(dag, "A", text_col = "black")

# Identifiying the minimal adjustment sets using DAGITTY
ggdag_adjustment_set(dag, node_size = 14, text_col = "black") + 
  theme(legend.position = "bottom")

