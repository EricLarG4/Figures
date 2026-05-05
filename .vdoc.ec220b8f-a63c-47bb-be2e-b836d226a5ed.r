#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: example_code
#| echo: true

# This is an example of a code cell 
# that can be copied with the 
# "Copy code" button.

hello <- "👋 Welcome!
  Today we'll turn raw data into figures 
  so clear even Reviewer #2 might smile."

cat(rep(unlist(strsplit(hello, " "))[[1]], 12), sep = "")

#
#
#
#
#
#
#
#
#| label: libs
librarian::shelf(
  tidyverse, patchwork, data.table, ggtext, scales, gt, fakir, paletteer, ggsci, clauswilke/colorblindr, gapminder, gganimate, palmerpenguins, png, plotly, charlatan, hrbrmstr/ggalt
)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: data
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns3070
library(dplyr)
library(data.table)
library(DT)
library(ggplot2)

DT::datatable(mpg)
#
#
#
#
#
#| label: ggplot_data 
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(mpg)
#
#
#
#
#
#| label: ggplot_mapping 
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(
  mpg,
  mapping = aes(x = displ, y = hwy)
)
#
#
#
#
#
#| label: ggplot_layers 
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(
  mpg,
  mapping = aes(
    x = cty,
    y = hwy
  )
) +
  geom_point()
#
#
#
#
#
#| label: ggplot_scales
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(
  mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    colour = class
  )
) +
  geom_point() +
  scale_colour_viridis_d()
#
#
#
#
#
#| label: ggplot_facets
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(
  mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    colour = class
  )
) +
  geom_point() +
  scale_colour_viridis_d() +
  facet_grid(year ~ class) 
#
#
#
#
#
#| label: ggplot_coordinates
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(
  mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    colour = class
  )
) +
  geom_point() +
  scale_colour_viridis_d() +
  facet_grid(year ~ class) +
  coord_cartesian(
    xlim = c(0, 8),
    ylim = c(10, 50)
  )
#
#
#
#
#
#| label: ggplot_theme
#| echo: true
#| eval: true
#| output-location: column
#| classes: columns4060
#| fig-width: 7
#| fig-asp: 1
library(ggplot2)

ggplot(
  mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    colour = class
  )
) +
  geom_point() +
  scale_colour_viridis_d() +
  facet_grid(year ~ class) +
  coord_cartesian(
    xlim = c(0, 8),
    ylim = c(10, 50),
    clip = "off"
  ) +
  theme_minimal() +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    legend.position = "bottom",
    axis.title = element_text(size = 14, face = "bold"),
    axis.line = element_line(color = "black", size = 0.75),
    axis.ticks = element_line(color = "black", size = 0.75),
    legend.title = element_text(face = "bold", size = 10),
    legend.text = element_text(size = 10),
    strip.text = element_text(face = "bold", size = 10)
  ) +
  scale_x_continuous(
    name = "Engine Displacement (L)",
    breaks = seq(0, 8, 4),
    limits = c(0, 8),
    expand = c(0, 0)
  ) +
  scale_y_continuous(name = "Highway Miles per Gallon") +
  labs(colour = "Vehicle Class")
#
#
#
#
#
#
#
#
#
#| label: base_r_var_1_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 42L
b <- 42
c <- pi
#
#
#
#
#| label: base_r_var_1_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
print(a) # prints the value of a
```
#
#
#
#
#| label: base_r_var_1_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a # also prints the value of a
```
#
#
#
#
#| label: base_r_var_1_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
class(a) # integer is a class
#
#
#
#| label: base_r_var_1_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

# integer is a type
# (32-bit integer storage)
typeof(a) 
```
#
#
#
#
#| label: base_r_var_1_6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
class(b) # numeric is a class
#
#
#
#| label: base_r_var_1_7
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

# numeric type stored as double
# (64-bit floating point)
typeof(b)
```
#
#
#
#
#| label: base_r_var_1_8
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
class(c)
#
#
#
#| label: base_r_var_1_9
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
typeof(c)
```
#
#
#
#
#
#| label: base_r_var_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_string <- "fourty-two"

a_string
#
#
#
#
#
#| label: base_r_var_2prime
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_boolean <- TRUE
b_boolean <- FALSE

c(a_boolean, b_boolean)
#
#
#
#
#
#| label: base_r_var_2second
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_null <- NULL
a_missing <- NA
a_nan <- NaN
a_inf <- Inf
a_minus_inf <- -Inf
char_missing <- NA_character_
real_missing <- NA_real_
int_missing <- NA_integer_

str(
  list(
    a_null = a_null,
    a_missing = a_missing,
    a_nan = a_nan,
    a_inf = a_inf,
    a_minus_inf = a_minus_inf,
    char_missing = char_missing,
    real_missing = real_missing,
    int_missing = int_missing
  )
)
#
#
#
#
#
#| label: base_r_var_2second2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_null <- NULL
a_missing <- NA
a_nan <- NaN
a_inf <- Inf
a_minus_inf <- -Inf
char_missing <- NA_character_
real_missing <- NA_real_
int_missing <- NA_integer_

cat(
  "NULL represents the absence of a value or object,",
  "\nwhile NA represents a missing value in a vector.",
  "\n\nThe length of a NULL value is",
  length(a_null),
  ",\nwhile the length of a missing value is",
  length(a_missing),
  "."
)
#
#
#
#
#
#| label: base_r_var_2third
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_factor <- factor(
  c("low", "medium", "high", "medium", "low")
)

a_factor
#
#
#
#
#| label: base_r_var_2third2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Removing the "medium" level from the factor
droplevels(a_factor, "medium")
```
#
#
#
#
#| label: base_r_var_2third3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Adding data with a new level "very high"
new_data <- c("very high", "low")
factor_vec <- c(
  a_factor,
  factor(new_data, levels = c(levels(a_factor), "very high"))
)
factor_vec
```
#
#
#
#
#
#| label: base_r_var_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Explicit creation
a_vector <- c(1:10, "coucou")

a_vector
#
#
#
#
#| label: base_r_var_3_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Implicit integer creation
int_vector <- 1:10

int_vector
```
#
#
#
#
#
#| label: base_r_var_3p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_vector <- c(1:10, "coucou")

class(a_vector)
#
#
#
#
#
#| label: base_r_var_3second
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_vector <- c(1:10, "coucou")
# R is 1-indexed
# so the first element is at position 1
a_vector[c(1:3, 11)]
#
#
#
#
#| label: base_r_var_3third2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Logical indexing
a_vector[
  c(TRUE, TRUE, TRUE, rep(FALSE, 7), TRUE)
]
```
#
#
#
#
#| label: base_r_var_3third3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Negative indexing
a_vector[-c(4:10)]
```
#
#
#
#
#
#| label: base_r_var_3fourth
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
b_vector <- c(1:5)

names(b_vector) <- c(
  "one",
  "two",
  "three",
  "four",
  "five"
)

b_vector
#
#
#
#
#
#| label: base_r_var_3fifth
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
b_vector["three"] #named element
#
#
#
#| label: base_r_var_3sixth
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
b_vector[["three"]] #scalar element
#
#
#
#
#
#| label: base_r_var_3seventh
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
b_vector <- c(1:5)

a <- 42

b_vector[3] <- a

b_vector[1] <- "one"

b_vector
#
#
#
#
#| label: base_r_var_3eighth
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
b_vector[1] <- 1

b_vector
```
#
#
#
#
#| label: base_r_var_3ninth
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Coercion to integer
# Only for printing here!
# The original vector is still character!
as.integer(b_vector)
```
#
#
#
#
#
#| label: base_r_var_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# lists cannot contain
# different types of data
# but can contain different types of objects,
# including vectors

a_list <- list(
  numeric_vector = c(1, 2, 3, 4),
  character_vector = c("a", "b", "c"),
  mixed_vector = c(1, "b", TRUE),
  nested_list = list(
    numeric_vector = c(5, 6, 7, 8),
    character_vector = c("d", "e", "f"),
    mixed_vector = c(9, "g", FALSE)
  )
)

a_list
#
#
#
#
#
#| label: base_r_var_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| code-line-numbers: "4|4,1,10"
a_list <- list(
  numeric_vector = c(1, 2, 3, 4),
  character_vector = c("a", "b", "c"),
  mixed_vector = c(1, "b", TRUE),
  nested_list = list(
    numeric_vector = c(5, 6, 7, 8),
    character_vector = c("d", "e", "f"),
    mixed_vector = c(9, "g", FALSE)
  )
)
#
#
#
#
#| label: base_r_var_5p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_list$mixed_vector
```
#
#
#
#
#
#| label: base_r_var_6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| code-line-numbers: "7|7,5,9|7,5,9,1,10"
a_list <- list(
  numeric_vector = c(1, 2, 3, 4),
  character_vector = c("a", "b", "c"),
  mixed_vector = c(1, "b", TRUE),
  nested_list = list(
    numeric_vector = c(5, 6, 7, 8),
    character_vector = c("d", "e", "f"),
    mixed_vector = c(9, "g", FALSE)
  )
)
#
#
#
#
#| label: base_r_var_6p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_list$nested_list$character_vector
```
#
#
#
#
#
#| label: base_r_var_6second
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_list <- list(
  numeric_vector = c(1, 2, 3, 4),
  character_vector = c("a", "b", "c"),
  mixed_vector = c(1, "b", TRUE),
  nested_list = list(
    numeric_vector = c(5, 6, 7, 8),
    character_vector = c("d", "e", "f"),
    mixed_vector = c(9, "g", FALSE)
  )
)
#
#
#
#
#| label: base_r_var_6second2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns8020
all(a_list$nested_list$character_vector == a_list$character_vector)
```
#
#
#
#
#| label: base_r_var_6third
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns8020
all(a_list$nested_list$character_vector == a_list$character_vector)
```
#
#
#
#
#| label: base_r_var_6fourth
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns8020
(a_list$numeric_vector[1] + 4) == a_list$nested_list$numeric_vector[1]
```
#
#
#
#
#
#| label: base_r_var_7
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_list <- list(
  numeric_vector = c(1, 2, 3, 4),
  character_vector = c("a", "b", "c"),
  mixed_vector = c(1, "b", TRUE),
  nested_list = list(
    numeric_vector = c(5, 6, 7, 8),
    character_vector = c("d", "e", "f"),
    mixed_vector = c(9, "g", FALSE)
  )
)

str(
  list(
    'dollar_name' = a_list$character_vector,
    'bracket_name' = a_list[["character_vector"]],
    'bracket_index' = a_list[[2]],
    'bracket_twice' = a_list[2][[1]]
  )
)
#
#
#
#
#
#
#| label: base_r_var_7p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_list[2]
```
#
#
#
#
#| label: base_r_var_7t
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_list[[2]]
```
#
#
#
#
#
#
#
#| label: base_r_op_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
(1 + 2) * 3 / 4 - 5 * pi
#
#
#
#
#
#| label: base_r_op_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1
b <- pi

a + b
#
#
#
#
#
#| label: base_r_op_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1

c <- a + pi
c
#
#
#
#
#
#| label: base_r_op_4_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

a <- 1
b <- 2
c <- b

a < b
#
#
#
#
#| label: base_r_op_4_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

a == b 
```
#
#
#
#
#| label: base_r_op_4_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

a != b 
```
#
#
#
#
#| label: base_r_op_4_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

c >= b
```
#
#
#
#
#
#| label: base_r_op_5_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

a <- TRUE
b <- FALSE
c <- TRUE

a & b
#
#
#
#
#| label: base_r_op_5_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

a | b
```
#
#
#
#
#| label: base_r_op_5_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

!a
```
#
#
#
#
#| label: base_r_op_5_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

# n& has higher precedence than |
# parentheses are needed here 
# to ensure the correct order of operations
(a | b) & c 

```
#
#
#
#
#
#| label: base_r_if_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

x <- 5
if (x > 0) {
  cat("x is positive")
} else if (x < 0) {
  cat("x is negative")
} else {
  cat("x is zero")
} 
#
#
#
#
#| label: base_r_if_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050


# not efficient 
# but demonstrates the use of multiple conditions
if (x > 0 & x %% 2 == 0) {
  cat("x is positive and even")
} else if (x > 0 & x %% 2 == 1) {
  cat("x is positive and odd")
} else if (x < 0 & x %% 2 == 0) {
  cat("x is negative and even")
} else if (x < 0 & x %% 2 == 1) {
  cat("x is negative and odd")
} else {
  cat("x is zero")
}

```
#
#
#
#
#
#
#
#| label: base_r_f_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1
b <- pi
c <- a + b

cat(
    "The result of a + b is:",
    c
)
#
#
#
#
#
#| label: base_f_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1
b <- pi
c <- sum(a, b)

cat(
    "The result of a + b is:",
    c
)
#
#
#
#
#
#| label: base_f_3_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1
b <- pi
c <- sum(a, b)

cat(
    "The result of a + b is:",
    round(c, 2)
)
#
#
#
#
#| label: base_f_3_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

floor(c) # rounds down to the nearest integer
```
#
#
#
#
#| label: base_f_3_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

ceiling(c) # rounds up to the nearest integer
```
#
#
#
#
#| label: base_f_3_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

