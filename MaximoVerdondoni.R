library(flametree)

# your name, without spaces or special characters
name <- "MV"

# pick a seed
this_seed <- 312539537

# pick some colours
shades <- c("#D73823", "#E19CDC", "#E1C19C")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "lightblue",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))



