% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compSurv.R
\name{compSurv}
\alias{compSurv}
\title{Comparison of prognosis by Kaplan-Meier survival curve}
\usage{
compSurv(
  moic.res = NULL,
  surv.info = NULL,
  convt.time = "d",
  surv.cut = NULL,
  xyrs.est = NULL,
  clust.col = c("#2EC4B6", "#E71D36", "#FF9F1C", "#BDD5EA", "#FFA5AB", "#011627",
    "#023E8A", "#9D4EDD"),
  p.adjust.method = "BH",
  surv.median.line = "none",
  fig.name = NULL,
  fig.path = getwd()
)
}
\arguments{
\item{moic.res}{An object returned by `getMOIC()` with one specified algorithm or `get\%algorithm_name\%` or `getConsensusMOIC()` with a list of multiple algorithms.}

\item{surv.info}{A data.frame with rownames of observations and with at least two columns of `futime` for survival time and `fustat` for survival status (0: censoring; 1: event)}

\item{convt.time}{A string value to indicate how to convert the survival time; value of `d` for days, `m` for months and `y` for years; "d" by default.}

\item{surv.cut}{A numeric value to indicate the x-axis cutoff for showing the maximal survival time. NULL by default (show 0-maximum survival time range).}

\item{xyrs.est}{An integer vector to estimate probability of surviving beyond a certain number (x) of years (Estimating x-year survival); NULL by default.}

\item{clust.col}{A string vector storing colors for each subtype.}

\item{p.adjust.method}{A string value for indicating method for adjusting p values (see \link[stats]{p.adjust}). Allowed values include one of c(`holm`, `hochberg`, `hommel`, `bonferroni`, `BH`, `BY`, `fdr`, `none`); "BH" by default.}

\item{surv.median.line}{A string value for drawing a horizontal/vertical line at median survival. Allowed values include one of c(`none`, `hv`, `h`, `v`). v: vertical, h:horizontal; "none" by default.}

\item{fig.name}{A string value to indicate the output path for storing the kaplan-meier curve.}

\item{fig.path}{A string value to indicate the name of the kaplan-meier curve.}
}
\value{
A figure of multi-omics Kaplan-Meier curve (.pdf) and a list with the following components:

        \code{fitd}       an object returned by \link[survival]{survdiff}.

        \code{fid}        an object returned by \link[survival]{survfit}.

        \code{xyrs.est}   x-year probability of survival and the associated lower and upper bounds of the 95% confidence interval are also displayed if argument of `xyrs.est` was set by users.

        \code{overall.p}  a nominal p.value calculated by Kaplain-Meier estimator with log-rank test.

        \code{pairwise.p} an object of class "pairwise.htest" which is a list containing the p values (see \link[survminer]{pairwise_survdiff}); (\emph{only returned when more than 2 subtypes are identified}).
}
\description{
This function calculates Kaplan-meier estimator and generate survival curves with log-rank test to detect prognostic difference among identified subtypes. If more than 2 subtypes are identified, pair-wise comparisons will be performed with an additional table printed on the survival curve.
}
\examples{
# There is no example and please refer to vignette.
}