trunc(c) # truncates
```
#
#
#
#
#
#| label: base_r_5_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1
b <- c(pi, 2, 3)
c <- mean(c(a, b))
d <- median(c(a, b))

cat(
    "The mean of a and b is:",
    c,
    "\nThe median of a and b is:",
    d
)
#
#
#
#
#| label: base_r_5_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
e <- NA

mean(c(a, b, e))
```
#
#
#
#
#| label: base_r_5_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mean(c(a, b, e), na.rm = TRUE)
```
#
#
#
#
#| label: base_r_5_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
min(c(a, b, e), na.rm = TRUE)
```
#
#
#
#
#| label: base_r_5_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

max(c(a, b, e), na.rm = TRUE)
```
#
#
#
#
#
#| label: base_r_5_6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
vec <- c(
  "first", "second", "third", 
  "fourth", "fifth"
  )

cat(
    "The 1st element is:", 
    first(vec), "\n",
    "The 3rd element is:", 
    nth(vec, 3), "\n",
    "The last element is:", 
    last(vec)
)
#
#
#
#
#
#| label: base_r_6_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a <- 1
b <- exp(1)
c <- 81L
d <- -pi

cat(
    "The natural logarithm of a is:", 
    log(a, base = exp(1)), "\n",
    "The common logarithm of b is:", 
    round(log10(b), 2), "\n",
    "The exponential of a is:", 
    round(exp(a), 2)
)
#
#
#
#| label: base_r_6_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| code-line-numbers: "3"

sqrt(c)
#
#
#
#| label: base_r_6_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| code-line-numbers: "3"

abs(d)
#
#
#
#
#
#| label: base_r_7_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

num_vec <- c(-1, 0, 1, 2)
char_vec <- as.character(num_vec)
char_vec
#
#
#
#
#| label: base_r_7_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
as.numeric(char_vec)
```
#
#
#
#
#| label: base_r_7_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
as.logical(as.numeric(char_vec))
```
#
#
#
#
#| label: base_r_7_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

as.factor(num_vec)

```
#
#
#
#
#| label: base_r_7_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

date <- "27/02/2000"

# indicate the format of the input string
# to map it to a Date object
as.Date(date, format = "%d/%m/%Y")
```
#
#
#
#
#| label: base_r_7_6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

date_2 <- "270220"

as.Date(date_2, format = "%d%m%y")
```
#
#
#
#
#
#| label: base_r_8_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

num_vec <- c(1, 2, 3)

str_vec <- c("Case")

# num_vec is coerced to character 
paste(str_vec, num_vec)
#
#
#
#
#| label: base_r_8_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

paste0(str_vec, num_vec) # no space
```
#
#
#
#
#| label: base_r_8_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

paste(str_vec, num_vec, sep = ": ") 
```
#
#
#
#
#
#| label: base_r_9_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

text_vec <- c(
  "The cat is on the roof", 
  "The dog is in the yard"
  )

gsub("cat", "mouse", text_vec)

#
#
#
#
#| label: base_r_9_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

grepl("cat", text_vec)
```
#
#
#
#
#
#
#
#| label: base_r_var_8
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mat <- matrix(1:9, nrow = 3)

mat
#
#
#
#
#| label: base_r_var_9
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
matrix(1:9, nrow = 3)
```
#
#
#
#
#| label: base_r_var_9p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
matrix(1:8, nrow = 3)
```
#
#
#
#
#
#| label: base_r_var_9t
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mat <- matrix(1:9, nrow = 3)

mat
#
#
#
#| label: base_r_var_9t2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mat[1, ] # First row
#
#
#
#
#| label: base_r_var_9f
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mat[, 2] # Second column
```
#
#
#
#
#| label: base_r_var_9fi
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mat[1, 2] # Element at row 1, column 2
```
#
#
#
#
#
#| label: base_r_var_10
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

a_df
#
#
#
#
#
#| label: base_r_var_11
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

names(a_df)
#
#
#
#
#
#| label: base_r_var_11p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

a_df$group
#
#
#
#
#| label: base_r_var_11p2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
cat(
  "It is",
  is.vector(a_df$group),
  "that a_df$group is a vector, containing",
  class(a_df$group),
  "data."
)
```
#
#
#
#
#
#| label: base_r_var_11t
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

unique(a_df$group)
#
#
#
#
#| label: base_r_var_11f
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
sort(a_df$value)
```
#
#
#
#
#| label: base_r_var_11fi
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
sort(a_df$value, decreasing = TRUE)
```
#
#
#
#
#
#| label: base_r_var_11s1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

# Select rows 1 and 3, all columns
a_df[c(1, 3), ]
#
#
#
#
#| label: base_r_var_11s2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Select all rows, columns 1 and 3
a_df[, c(1, 3)]
```
#
#
#
#
#| label: base_r_var_11s3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Select rows 1 to 3, columns "id" and "value"
a_df[1:3, c("id", "value")]
```
#
#
#
#
#| label: base_r_var_11s4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Select rows where group is "A" or "B",
# and columns 1 to 3
a_df[
  a_df$group %in% c("A", "B"),
  1:3
]
```
#
#
#
#
#
#| label: base_r_var_11s5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

a_df[c("id", "value")]
#
#
#
#
#| label: base_r_var_11s6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df[["group"]] # access to scalar vector
```
#
#
#
#
#
#| label: base_r_var_11s7
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

# Rows where value > 10
a_df[a_df$value > 10, ]
#
#
#
#
#| label: base_r_var_11s8
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Rows where group is "A" AND value > 10
a_df[a_df$group == "A" & a_df$value > 10, ]
```
#
#
#
#
#
#| label: base_r_var_11s9
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

subset(a_df, group %in% c("A", "B") & value > 10)
#
#
#
#
#
#| label: base_r_var_14_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

which(a_df$group == "A")
#
#
#
#
#| label: base_r_var_14_2p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Extract values for rows where group is "A"
a_df[which(a_df$group == "A"), ]$value
```
#
#
#
#
#
#| label: base_r_var_14_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_df <- data.frame(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

