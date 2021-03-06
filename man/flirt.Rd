\name{flirt}
\alias{flirt}
\title{Register using FLIRT}
\usage{
flirt(infile, reffile, omat, dof, outfile = NULL, retimg = FALSE,
  reorient = FALSE, intern = TRUE, opts = "")
}
\arguments{
  \item{infile}{(character) input filename}

  \item{reffile}{(character) reference image to be
  registered to}

  \item{omat}{(character) Output matrix name}

  \item{dof}{(numeric) degrees of freedom}

  \item{outfile}{(character) output filename}

  \item{retimg}{(logical) return image of class nifti}

  \item{reorient}{(logical) If retimg, should file be
  reoriented when read in? Passed to
  \code{\link{readNIfTI}}.}

  \item{intern}{(logical) pass to \code{\link{system}}}

  \item{opts}{(character) additional options to FLIRT}
}
\value{
character or logical depending on intern
}
\description{
Register using FLIRT
}

