#Q2
x <- list('queen', 'rainbow', 'snail', 'tree', 'umbrella', 'violin')
y <- list('hand', 'queen', 'ice-cream', 'rainbow', 'snail', 'jellyfish', 'tree',
          'umbrella', 'key', 'ladybug', 'moon', 'violin')

unlist(y[!y %in% x])