# Extract values for rows where group is "A"
with(a_df, a_df[group == "A", ])
#
#
#
#
#
#| label: base_r_var_12
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb <- tibble(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

a_tb
#
#
#
#
#
#| label: base_r_var_12p1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Base R data frame

# "Modern R (>= 4.0.0) no longer converts strings to factors by default. Use stringsAsFactors = TRUE to replicate old behavior."
str(a_df)
#
#
#
#| label: base_r_var_12p2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Tibble
# category remains a character vector
str(a_tb)
#
#
#
#| label: base_r_var_12p3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Prints with row numbers
# and truncates columns
a_df
#
#
#
#| label: base_r_var_12p4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Prints without row numbers,
# shows data types,
# and truncates more cleanly
a_tb
#
#
#
#
#
#| label: base_r_var_13
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb <- tibble(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

filter(
  a_tb,
  group %in% c("A", "B"),
  value > 10
)
#
#
#
#
#
#| label: base_r_var_13_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb <- tibble(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

filter(
  a_tb,
  group %in% c("A", "B"),
  value > 10
)
#
#
#
#| label: base_r_var_13p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb |>
  filter(group %in% c("A", "B"), value > 10)
#
#
#
#
#| label: base_r_var_13t
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb |>
  filter(group %in% c("A", "B")) |>
  filter(value > 10)
```
#
#
#
#
#
#| label: base_r_var_13p2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

linear_tb <- tibble(
  x = 1:5,
  y = 2 * (1:5) + 1 * rnorm(1)
)

linear_tb %>%
  lm(y ~ x, data = .)

#
#
#
#| label: base_r_var_13p3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

tryCatch(
  linear_tb |> 
    lm(y ~ x, data = .),
  error = function(e) {
    cat("An error occurred:", e$message)
  }
)

#
#
#
#| label: base_r_var_13p4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#use of an anonymous function 
#to replace the placeholder
linear_tb |>
  (\(z) lm(y ~ x, data = z))() 

#
#
#
#
#
#| label: base_r_var_14
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb <- tibble(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

select(a_df, id, value)
#
#
#
#
#| label: base_r_var_14p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Exclude the group column
select(a_tb, -group)
```
#
#
#
#
#| label: base_r_var_14t
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
a_tb |>
  filter(group == "A") |>
  select(id, value)
```
#
#
#
#
#
#| label: base_r_var_14mm
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

c_tb <- tibble(
  id = 1:5,
  category = c("X", "Y", "X", "Y", "Z"),
  value_1 = c(10.2, 12.5, 9.8, 11.1, 13.0),
  value_2 = c(5.1, 6.2, 4.9, 5.5, 6.5),
  value_3 = c(2.5, 3.0, 2.8, 3.2, 3.5),
  value_4 = c(1.2, 1.5, 1.0, 1.3, 1.8)
)

c_tb |>
  mutate(
    name = paste(category, id, sep = "_"),
    sum_value = sum(value_1, value_2, value_3, value_4),
    mean_value = mean(c(value_1, value_2, value_3, value_4)),
    sd_value = sd(c(value_1, value_2, value_3, value_4))
  ) |> 
    glimpse()
#
#
#
#
#
#| label: base_r_var_14mn
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

c_tb <- tibble(
  id = 1:5,
  category = c("X", "Y", "X", "Y", "Z"),
  value_1 = c(10.2, 12.5, 9.8, 11.1, 13.0),
  value_2 = c(5.1, 6.2, 4.9, 5.5, 6.5),
  value_3 = c(2.5, 3.0, 2.8, 3.2, 3.5),
  value_4 = c(1.2, 1.5, 1.0, 1.3, 1.8)
)

c_tb |>
  group_by(category) |>
  summarise(
    mean_value = mean(c(value_1, value_2, value_3, value_4)),
    sd_value = sd(c(value_1, value_2, value_3, value_4))
  )
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: base_r_var_14n_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
wide_tb <- tibble(
  temp = 20:90,
  case_1 = temp * 2 + rnorm(1),
  case_2 = temp * 3 + rnorm(1),
  case_3 = temp * 4 + rnorm(1),
  case_4 = temp * 5 + rnorm(1)
)
wide_tb
#
#
#
#
#| label: base_r_var_14n_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
wide_tb |> 
  pivot_longer(
    cols = 2:ncol(wide_tb),
    names_to = "case",
    values_to = "value"
  )
```
#
#
#
#
#
#| label: base_r_var_14n_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
wide_tb |>
  pivot_longer(
    cols = starts_with("case_"),
    names_to = "case",
    values_to = "value"
  ) |>
  mutate(
    case = str_remove(case, "case_") |>
      as.integer()
  ) |> 
    arrange(temp, case) |> 
    head(20)
#
#
#
#
#
#| label: base_r_var_14n_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
wide_tb |>
  pivot_longer(
    cols = starts_with("case_"),
    names_to = "case",
    values_to = "value"
  ) |>
  mutate(
    case = str_remove(case, "case_") |>
      as.integer()
  ) |> 
  group_by(temp) |>
  summarise(
    mean_value = mean(value),
    sd_value = sd(value)
  )  |> 
    head(20)
#
#
#
#
#
#| label: base_r_var_14n_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
wide_tb |>
  pivot_longer(
    cols = starts_with("case_"),
    names_to = "case",
    values_to = "value"
  ) |>
  mutate(
    case = str_remove(case, "case_") |>
      as.integer()
  ) |> 
  filter(temp %in% 40:60) |>
  group_by(temp) |>
  summarise(
    mean_value = mean(value),
    sd_value = sd(value)
  )  |> 
    head(20)
#
#
#
#
#
#| label: base_r_var_14n_6
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 8

wide_tb |>
  pivot_longer(
    cols = starts_with("case_"),
    names_to = "case",
    values_to = "value"
  ) |>
  mutate(
    case = str_remove(case, "case_") |>
      as.factor()
  ) |>
  ggplot(aes(
    x = temp,
    y = value,
    color = case
  )) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", se = FALSE)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: base_r_var_15
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
a_dt <- data.table(
  id = 1:5,
  group = c("A", "A", "B", "B", "C"),
  value = c(10.2, 12.5, 9.8, 11.1, 13.0)
)

a_dt
#
#
#
#
#| label: base_r_var_15p
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
# FROM[WHERE, SELECT, GROUP BY]
# DT  [i,     j,      by]

# Select rows where group is "A"
a_dt[group == "A"]
```
#
#
#
#
#| label: base_r_var_15t
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
# Select columns by name
a_dt[, .(id, value)]
```
#
#
#
#
#| label: base_r_var_15d
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
# Select rows where group is "A" or "B", and value > 10
# Yield the corresponding id values
a_dt[
  group %in% c("A", "B") & value > 10,
  .(id)
]
```
#
#
#
#
#
#| label: base_r_var_13p5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

a_dt[group %in% c("A", "B") & value > 10,][]
```
#
#
#
#| label: base_r_var_13p6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

a_dt[
  group %in% c("A", "B")
  ][
  value > 10
]
```
#
#
#
#| label: base_r_var_13p7
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

a_dt  |> 
  _[group %in% c("A", "B")] |> 
  _[value > 10]
```
#
#
#
#
#
#| label: base_r_var_14m3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
as.data.table(c_tb)[,
  name := paste(category, id, sep = "_")
] |>
  _[,
    sum_value := sum(value_1, value_2, value_3, value_4)
  ] |>
  _[,
    mean_value := mean(c(value_1, value_2, value_3, value_4))
  ] |>
  _[,
    sd_value := sd(c(value_1, value_2, value_3, value_4))
  ] |>
  str()
```
#
#
#
#| label: base_r_var_14m2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

as.data.table(c_tb)[
  , `:=`(
    name = paste(category, id, sep = "_"),
    sum_value = sum(value_1, value_2, value_3, value_4),
    mean_value = mean(c(value_1, value_2, value_3, value_4)),
    sd_value = sd(c(value_1, value_2, value_3, value_4))
  )
] |> 
  str()
```
#
#
#
#
#
#| label: base_r_var_16
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
as.data.table(c_tb)[,
  .(
    mean_value = mean(c(value_1, value_2, value_3, value_4)),
    sd_value = sd(c(value_1, value_2, value_3, value_4))
  ),
  by = category
]
#
#
#
#
#| label: base_r_var_16_0
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
#| code-line-numbers: "1-8|2|3-6|7|1-8"
as.data.table(c_tb)[
  category != "X", # Filter
  .(               # Calculate summary statistics
    mean_value = mean(c(value_1, value_2, value_3, value_4)),
    sd_value = sd(c(value_1, value_2, value_3, value_4))
  ),
  by = category    # Group
]
#
#
#
#
#
#
#| label: base_r_var_16_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

wide_dt <- as.data.table(wide_tb)
head(wide_dt, 3)
```
#
#
#| label: base_r_var_16_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# All columns except id are melted
wide_dt |> 
  melt(
    id.vars = "temp",
    variable.name = "case",
    value.name = "value"
  )
```
#
#
#
#
#| label: base_r_var_16_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# Explicit selection by index
wide_dt |> 
  melt(
    id.vars = "temp",
    measure.vars = 2:ncol(wide_dt),
    variable.name = "case",
    value.name = "value"
  )
```
#
#
#
#
#| label: base_r_var_16_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# Explicit selection by pattern
wide_dt |> 
  melt(
    id.vars = "temp",
    measure.vars = patterns("^case_"),
    variable.name = "case",
    value.name = "value"
  )
```
#
#
#
#
#
#| label: base_r_var_16_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
wide_dt |>
  melt(
    id.vars = "temp",
    measure.vars = patterns("^case_"),
    variable.name = "case",
    value.name = "value"
  ) |>
  _[,
    case := (\(x) as.integer(gsub("case_", "", x)))(case)
  ] |>
  _[order(temp, case)] |>
  head(20)
#
#
#
#
#
#| label: base_r_var_16_6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
wide_dt |>
  melt(
    id.vars = "temp",
    measure.vars = patterns("^case_"),
    variable.name = "case",
    value.name = "value"
  ) |>
  _[,
    case := (\(x) as.integer(gsub("case_", "", x)))(case)
  ] |>
  _[,
    .(mean_value = mean(value), sd_value = sd(value)),
    by = temp
  ] |>
  head(20)
#
#
#
#
#
#| label: base_r_var_16_7
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040
wide_dt |>
  melt(
    id.vars = "temp",
    measure.vars = patterns("^case_"),
    variable.name = "case",
    value.name = "value"
  ) |>
  _[,
    case := (\(x) as.integer(gsub("case_", "", x)))(case)
  ] |>
  _[temp %in% 40:60,
    .(mean_value = mean(value), sd_value = sd(value)),
    by = temp
  ] |>
  head(20)
#
#
#
#
#
#| label: base_r_var_14n_8
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns6040
#| fig-height: 8

wide_dt |>
  melt(
    id.vars = "temp",
    measure.vars = patterns("^case_"),
    variable.name = "case",
    value.name = "value"
  ) |>
  _[,
    case := (\(x) as.factor(gsub("case_", "", x)))(case)
  ] |>
  ggplot(aes(
    x = temp,
    y = value,
    color = case
  )) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", se = FALSE)
#
#
#
#
#
#
#
#
#
#| label: pit_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# R is 1-indexed
# The first element is at position 1
R_vector <- c("a", "b", "c")

R_vector[1]
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: pit_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# list of uneven numbers <= 100
b_list <- as.list(
  which(1:100 %% 2 == 1, 1:100)
)
#
#
#
#
#| label: pit_2_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Returns a list
b_list[1:3]
```
#
#
#
#
#| label: pit_2_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# Returns an element
b_list[[3]]
```
#
#
#
#
#
#| label: pit_3_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
vec_1 <- c(1, 2, NA, 4, 5)

vec_1 == NA
#
#
#
#
#| label: pit_3_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

# NA == NA returns NA 
# because NA is a missing value, 
# not a comparable one
NA == NA
```
#
#
#
#
#| label: pit_3_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
is.na(vec_1)
```
#
#
#
#
#| label: pit_3_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
any(is.na(vec_1))
```
#
#
#
#
#
#| label: pit_4_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mixed_vector <- c(1, "b", TRUE)

mixed_vector
#
#
#
#| label: pit_4_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mixed_vector <- c(1, "b", TRUE)

class(mixed_vector)
#
#
#
#
#
#| label: pit_5_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mixed_vector <- c(1, "b", TRUE)

mixed_subset <- mixed_vector[1:2]

mixed_subset[1] <- "a"

mixed_subset
#
#
#
#
#| label: pit_5_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
mixed_vector # Unchanged
```
#
#
#
#
#
#| label: pit_6_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
1:10 + c(10, 20)
#
#
#
#| label: pit_6_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
# A warning is issued
# only if the lengths are not multiples
# of each other
1:5 + c(10, 20)
#
#
#
#
#
#| label: pit_7_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
#| 
list_NA_NULL <- list(
  "missing" = NA,
  "null_value" = NULL
)

list_NA_NULL["length_missing"] <- length(list_NA_NULL[[1]])
list_NA_NULL["length_null"] <- length(list_NA_NULL[[2]])
list_NA_NULL[5] <- length(list_NA_NULL[2])
list_NA_NULL["na_check"] <- is.na(list_NA_NULL["missing"])
list_NA_NULL["null_check"] <- is.null(list_NA_NULL[["null_value"]])
list_NA_NULL["null_check_2"] <- is.null(list_NA_NULL["null_value"])

# length_null = 0 because NULL has no length
# [5] = 1 because list_NA_NULL[2] is a list of length 1, not NULL itself 

# null_check = TRUE because the element inside is NULL
# null_check_2 = FALSE because it is a list of length 1 != NULL 

str(list_NA_NULL)
#
#
#
#
#
#| label: pit_8_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
factor_vec <- factor(c("A", "B", "C"))

levels(factor_vec) <- c("A", "B", "C", "D")

factor_vec
#
#
#
#
#| label: pit_8_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
# Data to add
data_to_add <- c("D", "E")

# Add new levels to factor_vec and generate new levels for the new data
factor_vec <- c(
  factor_vec,
  factor(
    data_to_add,
    levels = unique(c(levels(factor_vec), data_to_add))
  )
)

factor_vec
```
#
#
#
#
#
#| label: pit_9_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
un_even_tb <- tibble(
  id = c(1, 2, 3, 4, 5),
  even = c(2, 4, 6, 8, 10),
  uneven = c(1, 3, 5, 7, 9)
)

# $ indexing
a_tb$id
#
#
#
#
#| label: pit_9_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
# [[]] indexing
a_tb[["id"]]
```
#
#
#
#
#| label: pit_9_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
#| cache: false
# Extract seconds from current date
# Check if even or uneven and Subset corresponding column
seconds <- ifelse(
  as.numeric(format(Sys.time(), "%S")) %% 2 == 0,
  "even",
  "uneven"
)

cat('The current time is:', format(Sys.time(), "%H:%M:%S"))
```
#
#
#
#
#| label: pit_9_4_0
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
#| cache: false

try({a_tb$seconds}, silent = FALSE) 
```
#
#
#
#
#| label: pit_9_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns7030
#| cache: false

un_even_tb[[seconds]]
```
#
#
#
#
#
#| label: pit_10_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
un_even_tb <- tibble(
  id = c(1, 2, 3, 4, 5),
  even = c(2, 4, 6, 8, 10),
  uneven = c(1, 3, 5, 7, 9)
)

un_even_tb[, c("id", seconds)]
#
#
#
#| label: pit_10_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

un_even_tb[[seconds]]
#
#
#
#
#| label: pit_10_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
un_even_tb[, seconds, drop = FALSE]
```
#
#
#
#
#
#
#
#
#
#| label: base_r_fun_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

add_and_square <- function(a, b) {
  sum <- a + b
  result <- sum^2
  return(result)
}

add_and_square(a = 2, b = 3)
#
#
#
#
#
#| label: base_r_fun_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

add_and_square <- function(a, b) {
  sum <- a + b
  result <- sum^2
  result
}

add_and_square(2, 3)
#
#
#
#
#
#| label: base_r_fun_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

add_and_square <- function(a, b) {
  sum <- a + b
  sum^2

}

add_and_square(2, 3)
#
#
#
#
#
#| label: base_r_fun_4_0
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

square <- function(a) {
  a^2
}

square(3)
```
#
#
#| label: base_r_fun_4_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

# shorter syntax for anonymous function
(\(a) a^2)(3)
```
#
#
#
#
#
#| label: base_r_fun_4_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# Ensure x is an integer by rounding
# then check if it is divisible by 4
integer_divisible_by_4 <- function(x) {
  x <- as.integer(round(x, 0))
  x %% 4 == 0
}

# Test on a vector of numbers
integer_divisible_by_4(c(1.1, 2.5, 3.9, 4.0, 5.2, 8.3))
#
#
#
#| label: base_r_fun_5_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# make a table of the mpg dataset,
# add a new column that checks if cty is divisible by 4,
# then subset the model and cty columns 
# for rows where cty is divisible by 4
mpg |>
  mutate(cty_div_by_4 = integer_divisible_by_4(cty)) |>
  filter(cty_div_by_4) |>
  select(manufacturer, model, cty) |>
  head(10)

#
#
#
#
#
#| label: base_r_fun_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# Ensure x is an integer by rounding
# then check if it is divisible by 4
integer_divisible_by_4 <- function(x) {
  x <- as.integer(round(x, 0))
  x %% 4 == 0
}

# Test on a vector of numbers
integer_divisible_by_4(c(1.1, 2.5, 3.9, 4.0, 5.2, 8.3))


#
#
#
#| label: base_r_fun_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# make a table of the mpg dataset,
# add a new column that checks if cty is divisible by 4,
# then subset the model and cty columns 
# for rows where cty is divisible by 4
data.table(mpg) |> 
  _[, cty_div_by_4 := integer_divisible_by_4(cty)] |> 
  _[cty_div_by_4 == TRUE, .(manufacturer, model, cty)] |>
  head(10)
#
#
#
#
#
#| label: base_r_fun_4_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# Ensure x is an integer by rounding
# then check if it is divisible by 4
integer_divisible_by_4 <- function(x) {
  x <- as.integer(round(x, 0))
  x %% 4 == 0
}

# Test on a vector of numbers
integer_divisible_by_4(c(1.1, 2.5, 3.9, 4.0, 5.2, 8.3))
#
#
#
#| label: base_r_fun_5_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns6040

# Here the function was not necessary
# For reference, a more concise approach
data.table(mpg)[
  round(cty)%%4 == 0, .(manufacturer, model, cty)
  ] |> 
  head(10)

#
#
#
#
#
#| label: base_r_fun_6
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns8020
plot_iris <- function(var1, var2) {

  labeller <- function(variable) {
    gsub("\\.", " ", variable)
  }

  ggplot(data = iris, 
  aes(x = .data[[var1]], y = .data[[var2]], color = .data[[var2]])) +
    geom_point(size = 3, show.legend = FALSE) +
    labs(title = paste(
        "Scatter plot of", var1,
        "vs", var2),
      x = labeller(var1),
      y = labeller(var2)
    ) +
      scale_color_viridis_c() +
      theme_minimal() +
      theme(
        plot.title = element_text(size = 28, face = "bold"),
        axis.title = element_text(size = 24, face = "bold")
      )
}
#
#
#
#
#
#| label: base_r_fun_7
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns4060
#| fig-height: 10


patchwork::wrap_plots(
  plot_iris(
    "Sepal.Length",
     "Petal.Length"
     ),
  plot_iris(
    "Sepal.Length", 
    "Petal.Width"
    )
) +
  patchwork::plot_layout(ncol = 1)
#
#
#
#
#
#
#
#
#
#| label: ggplot_aes_0
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050

head(iris)
#
#
#
#
#| label: ggplot_aes_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris
)
#
#
#
#
#
#
#| label: ggplot_aes_2_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-8|3-7|4-5|6|1-8"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
)
#
#
#
#
#| label: ggplot_aes_2_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "6"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    shape = Species
  )
)
#
#
#
#
#
#
#
#| label: ggplot_aes_3_1
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    size = 3
  )
#
#
#
#
#
#| label: ggplot_aes_3_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    size = 3
  ) +
  geom_line(
    linewidth = 0.75
  )
#
#
#
#
#
#| label: ggplot_aes_3_3
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-17|11|15-16"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species)
  ) +
  geom_line(
    linewidth = 0.75,
    inherit.aes = FALSE,
    aes(x = Sepal.Length, y = Petal.Length)
  )
