library(flametree)


# your name, without spaces or special characters
name <- "ine"

# pick a seed
this_seed <- 234566537 #la semilla

# pick some colours
shades <- c("red", "green", "blue", "orange")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot se dibuja el arbol
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))
