# Carga de paquetes. Fijamos ruta de trabajo -------------
library(ggplot2)

# Orden para instalar el paquete "ggdag"
# devtools::install_github("malcolmbarrett/ggdag")
library(ggdag)

# Fijamos la ruta de trabajo donde se guardarán los DAGs
# setwd("C:yourpath")

# 1. Primera aproximación -------------
tidy_ggdag <- tidy_dagitty(dagify(Y ~ A))

tidy_ggdag$data
tidy_ggdag$dag

# Gráfico básico
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag()

# Gráfico con fondo blanco
#ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
#    geom_dag_edges() +
#    geom_dag_node() +
#    geom_dag_text() +
#    theme_dag() + 
#    theme(panel.background = element_rect(fill = "transparent", colour = NA),
#          panel.grid.minor = element_blank(), 
#          panel.grid.major = element_blank())

# Guardamos el DAG
svg(filename="1_primera_aproximacion.svg")
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())
dev.off()

# 2. Variable confusora -------------
tidy_ggdag <- tidy_dagitty(dagify(Y ~ A + W,
                                  A ~ W))

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Guardamos el DAG
svg(filename="2_variable_confusora.svg")
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())
dev.off()

# 2.1. Avanzado - Cambio de coordenadas ------------
tidy_ggdag <- tidy_dagitty(dagify(Y ~ A + W,
                                  A ~ W))

# Vemos los datos del DAG
tidy_ggdag$data

# Dibujamos el DAG mostrando las coordenadas de los nodos
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    #theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Vamos a modificar los datos del DAG para que cada nodo aparezca donde queramos
tidy_ggdag$data

# (x, y) coordenadas del nodo del que sale la flecha (name: A W W Y)
tidy_ggdag$data$x <- c(0, 1, 1, 2)
tidy_ggdag$data$y <- c(0, 1, 1, 0)

# (xend, yend) coordenadas del nodo que recibe la flecha (to: Y A Y NA)
tidy_ggdag$data$xend <- c(2, 0, 2, NA)
tidy_ggdag$data$yend <- c(0, 0, 0, NA)

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Guardamos el DAG
svg(filename="2_variable_confusora_cambio_coordenadas.svg")
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges(edge_colour = "blue") +
    geom_dag_node(col = c("red", "blue", "green")) +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())
dev.off()

# 3. Variable collider -------------
tidy_ggdag <- tidy_dagitty(dagify(Y ~ A,
                                  W ~ A + Y))

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Cambiamos las coordenadas
tidy_ggdag$data
tidy_ggdag$data$x <- c(0, 0, 2, 1)
tidy_ggdag$data$y <- c(0, 0, 0, 1)
tidy_ggdag$data$xend <- c(1, 2, 1, NA)
tidy_ggdag$data$yend <- c(1, 0, 1, NA)

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Guardamos el DAG
svg(filename="3_variable_collider.svg")
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())
dev.off()

# 4. Sesgo en M -------------
tidy_ggdag <- tidy_dagitty(dagify(Y ~ A + W3,
                                  W2 ~ W1 + W3,
                                  A ~ W1))
tidy_dag <- tidy_dagitty(dag)

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Cambiamos las coordenadas
tidy_ggdag$data
tidy_ggdag$data$x <- c(0, 0, 0, 2, 2, 2, 1)
tidy_ggdag$data$y <- c(0, 2, 2, 2, 2, 0, 1)
tidy_ggdag$data$xend <- c(2, 0, 1, 1, 2, NA, NA)
tidy_ggdag$data$yend <- c(0, 0, 1, 1, 0, NA, NA)

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Guardamos el DAG
svg(filename="4_sesgo_en_M.svg")
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())
dev.off()

# Setting Exposure and Outcome
exposures(tidy_dag) <- c("A")
outcomes(tidy_dag) <- c("Y")

# Identifying parents and children
ggdag_parents(tidy_dag, "A", text_col = "black")
ggdag_children(tidy_dag, "Y", text_col = "black")

# Identifiying the minimal adjustment sets using DAGITTY
ggdag_adjustment_set(tidy_dag, node_size = 14, text_col = "black") + 
    theme(legend.position = "bottom")

# 5. Situación collider confusora artículo -------------
tidy_ggdag <- tidy_dagitty(dagify(PRO ~ SBP + SOD,
                                  SBP ~ SOD + AGE,
                                  SOD ~ AGE))

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Cambio coordenadas
tidy_ggdag$data
tidy_ggdag$data$x <- c(1, 1, 2, 0, 0, 1)
tidy_ggdag$data$y <- c(2, 2, 0, 0, 0, 1)
tidy_ggdag$data$xend <- c(2, 0, 1, 1, 2, NA)
tidy_ggdag$data$yend <- c(0, 0, 1, 1, 0, NA)

# Dibujamos el DAG
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())

# Guardamos el DAG
svg(filename="5_situacion_collider_confusora.svg", 
    width=7.5, 
    height=6)
ggplot(tidy_ggdag$data, aes(x = x, y = y, xend = xend, yend = yend))+
    geom_dag_edges() +
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())
dev.off()

# 6 - Con flechas curvas
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
    geom_dag_edges_arc(curvature = c(0, -0.4, 0, 0, 0, 0, 0)) + # Flecha circular
    geom_dag_node() +
    geom_dag_text() +
    theme_dag() + 
    theme(panel.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.minor = element_blank(), 
          panel.grid.major = element_blank())