% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/label-number-si.R
\name{label_number_si}
\alias{label_number_si}
\title{Label numbers with SI prefixes (2 kg, 5 mm, etc)}
\usage{
label_number_si(unit, accuracy = NULL, scale = 1, ...)
}
\arguments{
\item{unit}{Unit of measurement (e.g. \code{"m"} for meter, the SI unit of length).}

\item{accuracy}{A number to round to. Use (e.g.) \code{0.01} to show 2 decimal
places of precision. If \code{NULL}, the default, uses a heuristic that should
ensure breaks have the minimum number of digits needed to show the
difference between adjacent values.

Applied to rescaled data.}

\item{scale}{A scaling factor: \code{x} will be multiplied by \code{scale} before
formatting. This is useful if the underlying data is already using an SI
prefix.}

\item{...}{Other arguments passed on to \code{\link[base:format]{base::format()}}.}
}
\value{
All \code{label_()} functions return a "labelling" function, i.e. a function that
takes a vector \code{x} and returns a character vector of \code{length(x)} giving a
label for each input value.

Labelling functions are designed to be used with the \code{labels} argument of
ggplot2 scales. The examples demonstrate their use with x scales, but
they work similarly for all scales, including those that generate legends
rather than axes.
}
\description{
\code{label_number_si()} automatically adds the most suitable SI prefix and scales
the values appropriately. For example, values greater than 1000 gain a "k"
prefix (abbreviated from "kilo-") and are scaled by 1/1000.
See \href{https://en.wikipedia.org/wiki/Metric_prefix}{Metric Prefix} on Wikipedia
for more details.
}
\examples{
demo_continuous(c(1, 1000), labels = label_number_si("m"))

demo_log10(c(1, 1e9), breaks = log_breaks(10), labels = label_number_si("m"))
demo_log10(c(1e-9, 1), breaks = log_breaks(10), labels = label_number_si("g"))

# use scale when data already uses SI prefix (e.g. stored in kg)
kg <- label_number_si("g", scale = 1e3)
demo_log10(c(1e-9, 1), breaks = log_breaks(10), labels = kg)
}
\seealso{
Other labels for continuous scales: 
\code{\link{label_bytes}()},
\code{\link{label_dollar}()},
\code{\link{label_number_auto}()},
\code{\link{label_ordinal}()},
\code{\link{label_parse}()},
\code{\link{label_percent}()},
\code{\link{label_pvalue}()},
\code{\link{label_scientific}()}

Other labels for log scales: 
\code{\link{label_bytes}()},
\code{\link{label_scientific}()}
}
\concept{labels for continuous scales}
\concept{labels for log scales}
