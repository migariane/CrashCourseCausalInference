library(ggplot2)
#devtools::install_github("malcolmbarrett/ggdag")
library(ggdag)
library(dplyr)

tidy_ggdag <- dagify(A ~ Z2,
                     Z3 ~ A + Y,
                     Y ~ Z2 + Z1,
                     Z1 ~ A) %>% tidy_dagitty()

tidy_ggdag

ggplot(tidy_ggdag$data,aes(x=x,y=y,xend=xend,yend=yend))+
  geom_dag_edges(aes(),edge_colour="black") +
  geom_dag_node() +
  geom_dag_text(col = "white")

for(i in 1:dim(tidy_ggdag$data)[[1]]){
  
    flecha <- tidy_ggdag$data[i,]
  
  if(flecha$name=="Z3"){
    tidy_ggdag$data[i,]$x <- 1
    tidy_ggdag$data[i,]$y <- 2
  }
  if(flecha$name=="Y"){
    tidy_ggdag$data[i,]$x <- 2
    tidy_ggdag$data[i,]$y <- 0
  }
  if(flecha$name=="A"){
    tidy_ggdag$data[i,]$x <- 0
    tidy_ggdag$data[i,]$y <- 0
  }
  if(flecha$name=="Z2"){
    tidy_ggdag$data[i,]$x <- 1
    tidy_ggdag$data[i,]$y <- 1
  }
  if(flecha$name=="Z1"){
    tidy_ggdag$data[i,]$x <- 1
    tidy_ggdag$data[i,]$y <- 0
  }
    
    }
for(i in 1:dim(tidy_ggdag$data)[[1]]) {
    if(is.na(tidy_ggdag$data[i, ]$xend) == TRUE) {primer_na = i
    break()}
}
for(i in 1:(primer_na - 1)){
  
  flecha <- tidy_ggdag$data[i,]
  
  if(flecha$to=="Z3"){
    tidy_ggdag$data[i,]$xend <- 1
    tidy_ggdag$data[i,]$yend <- 2
  }
  if(flecha$to=="Y"){
    tidy_ggdag$data[i,]$xend <- 2
    tidy_ggdag$data[i,]$yend <- 0
  }
  if(flecha$to=="A"){
    tidy_ggdag$data[i,]$xend <- 0
    tidy_ggdag$data[i,]$yend <- 0
  }
  if(flecha$to=="Z2"){
    tidy_ggdag$data[i,]$xend <- 1
    tidy_ggdag$data[i,]$yend <- 1
  }
  if(flecha$to=="Z1"){
    tidy_ggdag$data[i,]$xend <- 1
    tidy_ggdag$data[i,]$yend <- 0
  }

}


ggplot(tidy_ggdag$data,aes(x=x,y=y,xend=xend,yend=yend))+
  geom_dag_edges(aes(),edge_colour="black", curvature = 0.5) +
  geom_dag_node() +
  geom_dag_text(col = "white") +
  theme_dag() + 
  theme(panel.background = element_rect(fill = "transparent",colour = NA),
        panel.grid.minor = element_blank(), 
        panel.grid.major = element_blank())

#####

setwd("C:\\Users\\dredondo\\Dropbox\\IntroductionCausalInferenceEpi")
svg(filename = "dag.svg", pointsize = 3, width = 8)

ggplot(tidy_ggdag$data,aes(x=x,y=y,xend=xend,yend=yend))+
  geom_dag_edges() +
  geom_dag_node() +
  geom_dag_text(col = "white") +
  theme_dag() + 
  theme(panel.background = element_rect(fill = "transparent",colour = NA),
        panel.grid.minor = element_blank(), 
        panel.grid.major = element_blank())
dev.off()

