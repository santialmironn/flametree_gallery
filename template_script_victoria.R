library(flametree)

# your name, without spaces or special characters
name <- "Victoria"

# pick a seed
this_seed <- 422576537

# pick some colours
shades <- c("darkseagreen3", "#E0FFFF", "#FFE4E1", "#FF69B4")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))

