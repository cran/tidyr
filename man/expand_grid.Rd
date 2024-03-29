% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expand.R
\name{expand_grid}
\alias{expand_grid}
\title{Create a tibble from all combinations of inputs}
\usage{
expand_grid(..., .name_repair = "check_unique")
}
\arguments{
\item{...}{Name-value pairs. The name will become the column name in the
output.}

\item{.name_repair}{Treatment of problematic column names:
\itemize{
\item \code{"minimal"}: No name repair or checks, beyond basic existence,
\item \code{"unique"}: Make sure names are unique and not empty,
\item \code{"check_unique"}: (default value), no name repair, but check they are
\code{unique},
\item \code{"universal"}: Make the names \code{unique} and syntactic
\item a function: apply custom name repair (e.g., \code{.name_repair = make.names}
for names in the style of base R).
\item A purrr-style anonymous function, see \code{\link[rlang:as_function]{rlang::as_function()}}
}

This argument is passed on as \code{repair} to \code{\link[vctrs:vec_as_names]{vctrs::vec_as_names()}}.
See there for more details on these terms and the strategies used
to enforce them.}
}
\value{
A tibble with one column for each input in \code{...}. The output
will have one row for each combination of the inputs, i.e. the size
be equal to the product of the sizes of the inputs. This implies
that if any input has length 0, the output will have zero rows.
}
\description{
\code{expand_grid()} is heavily motivated by \code{\link[=expand.grid]{expand.grid()}}.
Compared to \code{expand.grid()}, it:
\itemize{
\item Produces sorted output (by varying the first column the slowest, rather
than the fastest).
\item Returns a tibble, not a data frame.
\item Never converts strings to factors.
\item Does not add any additional attributes.
\item Can expand any generalised vector, including data frames.
}
}
\examples{
expand_grid(x = 1:3, y = 1:2)
expand_grid(l1 = letters, l2 = LETTERS)

# Can also expand data frames
expand_grid(df = tibble(x = 1:2, y = c(2, 1)), z = 1:3)
# And matrices
expand_grid(x1 = matrix(1:4, nrow = 2), x2 = matrix(5:8, nrow = 2))
}