```
#
#
#
#| label: ggplot_aes_3_4
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-18|17"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species)
  ) +
  geom_line(
    linewidth = 0.75,
    inherit.aes = FALSE,
    aes(x = Sepal.Length, y = Petal.Length,
    group = Species)
  )
#
#
#
#
#
#| label: ggplot_aes_3_5
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-18|17"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_line(
    linewidth = 0.75
  )
```
#
#
#
#| label: ggplot_aes_3_6
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-19|13-18"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  )
#
#
#
#
#
#| label: ggplot_aes_3_6b
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-28|20-25|12"
tibble(
  x = rep(1:100, 3),
  var = c(rep(0.025, 100), rep(0.05, 100), rep(0.01, 100)),
  y = exp(-var * x) + var * rnorm(300),
  Species = rep(c("setosa", "versicolor", "virginica"), 
  each = 100)
) |>
  ggplot(
    aes(
      x = x,
      y = y,
      group = Species
    )
  ) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    method = "nls",
    formula = y ~ exp(-a * x) + b,
    method.args = list(
      start = c(a = 0.01, b = 0.01),
      control = nls.control(warnOnly = TRUE)
    ),
    se = FALSE,
    linewidth = 0.75
  )
#
#
#
#
#
#| label: ggplot_aes_3_6c
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "20"
tibble(
  x = rep(1:100, 3),
  var = c(rep(0.025, 100), rep(0.05, 100), rep(0.01, 100)),
  y = exp(-var * x) + var * rnorm(300),
  Species = rep(c("setosa", "versicolor", "virginica"), 
  each = 100)
) |>
  ggplot(
    aes(
      x = x,
      y = y,
      group = Species
    )
  ) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    aes(color = Species),
    method = "nls",
    formula = y ~ exp(-a * x) + b,
    method.args = list(
      start = c(a = 0.01, b = 0.01),
      control = nls.control(warnOnly = TRUE)
    ),
    se = FALSE,
    linewidth = 0.75
  )
#
#
#
#
#
#| label: ggplot_aes_3_7z
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  )
#
#
#
#
#
#| label: ggplot_aes_3_7
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-19"

ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75,
    color = "coral",
    linetype = "dashed"
  )
#
#
#
#
#
#| label: ggplot_aes_3_8
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "16"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = TRUE,
    linewidth = 0.75,
    color = "coral",
    linetype = "dashed"
  )
#
#
#
#
#
#| label: ggplot_aes_3_9
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "14-15"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  geom_smooth(
    data = iris |>
      filter(Species != "setosa"),
    method = "lm",
    formula = y ~ x,
    se = TRUE,
    linewidth = 0.75,
    color = "coral",
    linetype = "dashed"
  )
#
#
#
#
#
#| label: ggplot_aes_3_9b
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "8"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    group = Species
  )
) +
  geom_bar()
#
#
#
#
#
#| label: ggplot_aes_3_9c
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "9"
ggplot(
  data = iris,
  aes(
    x = Species,
    y = Sepal.Length,
    color = Species
  )
) +
  geom_boxplot()
#
#
#
#
#
#| label: ggplot_aes_3_9d
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "9"
ggplot(
  data = iris,
  aes(
    x = Species,
    y = Sepal.Length,
    color = Species
  )
) +
  geom_violin()
#
#
#
#
#
#| label: ggplot_aes_3_9e
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "10"
ggplot(
  data = iris,
  aes(
    x = Species,
    y = Sepal.Length,
    color = Species
  )
) +
  geom_violin() +
  geom_jitter()
#
#
#
#
#
#| label: ggplot_aes_3_9f
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "15-19,2-7"
ggplot(
  data = iris |> 
    group_by(Species) |>
    summarise(
      mean = mean(Sepal.Length),
      sd = sd(Sepal.Length)
    ),
  aes(
    x = Species,
    y = mean,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_errorbar(
    aes(ymin = mean - sd, ymax = mean + sd),
    width = 0.2,
    linewidth = 1
  )
#
#
#
#
#
#
#
#
#
#
#
#| label: ggplot_aes_3_10a
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_10b
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  scale_x_continuous(
    limits = c(4, 6)
  ) +
  scale_y_continuous(
    limits = c(0, 2)
  )
#
#
#
#
#
#| label: ggplot_aes_3_10c
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "15"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  scale_x_continuous(
    limits = c(4, 6),
    expand = c(0, 0)
  ) +
  scale_y_continuous(
    limits = c(0, 2)
  )
#
#
#
#
#
#| label: ggplot_aes_3_10d
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "14,17"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  scale_x_continuous(
    limits = c(4, NA),
  ) +
  scale_y_continuous(
    limits = c(NA, 2)
  )
#
#
#
#
#
#| label: ggplot_aes_3_10e
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "14,17"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  scale_x_continuous(
    name = "Sepal Length",
  ) +
  scale_y_continuous(
    name = "Petal Length"
  )
#
#
#
#
#
#| label: ggplot_aes_3_10f
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "14,15|16|17-19"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    group = Species
  )
) +
  geom_point(
    size = 2,
    aes(shape = Species, color = Species)
  ) +
  labs(
    x = "Sepal Length",
    y = "Petal Length",
    legend = "Legend",
    title = "Scatter plot of Sepal Length vs Petal Length",
    subtitle = "Data from the iris dataset",
    caption = "Source: R's built-in iris dataset"
  )
#
#
#
#
#
#| label: ggplot_aes_3_11a
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "6,11,12,16"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_11b
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "22-25,12"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 0.25)
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_11c
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "11,22-24"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_shape_manual(
    values = c(15, 16, 17)
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 1)
  ) 
#
#
#
#
#
#
#
#
#
#| label: ggplot_aes_3_11d
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "16,22-24"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_linetype_manual(
    values = c("dashed", "dotted", "solid")
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 1)
  )  +
  scale_shape_manual(
    values = c(15, 16, 17)
  ) 
#
#
#
#
#
#
#
#
#
#| label: ggplot_aes_3_11e
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "23"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_linetype_manual(
    name = "species",
    values = c("dashed", "dotted", "solid")
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 1)
  )  +
  scale_shape_manual(
    values = c(15, 16, 17)
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_11f
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "22-27"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  guides(
    linetype = guide_legend(title = "species"),
    colour = guide_legend(title = "species"),
    shape = guide_legend(title = "species"),
    size = guide_legend(title = "petal width")
  ) +
  scale_linetype_manual(
    values = c("dashed", "dotted", "solid")
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 1)
  )  +
  scale_shape_manual(
    values = c(15, 16, 17)
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_11f2
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "22-27"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  guides(
    linetype = guide_legend(order = 4),
    colour = guide_legend(order = 1),
    shape = guide_legend(order = 3),
    size = guide_legend(order = 2)
  ) +
  scale_linetype_manual(
    values = c("dashed", "dotted", "solid")
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 1)
  )  +
  scale_shape_manual(
    values = c(15, 16, 17)
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_11g
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "23-25|15,21"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(
    aes(
      shape = Species,
      size = Petal.Width
    )
  ) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75,
    show.legend = FALSE
  ) +
  guides(
    size = "none"
  ) +
  scale_linetype_manual(
    values = c("dashed", "dotted", "solid")
  ) +
  scale_size_continuous(
    range = c(1, 5),
    breaks = seq(0.5, 2.5, by = 1)
  )  +
  scale_shape_manual(
    values = c(15, 16, 17)
  ) 

#
#
#
#
#
#
#
#| label: ggplot_aes_3_12a
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  labs(
    title = paste(
      "The class of Species is",
      class(iris$Species)
    )
  )
#
#
#
#
#
#| label: ggplot_aes_3_12b
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-23"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_color_manual(
    values = c(
      "coral", 
      "steelblue", 
      "seagreen"
      )
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_12c
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-23"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_color_manual(
    values = c(
      "#ff7f0e", 
      "#1f77b4",
      "#2ca02c"
      )
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_12c2
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-23"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_color_manual(
    values = c(
      "versicolor" = "#ff7f0e",
      "setosa" = "#1f77b4",
      "virginica" = "#2ca02c"
    )
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_12c3
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "1-5|23-25"
color_scale <- c(
  "versicolor" = "#ff7f0e",
  "setosa" = "#1f77b4",
  "virginica" = "#2ca02c"
)

ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_color_manual(
    values = color_scale
  ) 
#
#
#
#
#
#| label: ggplot_aes_3_12d
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-19"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_color_viridis_d(
    option = "D"
  )
#
#
#
#
#
#| label: ggplot_aes_3_12e
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-19"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Species
  )
) +
  geom_point(size = 3) +
  geom_smooth(
    aes(linetype = Species),
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_color_viridis_d(
    option = "E"
  )
#
#
#
#
#
#| label: ggplot_aes_3_12f
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "17-19"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(size = 3) 
#
#
#
#
#
#| label: ggplot_aes_3_12f2
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "10-14"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(size = 3) +
  scale_color_gradient(
    name = 'Tequila sunrise',
    low = "coral",
    high = "palegoldenrod"
  )
#
#
#
#
#
#| label: ggplot_aes_3_12g
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "10-14"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(size = 3) +
  scale_color_gradientn(
    name = 'Irish flag',
    colors = c("forestgreen", "white", "orange")
  )
#
#
#
#
#
#| label: ggplot_aes_3_12h
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "10-12"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(size = 3) +
  scale_color_viridis_c(
    option = "C"
  )
#
#
#
#
#
#| label: ggplot_aes_3_12i
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "12"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(size = 3) +
  scale_color_viridis_c(
    option = "G",
    breaks = seq(0, 8, by = 2)
  )
#
#
#
#
#
#| label: ggplot_aes_3_13a
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "11"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(
    size = 3,
    shape = 21
  )
#
#
#
#
#
#| label: ggplot_aes_3_13b
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "6,12,13"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    color = Petal.Length
  )
) +
  geom_point(
    size = 3,
    shape = 21,
    color = 'black',
    stroke = 1
  )
#
#
#
#
#
#| label: ggplot_aes_3_13c
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "6,9-11"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    fill = Petal.Length
  )
) +
  scale_fill_viridis_c(
    option = "A",
  ) +
  geom_point(
    size = 3,
    shape = 21,
    color = 'black',
    stroke = 1
  )
#
#
#
#
#
#| label: ggplot_aes_3_13d
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "6,22|7,23-30"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    fill = Petal.Width,
    color = Species
  )
) +
  geom_point(
    size = 3,
    shape = 21,
    color = 'black',
    stroke = 1
  ) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_fill_viridis_c() +
  scale_color_manual(
    values = c(
      "versicolor" = "#ff7f0e",
      "setosa" = "#1f77b4",
      "virginica" = "#2ca02c"
    )
  ) +
  labs(
    x = "Sepal Length",
    y = "Petal Length"
  )
#
#
#
#
#
#| label: ggplot_aes_3_13e1
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "10-21"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    fill = Petal.Width,
    color = Species
  )
) +
  geom_point(
    size = 3,
    shape = 21,
    color = 'black',
    stroke = 1
  ) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  scale_fill_viridis_c() +
  scale_color_manual(
    values = c(
      "versicolor" = "#ff7f0e",
      "setosa" = "#1f77b4",
      "virginica" = "#2ca02c"
    )
  ) +
  labs(
    x = "Sepal Length",
    y = "Petal Length"
  )
#
#
#
#
#
#| label: ggplot_aes_3_13e2
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6
#| code-line-numbers: "10-21"
ggplot(
  data = iris,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    fill = Petal.Width,
    color = Species
  )
) +
  geom_smooth(
    method = "lm",
    formula = y ~ x,
    se = FALSE,
    linewidth = 0.75
  ) +
  geom_point(
    size = 3,
    shape = 21,
    color = 'black',
    stroke = 1
  ) +
  scale_fill_viridis_c() +
  scale_color_manual(
    values = c(
      "versicolor" = "#ff7f0e",
      "setosa" = "#1f77b4",
      "virginica" = "#2ca02c"
    )
  ) +
  labs(
    x = "Sepal Length",
    y = "Petal Length"
  )
#
#
#
#
#
#
#
#| label: ggplot_aes_3_14
#| echo: true
#| eval: true
#| warning: false
#| message: false
#| output-location: column
#| classes: columns5050
#| fig-height: 6
#| fig-width: 6

ggplot(
  data = mpg,
  aes(
    x = displ,
    y = hwy
  )
) +
  geom_point()
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: bar plot data
#| warning: false

custom.theme <- function(scale = 1){
  theme_minimal() +
    theme(
      panel.grid = element_blank(),
      axis.line = element_line(linewidth = 0.5*scale),
      axis.ticks = element_line(linewidth = 0.5*scale),
      axis.text = element_text(size = 10*scale),
      axis.title.x = element_markdown(size = 16*scale),
      axis.title.y = element_markdown(size = 16*scale),
      legend.title = element_markdown(size = 14*scale, face = 'bold'),
      # legend.text = element_markdown(size = 12*scale),
      strip.text = element_markdown(size = 12, face = 'bold'),
      title = element_markdown(face = 'bold', size = 18 * scale),
      plot.tag = element_text(face = 'bold', size = 18 * scale),
      plot.background = element_rect(color = NA, linewidth = NULL),
      plot.title = element_markdown(face = 'bold', size = 18 * scale),
      plot.caption = element_markdown(face = 'plain', size = 16 * scale)
    )
}

