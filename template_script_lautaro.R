library(flametree)

# your name, without spaces or special characters
name <- "fern"

# pick a seed
this_seed <- 546231897

# pick some colours
shades <- c("brown", "yellow", "red", "white")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 8)

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


