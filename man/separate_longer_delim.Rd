% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/separate-longer.R
\name{separate_longer_delim}
\alias{separate_longer_delim}
\alias{separate_longer_position}
\title{Split a string into rows}
\usage{
separate_longer_delim(data, cols, delim, ...)

separate_longer_position(data, cols, width, ..., keep_empty = FALSE)
}
\arguments{
\item{data}{A data frame.}

\item{cols}{<\code{\link[=tidyr_tidy_select]{tidy-select}}> Columns to separate.}

\item{delim}{For \code{separate_longer_delim()}, a string giving the delimiter
between values. By default, it is interpreted as a fixed string; use
\code{\link[stringr:modifiers]{stringr::regex()}} and friends to split in other ways.}

\item{...}{These dots are for future extensions and must be empty.}

\item{width}{For \code{separate_longer_position()}, an integer giving the
number of characters to split by.}

\item{keep_empty}{By default, you'll get \code{ceiling(nchar(x) / width)} rows for
each observation. If \code{nchar(x)} is zero, this means the entire input
row will be dropped from the output. If you want to preserve all rows,
use \code{keep_empty = TRUE} to replace size-0 elements with a missing value.}
}
\value{
A data frame based on \code{data}. It has the same columns, but different
rows.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

Each of these functions takes a string and splits it into multiple rows:
\itemize{
\item \code{separate_longer_delim()} splits by a delimiter.
\item \code{separate_longer_position()} splits by a fixed width.
}
}
\examples{
df <- tibble(id = 1:4, x = c("x", "x y", "x y z", NA))
df \%>\% separate_longer_delim(x, delim = " ")

# You can separate multiple columns at once if they have the same structure
df <- tibble(id = 1:3, x = c("x", "x y", "x y z"), y = c("a", "a b", "a b c"))
df \%>\% separate_longer_delim(c(x, y), delim = " ")

# Or instead split by a fixed length
df <- tibble(id = 1:3, x = c("ab", "def", ""))
df \%>\% separate_longer_position(x, 1)
df \%>\% separate_longer_position(x, 2)
df \%>\% separate_longer_position(x, 2, keep_empty = TRUE)
}