df.webmd <- fread('data/webmd.csv') %>% 
  mutate(
    EaseofUse = as.numeric(EaseofUse),
    gender = if_else(Sex == '', "NA", Sex)
  ) %>% 
  filter(EaseofUse <= 5) 

df.webmd %>% 
  select(-Reviews, -Sides, -Sex) %>%
  rename("Gender" = 'gender') %>% 
  sample_n(6) %>% 
  gt() %>% 
  opt_stylize(style = 6, color = 'pink') %>% 
  tab_options(column_labels.background.color = "pink")

#
#
#
#
#
#
#
#| label: bar plot ex
(
  df.webmd %>% 
  group_by(EaseofUse) %>% 
  summarise(n = n()) %>% 
  ggplot(aes(x = EaseofUse, y = n)) +
  geom_col() +
  labs(
    x = 'Ease of Use'
  ) +
  custom.theme(1.5)
  ) +
  (
      df.webmd %>% 
  group_by(EaseofUse) %>% 
  summarise(n = n()) %>% 
  ggplot(aes(x = EaseofUse, y = n)) +
  geom_point(size = 2) +
  labs(
    x = 'Ease of Use'
  ) +
  custom.theme(1.5)
  )

#
#
#
#
#
#
#
#
#
#
#
#| label: pies

pie.values <- df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>% 
  ungroup()

pieR <- function(gp = 1, data = pie.values){
  data %>% 
    filter(EaseofUse == gp) %>% 
    ggplot(., aes(x = "", y = n, fill = gender)) +
    geom_bar(stat = "identity", width = 1) +
    coord_polar("y", start = 0) +
    custom.theme() +
    theme(axis.text = element_blank(),
          axis.line = element_blank(),
          axis.title.x = element_blank(),
          axis.title.y = element_blank(),
          legend.position = 'none'
    ) +
    scale_fill_manual(values = c('pink',"steelblue", 'grey')) +
    geom_text(aes(label = gender), position = position_stack(vjust = 0.5)) +
    labs(subtitle = paste0('Ease of use = ', gp)) +
    theme(plot.subtitle = element_text(size = 14))
}


patchwork::wrap_plots(lapply(1:5, pieR)) +
  plot_layout(nrow = 2)
#
#
#
#
#
#
#
#
#
#
#
#| label: clusterd and stacked
(
  df.webmd %>% 
    group_by(EaseofUse, gender) %>% 
    summarise(n = n()) %>% 
    ggplot(aes(x = EaseofUse, y = n, fill = gender)) +
    geom_col() +
    labs(title = 'Stacked')
) + (
  df.webmd %>% 
    group_by(EaseofUse, gender) %>% 
    summarise(n = n()) %>% 
    ggplot(aes(x = EaseofUse, y = n, fill = gender)) +
    geom_col(position = position_dodge()) +
    labs(title = 'Clustered')
) +
  plot_layout(guides = 'collect') &
  labs(x = 'Ease of Use',
       y = 'n') &
  custom.theme(1.3)
#
#
#
#
#
#
#
#
#
#
#
#| label: normalized bars
(
  df.webmd %>% 
    group_by(EaseofUse, gender) %>% 
    summarise(n = n()) %>%
    group_by(EaseofUse) %>% 
    mutate(prop = n/sum(n)*100) %>% 
    ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
    geom_col() +
    labs(title = 'Stacked',
         y = '% Answer')
) + (
  df.webmd %>% 
    group_by(EaseofUse, gender) %>% 
    summarise(n = n()) %>% 
    group_by(EaseofUse) %>% 
    mutate(max.n = max(n)) %>% 
    mutate(prop = n/max.n) %>% 
    ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
    geom_col(position = position_dodge()) +
    labs(title = 'Clustered',
         y = 'Relative answer')
) +
  plot_layout(guides = 'collect') &
  custom.theme(1.3) &
  labs(x = 'Ease of Use')
#
#
#
#
#
#
#
#| label: propo
(
  df.webmd %>% 
    group_by(EaseofUse, gender) %>% 
    summarise(n = n()) %>%
    group_by(gender) %>% 
    mutate(prop = n/sum(n)*100) %>%  
    ggplot(aes(x = gender, y = prop, fill = factor(EaseofUse))) +
    geom_col() +
    labs(title = 'Stacked',
         y = '% Answer')
) + (
  df.webmd %>% 
    group_by(EaseofUse, gender) %>% 
    summarise(n = n()) %>%
    group_by(gender) %>% 
    mutate(max.n = max(n)) %>% 
    mutate(prop = n/max.n) %>% 
    ggplot(aes(x = gender, y = prop, fill = factor(EaseofUse))) +
    geom_col(position = position_dodge()) +
    labs(title = 'Clustered',
         y = 'Relative answer')
) +
  plot_layout(guides = 'collect') &
  custom.theme(1.3) &
  labs(x = 'Gender') &
  scale_fill_discrete('Ease of use')
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: antibe table
df.antibes <- fread('data/antibes-eau-temperature-est-cap.csv') %>% 
  pivot_longer(
    cols = 4:7,
    values_to = 'temp',
    names_to = 'year'
  ) %>% 
  mutate(year = as.factor(as.numeric(gsub('ANNEE ', '', year)))) %>% 
  filter(!is.na(temp)) %>% 
  mutate(
    day = gsub('-', '', substr(JOUR, 1, 2)),
    month = case_when(
      grepl('janv', JOUR) ~ 1,
      grepl('fev', JOUR) ~ 2,
      grepl('mars', JOUR) ~ 3,
      grepl('avr', JOUR) ~ 4,
      grepl('mai', JOUR) ~ 5,
      grepl('juin', JOUR) ~ 6,
      grepl('juil', JOUR) ~ 7,
      grepl('août', JOUR) ~ 8,
      grepl('sept', JOUR) ~ 9,
      grepl('oct', JOUR) ~ 10,
      grepl('nov', JOUR) ~ 11,
      grepl('dec', JOUR) ~ 12,
      TRUE~NA
    ),
    date = as.Date(paste0(year, '/', month, '/', day))
  )

df.antibes %>% 
  sample_n(6) %>% 
  select(date, temp) %>%
  magrittr::set_colnames(c('Date', 'Temperature (°C)')) %>% 
  gt() %>% 
  opt_stylize(style = 6, color = 'pink') %>% 
  tab_options(column_labels.background.color = "pink")
#
#
#
#
#
#
#
#| label: geom_col
df.antibes %>% 
  group_by(year) %>% 
  summarise(
    sd = sd(temp),
    temp = mean(temp)
  ) %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_col() +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: errorbars
df.antibes %>% 
  group_by(year) %>% 
  summarise(
    sd = sd(temp),
    temp = mean(temp)
  ) %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_col() +
  geom_errorbar(
    aes(ymin = (temp - sd), ymax = (temp + sd)),
    width = 0.2,
    linewidth = 1
  ) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: misled
df.antibes %>% 
  group_by(year) %>% 
  summarise(
    sd = sd(temp),
    temp = mean(temp)
  ) %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_point(size = 3) +
  geom_errorbar(
    aes(ymin = (temp - sd), ymax = (temp + sd)),
    width = 0.2,
    linewidth = 1
  ) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(0, 30))
#
#
#
#
#
#
#
#| label: rnormy


rnormy <- function(n,mean,sd) { 
  mean + sd * scale(rnorm(n)) 
}

df.norm <- data.frame(
  a = rnormy(100,20,3),
  b = rnormy(1000,20,3),
  c = rnormy(10,20,3),
  d = rnormy(500,20,3),
  e = rnormy(250,20,3)
) %>% 
  pivot_longer(
    cols = 1:5,
    names_to = 'Year',
    values_to = 'Values'
  ) 

(
  df.norm %>% 
    ggplot(aes(x = Year, y = Values)) +
    geom_jitter(alpha = 0.05) +
    custom.theme(1) +
    labs(y = 'Water T (°C)')
) + (
  df.norm %>% 
    group_by(Year) %>% 
    summarise(
      Mean = mean(Values),
      sd = sd(Values)
    ) %>% 
    ggplot(aes(x = Year, y = Mean)) +
    geom_point() +
    geom_errorbar(aes(ymin = Mean - sd, ymax = Mean + sd),
                  width = 0.1) +
    custom.theme(1) +
    labs(y = 'Mean Water T (°C)')
) &
  scale_y_continuous(limits = c(0,30)) 
#
#
#
#
#
#
#
#| label: boxyboxes
df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_boxplot(linewidth = 1) +
  # geom_jitter(width = 0.25, alpha = 0.25) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: box and points

df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_boxplot(linewidth = 1) +
  geom_point(alpha = 0.1, size = 3) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: jittery

df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_boxplot(linewidth = 1) +
  geom_jitter(width = 0.25, size = 3) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: transparentjitter
df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_boxplot(linewidth = 1) +
  geom_jitter(width = 0.25, alpha = 0.1, size = 3) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: jitteredviolins

df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_violin(linewidth = 1) +
  geom_jitter(width = 0.1, alpha = 0.1, size = 3) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#| label: violin and box
df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_violin(linewidth = 1) +
  geom_boxplot(width = 0.1, fill = 'grey', outlier.size = 0, linewidth = 0.75) +
  geom_jitter(width = 0.1, alpha = 0.1, size = 3) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(NA, 30))
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: scatterplot
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point() +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5)

#
#
#
#
#
#
#
#| label: plot and lines
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(size = 1.5) +
  geom_line(linewidth = 1) +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5)

#
#
#
#
#
#
#
#| label: smoothed
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(size = 1.5) +
  geom_smooth(method = 'gam') +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5)

#
#
#
#
#
#
#
#
#
#
#| label: penguin dataset
penguins %>% 
  sample_n(6) %>% 
  gt() %>% 
  opt_stylize(style = 6, color = 'pink') %>% 
  tab_options(column_labels.background.color = "pink")
