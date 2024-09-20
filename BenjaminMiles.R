library(flametree)

# your name, without spaces or special characters
name <- "Benjamin"

# pick a seed
this_seed <- 78

# pick some colours
shades <- c( "lightgreen","springgreen4", "coral4")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 17)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "white" ,
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))
