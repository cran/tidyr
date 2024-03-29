% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{who}
\alias{who}
\alias{who2}
\alias{population}
\title{World Health Organization TB data}
\format{
\subsection{\code{who}}{

A data frame with 7,240 rows and 60 columns:
\describe{
\item{country}{Country name}
\item{iso2, iso3}{2 & 3 letter ISO country codes}
\item{year}{Year}
\item{new_sp_m014 - new_rel_f65}{Counts of new TB cases recorded by group.
Column names encode three variables that describe the group.}
}
}

\subsection{\code{who2}}{

A data frame with 7,240 rows and 58 columns.
}

\subsection{\code{population}}{

A data frame with 4,060 rows and three columns:
\describe{
\item{country}{Country name}
\item{year}{Year}
\item{population}{Population}
}
}
}
\source{
\url{https://www.who.int/teams/global-tuberculosis-programme/data}
}
\usage{
who

who2

population
}
\description{
A subset of data from the World Health Organization Global Tuberculosis
Report, and accompanying global populations. \code{who} uses the original
codes from the World Health Organization. The column names for columns
5 through 60 are made by combining \code{new_} with:
\itemize{
\item the method of diagnosis (\code{rel} = relapse, \code{sn} = negative pulmonary
smear, \code{sp} = positive pulmonary smear, \code{ep} = extrapulmonary),
\item gender (\code{f} = female, \code{m} = male), and
\item age group (\code{014} = 0-14 yrs of age, \code{1524} = 15-24, \code{2534} = 25-34,
\code{3544} = 35-44 years of age, \code{4554} = 45-54, \code{5564} = 55-64,
\code{65} = 65 years or older).
}

\code{who2} is a lightly modified version that makes teaching the basics
easier by tweaking the variables to be slightly more consistent and
dropping \code{iso2} and \code{iso3}. \code{newrel} is replaced by \code{new_rel}, and a
\verb{_} is added after the gender.
}
\keyword{datasets}