```
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: distripenguins

(
  penguins %>%
  remove_missing() %>%
  group_by(species, sex) %>%
  summarise(mean_bmg = mean(body_mass_g),
            sd_bmg = sd(body_mass_g)) %>% 
  ggplot(aes(x = species, y = mean_bmg,
             fill = sex)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_errorbar(aes(ymin = mean_bmg - sd_bmg, 
                    ymax = mean_bmg + sd_bmg), 
                width = 0.2,
                position = position_dodge(0.9)) +
  labs(x = "Species", 
       y = "Mean body mass (in g)",
       title = "Barchart") +
  scale_fill_manual(values = rev(c("#999999", "#CC79A7"))) +
  custom.theme(0.9)
) + (
  penguins %>%
  remove_missing() %>%
  ggplot(aes(x = species, y = body_mass_g,
             fill = sex, color = sex)) +
  geom_boxplot(alpha = 0.5, notch = TRUE,
               linewidth = 0.75) +
  geom_jitter(alpha = 0.5, position = position_jitter(0.3), size = 1) +
  labs(x = "Species", 
       y = "Body mass (in g)",
       title = "Boxplot with notch and points")  +
  scale_fill_manual(values = rev(c("#999999", "#CC79A7"))) +
  scale_color_manual(values = rev(c("#999999", "#CC79A7"))) +
  custom.theme(0.9)
) + (
  penguins %>%
  remove_missing() %>%
  ggplot(aes(x = species, y = body_mass_g,
             fill = sex)) +
  geom_violin(scale = "area", linewidth = 0.75) +
  labs(x = "Species", 
       y = "Body mass (in g)",
       title = "Violinplot") +
  scale_fill_manual(values = rev(c("#999999", "#CC79A7"))) +
  scale_color_manual(values = rev(c("#999999", "#CC79A7"))) +
  custom.theme(0.9)
) + (
  penguins %>%
  remove_missing() %>%
  ggplot(aes(x = species, y = body_mass_g,
             fill = sex, color = sex)) +
  geom_dotplot(method = "dotdensity", alpha = 0.7,
               binaxis = 'y', stackdir = 'center',
               position = position_dodge(1)) +
  labs(x = "Species", 
       y = "Body mass (in g)",
       title = "Violinplot with points (dotplot)") +
  scale_fill_manual(values = rev(c("#999999", "#CC79A7"))) +
  scale_color_manual(values = rev(c("#999999", "#CC79A7"))) +
  custom.theme(0.9)
) 
#
#
#
#
#
#
#
#| label: bubble plot
penguins %>%
  remove_missing() %>%
  ggplot(
    aes(x = bill_length_mm, y = flipper_length_mm,
        color = species, shape = species, size = body_mass_g)
  ) +
  geom_point(alpha = 0.5) +
  labs(
    x = "Bill length (mm)", 
    y = "Flipper length (mm)",
    title = "Penguins bill v. flipper length by species;\nsize indicates body mass in grams", 
    size = "body mass (g)"
  ) +
  custom.theme(1.35) +
  scale_color_manual(values = c("#E69F00", "#CC79A7", "#009E73")) +
  theme(
    plot.title = element_markdown(size = 14),
    legend.text = element_text(size = 12)
    )
#
#
#
#
#
#
#
#| label: lollipop

penguins %>%
  remove_missing() %>%
  group_by(year, species, sex) %>%
  summarise(mean_bmg = mean(body_mass_g)) %>%
  mutate(species_sex = paste(species, sex, sep = "_"),
         year = paste0("year_", year)) %>%
  spread(year, mean_bmg) %>%
  ggplot() +
  geom_segment(aes(x = reorder(species_sex, year_2009), xend = reorder(species_sex, -year_2009), 
                   y = 0, yend = year_2009),
               color = "#999999", size = 1) +
  geom_point(aes(x = reorder(species_sex, -year_2009), y = year_2009),
             size = 5, color = "#CC79A7") +
  coord_flip(clip = 'off') +
  labs(x = "Species & sex", 
       y = "Body mass (g)",
       subtitle = "Penguin's body mass in 2009") +
  custom.theme(1.4) +
  theme(plot.subtitle = element_markdown(size = 16)) +
  scale_y_continuous(expand = c(0,NA), limits = c(0,6000), breaks = c((1:5)*1000))
#
#
#
#
#
#
#
#| label: dumbbell
penguins %>%
  remove_missing() %>%
  group_by(year, species, sex) %>%
  summarise(mean_bmg = mean(body_mass_g)) %>%
  mutate(species_sex = paste(species, sex, sep = "_"),
         year = paste0("year_", year)) %>%
  spread(year, mean_bmg) %>%
  ggplot(aes(x = year_2007, xend = year_2009, 
             y = reorder(species_sex, year_2009))) +
  geom_dumbbell(
    color = "#999999", 
    size_x = 5, 
    size_xend = 5,
    size = 1.5,
    colour_x = "#999999",
    colour_xend = "#CC79A7",
    dot_guide = TRUE, dot_guide_size = 1, dot_guide_colour = "#999999"
  ) +
  labs(x = "Body mass (g)", 
       y = "Species & sex",
       subtitle = "Penguin's change in body mass from <span style='color:#999999;'>2007</span> 
       to <span style='color:#CC79A7;'>2009</span>") +
  custom.theme(1.4) + 
  theme(plot.subtitle = element_markdown(size = 16)) +
  scale_x_continuous(expand = c(0,NA), limits = c(0,6000), breaks = c((1:5)*1000))
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: single hue
#| 
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(aes(color = temp), size = 1.5) +
  geom_smooth(method = 'gam') +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5) +
  scale_color_distiller(type = 'seq', palette = 'RdPu', name = 'T (°C)')

#
#
#
#
#
#| label: multiple hues

df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(aes(color = temp), size = 1.5) +
  geom_smooth(method = 'gam') +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5) +
  scale_color_viridis_c(name = 'T (°C)')

#
#
#
#
#
#| label: div colors

df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(aes(color = temp)) +
  geom_smooth(method = 'gam') +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  scale_color_distiller(type = 'div', palette = 7, name = 'T (°C)') +
  custom.theme(1.5)

#
#
#
#
#
#| label: obv
(
  df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_point(aes(color = temp)) +
    geom_smooth(
      aes(color = ..y..),
      se = FALSE,
      method = 'gam',
      size = 1
    ) +
    labs(y = 'Water T (°C)',
         x = 'Date') +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 7, name = 'T (°C)') +
    custom.theme(1)
) + (
  df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_point(aes(color = temp)) +
    geom_smooth(method = 'gam') +
    labs(y = 'Water T (°C)',
         x = 'Date') +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 3, name = 'T (°C)') +
    custom.theme(1.25)
)
#
#
#
#
#
#
#| label: qual
#| 
df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  custom.theme(1.5)

```
#
#
#
#
#
#
#| label: qual2

df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  scale_fill_manual(values = c('pink', 'steelblue', 'grey')) +
  custom.theme(1.5)

