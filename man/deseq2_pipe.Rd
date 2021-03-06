% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deseq2_pipe.R
\name{deseq2_pipe}
\alias{deseq2_pipe}
\title{Pipeline for DESeq2 analysis}
\usage{
deseq2_pipe(se = NULL, block.column = NULL, adjust.method = "BH",
  p.value = 0.05)
}
\arguments{
\item{se}{SummarizedExperiment with an assay slot named counts_fil containing
the filtered counts and colData slot containing sample metadata.}

\item{block.column}{The column in the samples metadata dataframe specifying
the block/additive effect column.}

\item{adjust.method}{Method to be used for adjustment of nominal p-values.
May be one of "BH", "bonferroni", "holm", "hochberg", "hommel", "BY".}

\item{p.value}{Value between 0 and 1.  Adjusted p-value for the differential
expression analysis.}
}
\value{
List containing the DESeq2 DDS container, the raw results for each contrast
and the processed differential gene results.
}
\description{
Function to perform entire DESeq2 analysis, beginning with
a SummarizedExperiment and ending with list of differential genes and
generation of diagnostic plots along the way.
}
