library(ggdag)
library(ggplot2)

tidy_ggdag <- tidy_dagitty(dagify(Y ~ U + W2 + A,
                                  W2 ~ A + W1 + U,
                                  A ~ W1))

tidy_ggdag$data

# (x, y) coordenadas del nodo del que sale la flecha
tidy_ggdag$data$x <- c(0,0,2,2,0,0,1,2)
tidy_ggdag$data$y <- c(0,0,1,1,1,1,0,0)

# (xend, yend) coordenadas del nodo que recibe la flecha
tidy_ggdag$data$xend <- c(1,2,1,2,0,1,2, NA)
tidy_ggdag$data$yend <- c(0,0,0,0,0,0,0, NA)

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend)) +
  geom_dag_edges_arc(curvature = c(0, -0.1, 0, 0, 0, 0, 0)) + # Flecha circular
  geom_dag_node() +
  geom_dag_text() +
  theme_dag() + 
  theme(panel.background = element_rect(fill = "transparent", colour = NA),
        panel.grid.minor = element_blank(), 
        panel.grid.major = element_blank())

svg(filename="there_you_go.svg")
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend)) +
  geom_dag_edges_arc(curvature = c(0, -0.4, 0, 0, 0, 0, 0)) + # Flecha circular
  geom_dag_node() +
  geom_dag_text() +
  theme_dag() + 
  theme(panel.background = element_rect(fill = "transparent", colour = NA),
        panel.grid.minor = element_blank(), 
        panel.grid.major = element_blank())
dev.off()