```
#
#
#
#
#
#| label: high
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(size = 1.5) +
  geom_smooth(method = 'gam') +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5) +
  labs(subtitle = 'Water temperature variations in Antibes') +
  theme(plot.subtitle = element_markdown(size = 20))

#
#
#
#
#
#| label: high2
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(color = 'grey', alpha = 0.7, size = 1.5) +
  geom_smooth(method = 'gam', color = 'gray', se = FALSE, alpha = 0.25) +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5) +
  geom_point(
    data = . %>% 
      filter(temp > 28),
    color = '#FF4081'
  ) +
  labs(subtitle = "The water temperature in Antibes rose <span style = 'color:#FF4081;'>above 28°C</span> in 2022") +
  theme(plot.subtitle = element_markdown(size = 20))

#
#
#
#
#
#| label: high3
df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(color = 'grey', alpha = 0.7, size = 1.5) +
  geom_smooth(method = 'gam', color = 'gray', se = FALSE, alpha = 0.25) +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5) +
  geom_point(
    data = . %>% 
      filter(temp > 28),
    color = '#FF4081'
  ) +
  labs(subtitle = "The water temperature in Antibes rose <span style = 'color:#FF4081;'>above 28°C</span> in 2022") +
  theme(plot.subtitle = element_markdown(size = 20)) +
  geom_hline(color = '#FF4081', linetype = 'dashed', size = 0.75,
             aes(yintercept = 28))

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: penguins

p_penguins <- penguins %>%
  remove_missing() %>%
  ggplot(aes(x = bill_length_mm, y = flipper_length_mm,
             color = species, shape = species)) +
  geom_point(alpha = 0.7, size = 2.5, show.legend = FALSE) +
  labs(x = "Bill length (mm)", 
       y = "Flipper length (mm)",
       title = "Penguins bill v. flipper length of
       <span style = 'color:#CC79A7;'>Chinstrap</span>,
       <span style = 'color:#009E73;'>Gentoo</span> and 
       <span style = 'color:#E69F00;'>Adelie</span>
        species",
  ) +
  custom.theme(1.4) +
  scale_color_manual(values = c("#E69F00", "#CC79A7", "#009E73")) +
  theme(plot.title = element_markdown(size = 12))

p_penguins +
  inset_element(
    readPNG("resources/penguins.png", native = TRUE),
    left = 0.01,
    bottom = 0.7, 
    right = 0.3, 
    top = 0.99
  ) 

#
#
#
#
#
#| label: bad choices

p1 <- df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  custom.theme(1)

p1 + cvd_grid(p1) +
  plot_layout(
    design = "
    ABBBB
    #BBBB
    "
  )
#
#
#
#
#
#| label: bad choices 2

p2 <- df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  scale_fill_manual(values = c('pink', 'steelblue', 'grey')) +
  custom.theme(1)

p2 + cvd_grid(p2) +
  plot_layout(
    design = "
    ABBBB
    #BBBB
    "
  )
#
#
#
#
#
#| label: okabe gray

p3 <- df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  scale_fill_OkabeIto() +
  custom.theme(1)

p3 + cvd_grid(p3) +
  plot_layout(
    design = "
    ABBBB
    #BBBB
    "
  )
#
#
#
#
#
#| label: cividis gray

p4 <- df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  scale_fill_viridis_d(option = 'D') +
  custom.theme(1)

p4 + cvd_grid(p4) +
  plot_layout(
    design = "
    ABBBB
    #BBBB
    "
  )
#
#
#
#
#
#| label: viridis gray

p5 <- df.webmd %>% 
  group_by(EaseofUse, gender) %>% 
  summarise(n = n()) %>%
  group_by(EaseofUse) %>% 
  mutate(prop = n/sum(n)*100) %>% 
  ggplot(aes(x = EaseofUse, y = prop, fill = gender)) +
  geom_col() +
  labs(x = 'Ease of use',
       y = '% Answer') +
  scale_fill_viridis_d(option = 'E') +
  custom.theme(1)

p5 + cvd_grid(p5) +
  plot_layout(
    design = "
    ABBBB
    #BBBB
    "
  )
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: omitted uncertainty

(
  df.antibes %>% 
  group_by(year) %>% 
  summarise(
    mean.t = mean(temp),
    sd.t = sd(temp)
  ) %>% 
  ggplot(aes(year, mean.t)) +
  geom_point(size = 3) +
  custom.theme(1.5) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) 
 ) + (
  df.antibes %>% 
  group_by(year) %>% 
  summarise(
    mean.t = mean(temp),
    sd.t = sd(temp)
  ) %>% 
  ggplot(aes(year, mean.t)) +
  geom_point(size = 3) +
  custom.theme(1.5) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  )  +
  scale_y_continuous(limits = c(10, 30))
 )

#
#
#
#
#
#| label: error bars

df.antibes %>% 
  group_by(year) %>% 
  summarise(
    mean.t = mean(temp),
    sd.t = sd(temp)
  ) %>% 
  ggplot(aes(year, mean.t)) +
  geom_point(size = 3) +
  geom_errorbar(aes(ymin = mean.t - sd.t, ymax = mean.t + sd.t), width = 0.2) +
  custom.theme(1.5) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  )  +
  scale_y_continuous(limits = c(10, 30))

#
#
#
#
#
#| label: all data points

df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_jitter(width = 0.25, alpha = 0.25, size = 2.5) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(10, 30))

#
#
#
#
#
#| label: all data points with violin

df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_violin(linewidth = 1) +
  geom_jitter(width = 0.25, alpha = 0.25, size = 2.5) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_y_continuous(limits = c(10, 30))

#
#
#
#
#
#| label: all data points with violin colored

df.antibes %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_violin(linewidth = 1) +
  geom_jitter(
    width = 0.25, alpha = 0.5,
              aes(color = temp),
    show.legend = FALSE,
    size = 2.5
    ) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  scale_color_distiller(type = 'div', palette = 7) +
  scale_y_continuous(limits = c(10, 30))

#
#
#
#
#
#| label: fit no uncertainty
df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_smooth(
      se = FALSE,
      method = 'gam',
      size = 1
    ) +
    labs(y = 'Water T (°C)',
         x = 'Date') +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 7) +
    custom.theme(1.5)
#
#
#
#
#
#| label: not full story
df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_point(aes(color = temp),
               show.legend = FALSE,
               size = 1.5) +
    geom_smooth(
      se = FALSE,
      method = 'gam',
      size = 1
    ) +
    labs(y = 'Water T (°C)',
         x = 'Date') +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 7) +
    custom.theme(1.5)
#
#
#
#
#
#| label: uncertain ribbon
df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_point(aes(color = temp),
               show.legend = FALSE,
               size = 1.5) +
    geom_smooth(
      se = TRUE,
      method = 'gam',
      size = 1
    ) +
    labs(y = 'Water T (°C)',
         x = 'Date') +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 7) +
    custom.theme(1.5)
#
#
#
#
#
#| label: more ribbons
p_penguins +
  geom_smooth(method = 'loess',
              show.legend = FALSE,
              aes(fill = species)) +
  scale_fill_manual(values = c("#E69F00", "#CC79A7", "#009E73")) +
  inset_element(
    readPNG("resources/penguins.png", native = TRUE),
    left = 0.01,
    bottom = 0.7,
    right = 0.3,
    top = 0.99
  ) 
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: penguinsbase

p_penguins
#
#
#
#
#
#| label: facet penguins free
penguins %>%
  remove_missing() %>%
  ggplot(aes(x = bill_length_mm, y = flipper_length_mm,
             color = species, shape = species)) +
  geom_point(alpha = 0.7, size = 2, show.legend = FALSE) +
  labs(x = "Bill length (mm)", 
       y = "Flipper length (mm)",
       title = "Penguins bill v. flipper length of
       <span style = 'color:#CC79A7;'>Chinstrap</span>,
       <span style = 'color:#009E73;'>Gentoo</span> and 
       <span style = 'color:#E69F00;'>Adelie</span>
        species",
  ) +
  custom.theme(1.25) +
  scale_color_manual(values = c("#E69F00", "#CC79A7", "#009E73")) +
  theme(plot.title = element_markdown(size = 12)) +
  facet_wrap(~species, ncol = 3, scales = 'free') 
  # scale_y_continuous(breaks = c(170, 200, 230))
#
#
#
#
#
#| label: facet penguins
fixed_scales <- penguins %>%
  remove_missing() %>%
  ggplot(aes(x = bill_length_mm, y = flipper_length_mm,
             color = species, shape = species)) +
  geom_point(alpha = 0.7, size = 2, show.legend = FALSE) +
  labs(x = "Bill length (mm)", 
       y = "Flipper length (mm)",
       title = "Penguins bill v. flipper length of
       <span style = 'color:#CC79A7;'>Chinstrap</span>,
       <span style = 'color:#009E73;'>Gentoo</span> and 
       <span style = 'color:#E69F00;'>Adelie</span>
        species",
  ) +
  custom.theme(1.25) +
  scale_color_manual(values = c("#E69F00", "#CC79A7", "#009E73")) +
  theme(plot.title = element_markdown(size = 12)) +
  facet_wrap(~species, ncol = 3) +
  scale_y_continuous(breaks = c(170, 200, 230))

fixed_scales
#
#
#
#
#
#| label: facet penguins_2
fixed_scales
#
#
#
#
#
#| label: facet penguins more vars

penguins %>%
  remove_missing() %>%
  ggplot(aes(x = bill_length_mm, y = flipper_length_mm,
             color = body_mass_g)) +
  geom_point(alpha = 0.7, size = 2, show.legend = TRUE) +
  labs(x = "Bill length (mm)", 
       y = "Flipper length (mm)",
       title = "Penguins bill v. flipper length of Chinstrap, Gentoo and Adelie species",
  ) +
  custom.theme(1.25) +
  scale_color_viridis_c(name = 'Body mass (g)') +
  theme(plot.title = element_markdown(size = 12)) +
  facet_wrap(~species, ncol = 3) +
  scale_y_continuous(breaks = c(170, 200, 230))
#
#
#
#
#
#
#
#| label: small
dh <- fread('data/qualite-eaux.csv') %>% 
  mutate(
    date = as.Date(prelevement),
    parameter = case_when(
      parametre == "Potentiel en Hydrogène (pH)" ~ 'pH',
      TRUE ~ parametre
    )
  ) %>% 
  filter(!is.na(resultat)) %>% 
  group_by(code_station) %>% 
  mutate(n = n()) %>% 
  filter(n > 1030) %>% 
  ungroup() %>% 
  select(date, code_station, commune_nom, epci_fisc_libelle, parameter, resultat) %>% 
  rename(
    'city' = 'commune_nom',
    'city_group' = "epci_fisc_libelle",
    'value' = 'resultat'
  )

dh %>% 
  sample_n(6) %>%
  gt() %>% 
  opt_stylize(style = 6, color = 'pink') %>% 
  tab_options(column_labels.background.color = "pink")
#
#
#
#
#
#
#
#| label: no faceting

dh %>% 
  filter(parameter == 'pH', value > 2, !is.na(value)) %>%
  ggplot(aes(x = date, y = value)) +
  geom_point(aes(color = code_station)) +
  geom_line(aes(color = code_station)) +
  custom.theme(1) +
  theme(
    legend.text = element_text(size = 5),
    legend.position = 'bottom'
  ) +
  labs(
    y = 'pH',
    x = 'Date'
  ) +
  guides(
    color = guide_legend(ncol = 7)
  )
#
#
#
#
#
#| label: faceting
#| 
dh %>% 
  filter(parameter == 'pH', value > 2) %>%
  ggplot(aes(x = date, y = value)) +
  geom_point() +
  geom_line() +
  custom.theme(1) +
  facet_wrap(~code_station) +
  labs(
    y = 'pH',
    x = 'Date'
  )

#
#
#
#
#
#
#
#| label: faceting + colors + transparency

dh %>% 
  filter(parameter == 'pH', value > 2) %>%
  mutate(
    status = case_when(
      value > 9 ~ 'pH > 9',
      value < 6 ~ 'pH < 6',
      TRUE ~ '6 ≤ pH ≤ 9'
    )
  ) %>% 
  ggplot(aes(x = date, y = value)) +
  geom_point(aes(color = status), alpha = 0.25) +
  geom_point(
    data = . %>% filter(value > 9 | value < 6),
    aes(color = status)) +
  geom_line(color = 'grey', alpha = 0.25) +
  scale_color_manual(values = c('grey', 'tomato', 'steelblue')) +
  custom.theme(0.9) +
  facet_wrap(~code_station,
             ncol = 8) +
  labs(
    y = 'pH',
    x = 'Date'
  ) +
  scale_y_continuous(breaks = c(6, 9)) +
  scale_x_date(breaks = '5 years', labels = date_format("%Y")) +
  geom_hline(
    yintercept = c(6,9),
    color = 'grey',
    linetype = 'dotted'
  ) +
  theme(
    strip.text.x = element_text(size = 7),
    legend.position = 'none'
  ) +
  coord_cartesian(clip = 'off')

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: base figure
dh.filtered <- dh %>% 
  filter(
    parameter == 'pH',
    value > 5,
    value < 10,
    city_group != ''
  ) %>% 
  mutate(
    year = as.integer(format(date, "%Y"))
  ) %>% 
  group_by(city_group, year) %>% 
  mutate(mean.ph = mean(value)) 

dh.filtered %>% 
  ggplot(aes(x = year, y = value, color = city_group)) +
  geom_point() +
  labs(
    y = 'pH',
    x = 'Year'
  ) +
  custom.theme(1.5)

#
#
#
#
#
#| label: transp trned
dh.filtered %>% 
  ggplot(aes(x = year, y = value, color = city_group)) +
  geom_point(alpha = 0.1) +
  geom_smooth(se = FALSE) +
  labs(
    y = 'pH',
    x = 'Year'
  ) +
  custom.theme(1.5)

#
#
#
#
#
#| label: trendy panels
dh.filtered %>% 
  ggplot(aes(x = year, y = value, color = city_group)) +
  geom_point(alpha = 0.1) +
  geom_smooth(se = FALSE) +
  labs(
    y = 'pH',
    x = 'Year'
  ) + 
  facet_wrap(~city_group, ncol = 4) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0), limits = c(5,10)) +
  custom.theme(0.85) +
  theme(
    strip.text.x = element_text(size = 7),
    legend.position = 'none'
  ) 

#
#
#
#
#
#| label: recoloring
dh.filtered %>% 
  ggplot(aes(x = year, y = value, color = value)) +
  geom_point(alpha = 0.35, show.legend = FALSE) +
  geom_smooth(se = FALSE) +
  labs(
    y = 'pH',
    x = 'Year'
  ) + 
  facet_wrap(~city_group, ncol = 4) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0), limits = c(5,10)) +
  custom.theme(0.85) +
  scale_color_distiller(type = 'div', palette = 7, direction = -1) +
  theme(
    strip.text.x = element_text(size = 7),
    legend.position = 'none'
  ) 

#
#
#
#
#
#| label: stat cmp
dh.filtered %>% 
  ggplot(
    aes(x = year, y = value)
  ) +
  geom_boxplot(
    aes(group = year, fill = mean.ph),
    outlier.alpha = 0.05
  ) +
  geom_jitter(alpha = 0.05, size = 0.5) +
  facet_wrap(~city_group, ncol = 4) +
  custom.theme(0.85) +
  scale_color_distiller(type = 'div', palette = 7) +
  scale_fill_distiller(type = 'div', palette = 7) +
  theme(
    strip.text.x = element_text(size = 7),
    legend.position = 'none'
  ) +
  coord_cartesian(clip = 'off') +
  labs(
    y = 'pH',
    x = 'Year'
  ) +
  scale_y_continuous(expand = c(0,0), limits = c(6,9))

#
#
#
#
#
#| label: simplification
dh.filtered %>% 
  group_by(city_group) %>% 
  mutate(
    super.mean.ph = mean(value),
    sd.mean.ph = sd(value)
  ) %>% 
  group_by(city_group, year) %>% 
  mutate(status = case_when(
    mean.ph > super.mean.ph + sd.mean.ph ~ 'Increase',
    mean.ph < super.mean.ph - sd.mean.ph ~ 'Decrease', 
    TRUE ~ 'None'
  )) %>% 
  ggplot(
    aes(x = year, y = value)
  ) +
  geom_hline(
    data = . %>% 
      ungroup() %>% 
      select(sd.mean.ph, super.mean.ph, city_group) %>% 
      unique(),
    aes(yintercept = super.mean.ph - sd.mean.ph),
    color = 'grey', linetype = 'dotted'
  ) +
  geom_hline(
    data = . %>% 
      ungroup() %>% 
      select(sd.mean.ph, super.mean.ph, city_group) %>% 
      unique(),
    aes(yintercept = super.mean.ph + sd.mean.ph),
    color = 'grey', linetype = 'dotted'
  ) +
  geom_violin(
    data = . %>% 
      filter(status == 'None'),
    aes(group = year, fill = status),
    alpha = 0.25
  ) +
  geom_violin(
    data = . %>% 
      filter(status != 'None'),
    aes(group = year, fill = status)
  ) +
  geom_jitter(alpha = 0.025, size = 0.5) +
  facet_wrap(~city_group, ncol = 4) +
  custom.theme(0.85) +
  scale_fill_manual(values = c('steelblue', 'tomato', 'grey')) +
  theme(
    strip.text.x = element_text(size = 7),
    legend.position = 'none'
  ) +
  coord_cartesian(clip = 'off') +
  labs(
    y = 'pH',
    x = 'Year'
  ) +
  scale_y_continuous(expand = c(0,0), limits = c(6,9))

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: fakir
df.fakir <- fakir::fake_survey_answers(n = 1000000) %>%
  filter(
    year > 2022,
    region == "Aquitaine",
    transport %in% c('pied', 'velo', 'bus')
  ) %>% 
  mutate(
    mode = case_when(
      transport == 'pied' ~ 'walking',
      transport == 'velo' ~ 'cycling',
      transport == 'bus' ~ 'bus'
    )
  ) 

df.fakir %>%
  sample_n(6) %>% 
  select(1:6, 8:12) %>% 
  magrittr::set_colnames(
    c('id', 'age', 'sexe', 'region', 'id_departement', 'name_departement', 'year', 'type', 'distance_km', 'mode', 'time_h')
  ) %>% 
  gt() %>% 
  opt_stylize(style = 6, color = 'pink') %>% 
  tab_options(column_labels.background.color = "pink")
```
#
#
#
#
#
#
#| label: pfakir
#| 
df.fakir %>% 
  ggplot(aes(y = temps_trajet_en_heures, x = distance_km, color = mode)) +
  # geom_violin() +
  geom_point(alpha = 0.05, show.legend = FALSE, size = 0.25) +
  geom_smooth(se = TRUE, method = 'lm',
              show.legend = FALSE,
              linewidth = 0.4) +
  facet_grid(id_departement~year) +
  custom.theme(0.9) +
  theme(plot.title = element_markdown(size = 12),
        plot.caption = element_markdown(size = 12)
        ) +
  labs(
    y = 't (h)',
    x = 'distance (km)',
    title = "Relationship between the time spent commuting and the distance home-work, 
    by <span style = 'color:pink;'>bus</span>, <span style = 'color:forestgreen;'>cycling</span> 
    and <span style = 'color:steelblue;'>walking</span>",
    caption = "Points represent an individual answer to the survey. Lines and ribbons (0.95 level) are the results of linear fitting.<br />Each panel represent a year in a département."
  ) +
  scale_color_manual(values = c('pink', 'forestgreen', 'steelblue')) +
  scale_y_continuous(breaks = c(0.5, 1))

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: provide0
dh %>% 
  ungroup() %>% 
  select(parameter, value, date, code_station) %>% 
  filter(parameter == 'pH') %>%
  rename(pH = value) %>% 
  select(-parameter) %>% 
  left_join(
    dh %>% 
      ungroup() %>% 
      select(parameter, value, date, code_station) %>% 
      filter(parameter == "Température de l'Eau") %>%
      rename(temp = value) %>% 
      select(-parameter)
  ) %>% 
  filter(temp < 40) %>% 
  ggplot(aes(temp, pH)) +
  geom_point() +
  custom.theme(1.5) +
  labs(
    x = 'Water T (°C)'
  )
#
#
#
#
#
#| label: provide
dh %>% 
  ungroup() %>% 
  select(parameter, value, date, code_station) %>% 
  filter(parameter == 'pH') %>%
  rename(pH = value) %>% 
  select(-parameter) %>% 
  left_join(
    dh %>% 
      ungroup() %>% 
      select(parameter, value, date, code_station) %>% 
      filter(parameter == "Température de l'Eau") %>%
      rename(temp = value) %>% 
      select(-parameter)
  ) %>% 
  filter(temp < 40) %>% 
  ggplot(aes(temp, pH)) +
  geom_point(alpha = 0.1) +
  geom_smooth(
    method = 'lm',
    formula = y~x,
    color = 'coral',
    fill = 'coral',
    level = 0.9999
  ) +
  custom.theme(1.3) +
  theme(plot.caption = element_markdown(size = 14)) +
  labs(
    x = 'Water T (°C)',
    caption = "Correlation between the pH and the water temperature across all Loire Atlantique measurement stations.<br /> The orange line is the result of linear regression. The grey ribbon is the confidence interval at the 0.99 level."
  )
#
#
#
#
#
#| label: panels0

dh %>% 
  ungroup() %>% 
  select(parameter, value, date, city_group) %>% 
  filter(parameter == 'pH', city_group != '') %>%
  rename(pH = value) %>% 
  select(-parameter) %>% 
  left_join(
    dh %>% 
      ungroup() %>% 
      select(parameter, value, date, city_group) %>% 
      filter(parameter == "Température de l'Eau", city_group != '') %>%
      rename(temp = value) %>% 
      select(-parameter)
  ) %>% 
  filter(temp < 40) %>% 
  ggplot(aes(temp, pH)) +
  geom_point(alpha = 0.05) +
  geom_smooth(
    method = 'lm',
    formula = y~x,
    color = 'coral',
    fill = 'coral',
    level = 0.9
  ) +
  custom.theme(1) +
  labs(
    x = 'Water T (°C)',
    caption = "*Correlation between the pH and the water temperature, for each city group.<br /> The orange line is the result of linear regression. The grey ribbon is the confidence interval at the 0.99 level.*"
  ) +
  facet_wrap(~city_group, ncol = 4) +
  theme(
    strip.text.x = element_text(size = 6),
    plot.caption = element_markdown(size = 14)
  ) +
  scale_y_continuous(expand = c(0,0), limits = c(5,10), breaks = c(5, 7.5, 10))
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: explain0
dh %>% 
  ungroup() %>% 
  select(parameter, value, date, code_station) %>% 
  filter(parameter == 'pH') %>%
  rename(pH = value) %>% 
  select(-parameter) %>% 
  left_join(
    dh %>% 
      ungroup() %>% 
      select(parameter, value, date, code_station) %>% 
      filter(parameter == "Température de l'Eau") %>%
      rename(temp = value) %>% 
      select(-parameter)
  ) %>% 
  filter(temp < 40) %>% 
  ggplot(aes(temp, pH)) +
  geom_point(alpha = 0.1) +
  geom_smooth(
    method = 'lm',
    formula = y~x,
    color = 'coral',
    fill = 'coral',
    level = 0.9999
  ) +
  custom.theme(1.5) +
  theme(plot.caption = element_markdown(size = 14)) +
  labs(
    x = 'Water T (°C)',
    caption = "<i>Correlation between the pH and the water temperature across all Loire Atlantique measurement stations. <br /> <b>Black dots represent individual measurements.</b>  <br /> The orange line is the result of linear regression. The grey ribbon is the confidence interval at the 0.99 level.</i>"
  )
