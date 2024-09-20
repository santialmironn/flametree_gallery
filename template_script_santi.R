library(flametree)

# your name, without spaces or special characters
name <- "elio"

# pick a seed
this_seed <- 943243256

# pick some colours
shades <- c("lightblue", "cyan4", "purple")

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
