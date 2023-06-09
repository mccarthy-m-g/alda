% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{dropout_wages}
\alias{dropout_wages}
\alias{dropout_wages_subset}
\title{High school dropout labour market experiences}
\format{
\subsection{\code{dropout_wages}}{

A person-period data frame with 6402 rows and
9 columns:

\describe{
\item{\code{id}}{Participant ID.}
\item{\code{log_wages}}{Natural logarithm of wages.}
\item{\code{experience}}{Labour force experience in years, tracked from dropouts' first day of work.}
\item{\code{ged}}{Binary indicator for whether the dropout obtained a GED.}
\item{\code{postsecondary_education}}{Binary indicator for whether the dropout obtained post-secondary education.}
\item{\code{black}}{Binary indicator for whether the dropout is black.}
\item{\code{hispanic}}{Binary indicator for whether the dropout is hispanic.}
\item{\code{highest_grade}}{Highest grade completed.}
\item{\code{unemployment_rate}}{Unemployment rate in the local geographic area.}
}
}

\subsection{\code{dropout_wages_subset}}{

A person-period data frame with 257 rows and
5 columns:

\describe{
\item{\code{id}}{Participant ID.}
\item{\code{log_wages}}{Natural logarithm of wages.}
\item{\code{experience}}{Labour force experience in years, tracked from dropouts' first day of work.}
\item{\code{black}}{Binary indicator for whether the dropout is black.}
\item{\code{highest_grade}}{Highest grade completed.}
}
}
}
\source{
Murnane, R. J., Boudett, K. P., & Willett, J. B. (1999). Do male dropouts
benefit from obtaining a GED, postsecondary education, and training?
Evaluation Review, 23, 475–502. \url{https://doi.org/10.1177/0193841x9902300501}
}
\usage{
dropout_wages

dropout_wages_subset
}
\description{
A subset of data from the National Longitudinal Study of Youth tracking the
labour market experiences of male high school dropouts (Murnane, Boudett, &
Willett, 1999).
}
\keyword{datasets}