#
#
#
#
#
#| label: explain

df.antibes %>% 
  group_by(year) %>% 
  mutate(
    mean.temp = mean(temp),
    sd.temp = sd(temp)
  ) %>% 
  ggplot(aes(x = year, y = temp, group = year)) +
  geom_boxplot(
    outlier.alpha = 0,
    linewidth = 1
  ) +
  geom_jitter(
    data = . %>% 
      filter(
        temp <= (mean.temp + sd.temp),
        temp >= (mean.temp - sd.temp)
        ),
    width = 0.25, alpha = 0.25) +
  geom_jitter(
    data = . %>% 
      filter(temp > (mean.temp + sd.temp)),
    width = 0.25, alpha = 1, color = 'coral'
  ) +
  geom_jitter(
    data = . %>% 
      filter(temp < (mean.temp - sd.temp)),
    width = 0.25, alpha = 1, color = 'steelblue'
  ) +
  labs(
    x = 'Year',
    y = 'Water T (°C)'
  ) +
  custom.theme(1.5) +
  theme(plot.caption = element_markdown(size = 14)) +
  labs(caption = "<i>Distribution of water temperature (°C) recorded each year in Antibes since 2020. <br /> Individual measurements are shown as dots. <br /> Measurements above (orange) and below (blue) one SD from the mean are colored. <br /> Boxes show the median (bold line) and the first and third quartiles (hinges).<br /> The two whiskers show the spread of the data excluding outliers.</i>")

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: complete0

df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_point(aes(color = temp)) +
    geom_smooth(
      se = TRUE,
      method = 'gam',
      size = 1.5
    ) +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 7) +
    custom.theme(1.5)
#
#
#
#
#
#| label: complete
df.antibes %>% 
    ggplot(aes(date, temp)) +
    geom_point(aes(color = temp)) +
    geom_smooth(
      se = TRUE,
      method = 'gam',
      size = 1.5
    ) +
    labs(y = 'Water T (°C)',
         x = 'Date') +
    scale_y_continuous(limits = c(9, 30)) +
    scale_color_distiller(type = 'div', palette = 7, name = 'T (°C)') +
    custom.theme(1.5)
#
#
#
#
#
#| label: unclear
di <- readxl::read_excel('data/series_offres_difusees.xlsx') %>% 
  select(1:4) %>% 
  magrittr::set_colnames(c('year', 'trimester', 'month', 'n')) %>% 
  mutate(date = as.Date(paste0(year, '/', month, '/', '01'))) %>% 
  filter(year < 2023)

di %>% 
  ggplot(aes(month, n, color = factor(year))) +
  geom_point(show.legend = TRUE, size = 2.5) +
  geom_line(show.legend = TRUE, linewidth = 1) +
  custom.theme(1.5) +
  scale_x_continuous(n.breaks = 7) +
  coord_cartesian(clip = 'off')

#
#
#
#
#
#
#
#| label: skipbulk

di %>% 
  ggplot(aes(month, n, color = factor(year))) +
  geom_point(show.legend = FALSE, size = 2.5) +
  geom_line(show.legend = FALSE, linewidth = 1) +
  ggrepel::geom_text_repel(
    data = . %>% 
      group_by(year) %>% 
      filter(month == max(month)),
    aes(label = year, x = 12.5),
    show.legend = FALSE,
    fontface = 'bold',
    direction = 'y',
    force = 5
  ) +
  custom.theme(1.5) +
  scale_x_continuous(n.breaks = 7) +
  scale_y_continuous(labels = function(x) format(x, scientific = TRUE)) +
  coord_cartesian(clip = 'off') +
  labs(y = 'Posted job offers', x = 'Month')

#
#
#
#
#
#
#
#| label: panels42

di %>% 
  ggplot(aes(month, n, color = factor(year))) +
  geom_point(show.legend = FALSE, size = 2.5) +
  geom_line(show.legend = FALSE, size = 0.75) +
  custom.theme(1.25) +
  scale_x_continuous(n.breaks = 7) +
  scale_y_continuous(labels = function(x) format(x, scientific = TRUE)) +
  coord_cartesian(clip = 'off') +
  labs(y = 'Posted job offers', x = 'Month') +
  facet_wrap(~year, ncol = 4)

#
#
#
#
#
#| label: Label points of interest

df.antibes %>% 
  ggplot(aes(date, temp)) +
  geom_point(color = 'grey', alpha = 0.7) +
  geom_smooth(method = 'gam', color = 'gray', se = FALSE, alpha = 0.25) +
  labs(y = 'Water T (°C)',
       x = 'Date') +
  scale_y_continuous(limits = c(9, 30)) +
  custom.theme(1.5) +
  theme(
    plot.title = element_markdown(size = 16)
  ) +
  geom_hline(color = '#FF4081', linetype = 'dotted', 
             linewidth = 1,
             aes(yintercept = 28)) +
  geom_hline(color = 'steelblue', linetype = 'dotted',
             linewidth = 1,
             aes(yintercept = 12)) +
  geom_point(
    data = . %>% 
      filter(temp > 28),
    color = '#FF4081'
  ) +
  geom_point(
    data = . %>% 
      filter(temp < 12),
    color = 'steelblue'
  ) +
  labs(title = "The water temperature in Antibes rose <span style = 'color:#FF4081;'>above 28°C</span> five days in 2022<br />
       and went <span style = 'color:steelblue;'>below 12°C</span> only once, in 2021.") +
  ggrepel::geom_label_repel(
    data = . %>% 
      filter(temp == max(temp)),
    aes(label = paste0(temp, '°C (', date, ')')), 
    force = 25,
    color = '#FF4081',
    ylim = c(29.5, 30),
    fontface = 'bold',
  ) +
  ggrepel::geom_label_repel(
    data = . %>% 
      filter(temp == min(temp)),
    aes(label = paste0(temp, '°C (', date, ')')), 
    force = 25,
    color = 'steelblue',
    ylim = c(9.25, 9.5),
    fontface = 'bold',
    segment.size = 1
  ) +
  coord_cartesian(clip = 'off')
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: base jobs

set.seed(42)

di %>% 
  ggplot(aes(month, n, color = factor(year))) +
  geom_point(show.legend = FALSE, size = 3) +
  geom_line(show.legend = FALSE, linewidth = 1) +
  ggrepel::geom_text_repel(
    data = . %>% 
      group_by(year) %>% 
      filter(month == max(month)),
    aes(label = year, x = 12.5),
    show.legend = FALSE,
    fontface = 'bold',
    direction = 'y',
    force = 5,
    seed = 69
  ) +
  custom.theme(1.5) +
  scale_x_continuous(n.breaks = 7) +
  scale_y_continuous(labels = function(x) format(x, scientific = TRUE)) +
  coord_cartesian(clip = 'off') +
  labs(y = 'Posted job offers', x = 'Month') +
  scale_color_manual(values = c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b", "#e377c2", "#17becf"))

#
#
#
#
#
#
#
#| label: greyed jobs

di %>% 
  ggplot(aes(month, n, group = factor(year), color = factor(year))) +
  geom_point(
    data = . %>% filter(year < 2021),
    show.legend = FALSE, color = 'grey', alpha = 0.5, size = 3
    ) +
  geom_line(
    data = . %>% filter(year < 2021),
    show.legend = FALSE, color = 'grey', alpha = 0.5, linewidth = 1
    ) +
  geom_point(
    data = . %>% filter(year > 2020),
    show.legend = FALSE,
    size = 3
    ) +
  geom_line(
    data = . %>% filter(year > 2020),
    show.legend = FALSE,
    linewidth = 1.25
    ) +
  ggrepel::geom_text_repel(
    data = . %>% 
      filter(year > 2020) %>% 
      group_by(year) %>% 
      filter(month == max(month)),
    aes(label = year, x = 12.5),
    show.legend = FALSE,
    fontface = 'bold',
    direction = 'y',
    force = 5,
    seed = 69
  ) +
  ggrepel::geom_text_repel(
    data = . %>% 
      filter(year < 2020) %>% 
      group_by(year) %>% 
      filter(month == max(month)),
    aes(label = year, x = 12.5),
    show.legend = FALSE,
    fontface = 'bold',
    direction = 'y',
    force = 5,
    color = 'grey', alpha = 0.5,
    seed = 69
  ) +
  custom.theme(1.5) +
  scale_x_continuous(n.breaks = 7) +
  scale_y_continuous(labels = function(x) format(x, scientific = TRUE)) +
  coord_cartesian(clip = 'off') +
  labs(y = 'Posted job offers', x = 'Month') +
    scale_color_manual(values = c("#e377c2", "#17becf"))

#
#
#
#
#
#
#
#| label: greyed jobs 2023

readxl::read_excel('data/series_offres_difusees.xlsx') %>%
  select(1:4) %>%
  magrittr::set_colnames(c('year', 'trimester', 'month', 'n')) %>%
  mutate(date = as.Date(paste0(year, '/', month, '/', '01'))) %>%
  ggplot(aes(month, n, group = factor(year), color = factor(year))) +
  geom_point(
    data = . %>% filter(year < 2021),
    show.legend = FALSE, color = 'grey', alpha = 0.5, size = 3
    ) +
  geom_line(
    data = . %>% filter(year < 2021),
    show.legend = FALSE, color = 'grey', alpha = 0.5, linewidth = 1
    ) +
  geom_point(
    data = . %>% filter(year > 2020),
    show.legend = FALSE,
    size = 3
    ) +
  geom_line(
    data = . %>% filter(year > 2020),
    show.legend = FALSE,
    linewidth = 1.25
    ) +
  ggrepel::geom_text_repel(
    data = . %>% 
      filter(year > 2020) %>% 
      group_by(year) %>% 
      filter(month == max(month)),
    aes(label = year, x = 12.5),
    show.legend = FALSE,
    fontface = 'bold',
    direction = 'y',
    force = 5,
    seed = 69
  ) +
  ggrepel::geom_text_repel(
    data = . %>% 
      filter(year < 2020) %>% 
      group_by(year) %>% 
      filter(month == max(month)),
    aes(label = year, x = 12.5),
    show.legend = FALSE,
    fontface = 'bold',
    direction = 'y',
    force = 5,
    color = 'grey', alpha = 0.5,
    seed = 69
  ) +
  custom.theme(1.5) +
  scale_x_continuous(n.breaks = 7) +
  scale_y_continuous(labels = function(x) format(x, scientific = TRUE)) +
  coord_cartesian(clip = 'off') +
  labs(y = 'Posted job offers', x = 'Month') +
    scale_color_manual(values = c("#e377c2", "#17becf", "#bcbd22")) 

#
#
#
#
#
#| label: gganimate
#| include: false

# source('R/animations.R')
#
#
#
#
#
#
#
#
#
#
#
#| label: interactivity
#| out-height: 100%
#| out-width: 100%

(penguins %>%
    remove_missing() %>%
    ggplot(
      aes(x = bill_length_mm, y = flipper_length_mm,
          color = species, shape = sex, size = body_mass_g)
    ) +
    geom_point(alpha = 0.7, show.legend = FALSE) +
    labs(x = "Bill length (mm)", 
         y = "Flipper length (mm)",
         title = "Penguins bill v. flipper length of <span style = 'color:#CC79A7;'>Chinstrap</span>, <span style = 'color:#009E73;'>Gentoo</span> and  <span style = 'color:#E69F00;'>Adelie</span> species",
    ) +
    custom.theme(1.25) +
    scale_color_manual(values = c("#E69F00", "#CC79A7", "#009E73")) +
    theme(plot.title = element_markdown(size = 12))) %>% 
  ggplotly(
    tooltip = c('color', 'size', 'shape'),
    dynamicTicks = TRUE
  )


#
#
#
#
#
#
#
#
#
#
#
#
#
#| label: check_environment
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}

library(tidyverse)
#
#
#
#
#
#| label: check_environment_2
#| echo: true
#| eval: true
#| warning: true
#| message: true
#| output-location: column
#| classes: columns5050
if (!requireNamespace("data.table", quietly = TRUE)) {
  install.packages("data.table")
}

library(data.table)

# version check
packageVersion("data.table")
#
#
#
