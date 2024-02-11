\name{distrDoc-package}
\alias{distrDoc-package}
\alias{distrDoc}
\docType{package}
\title{
distrDoc -- Documentation for 'distr' Family of R Packages
}
\description{
\pkg{distrDoc} provides documentation in form of a common vignette to 
packages \pkg{distr}, \pkg{distrEx}, \pkg{distrSim}, \pkg{distrTEst},
\pkg{distrTeach}, \pkg{distrMod}, and \pkg{distrEllipse}.
}
\details{
\tabular{ll}{
Package: \tab distrDoc \cr
Version: \tab 2.9.0 \cr
Date: \tab 2019-03-13 \cr
Depends: \tab R(>= 3.4) \cr
Imports: \tab distr(>= 2.8.0), distrEx(>= 2.8.0), distrSim(>= 2.2.0),
    distrTEst(>= 2.2.0),distrTeach(>= 2.2.0), RandVar(>= 1.2.0), distrMod(>= 2.8.0), MASS, methods,
startupmsg \cr
Suggests: \tab Biobase, knitr \cr
ByteCompile: \tab yes \cr
License: \tab LGPL-3 \cr
URL: \tab https://r-forge.r-project.org/projects/distr/\cr
VCS/SVNRevision: \tab 1324 \cr
}}


\section{Acknowledgement}{
The idea to split off a common vignette for a set of packages 
 in a particular documentation package is due to Seth Falcon.}
\author{
Peter Ruckdeschel \email{peter.ruckdeschel@uni-oldenburg.de},\cr 
Thomas Stabla \email{statho3@web.de},\cr 
Florian Camphausen \email{fcampi@gmx.de},\cr
Matthias Kohl \email{Matthias.Kohl@stamats.de}\cr
\emph{Maintainer:} Peter Ruckdeschel \email{peter.ruckdeschel@uni-oldenburg.de}
}

\seealso{see mails "[Rd] package vignettes, suggests and R CMD check"
         on r-devel by Seth Falcon,\cr
         \url{https://stat.ethz.ch/pipermail/r-devel/2006-November/043702.html},
    
    
    \cr
         \url{https://stat.ethz.ch/pipermail/r-devel/2006-November/043705.html},
    
    
    \cr
         and by the author,\cr  
         \url{https://stat.ethz.ch/pipermail/r-devel/2006-November/043700.html},
    
    
    \cr
         \url{https://stat.ethz.ch/pipermail/r-devel/2006-November/043703.html}\cr
         }



\section{Start-up-Banner}{
You may suppress the start-up banner/message completely by setting \code{options("StartupBanner"="off")}
somewhere before loading this package by \code{library} or \code{require} in your R-code / R-session.

If option \code{"StartupBanner"} is not defined (default) or setting    
\code{options("StartupBanner"=NULL)} or  \code{options("StartupBanner"="complete")} 
the complete start-up banner is displayed.

For any other value of option \code{"StartupBanner"} (i.e., not in \code{c(NULL,"off","complete")})
only the version information is displayed.

The same can be achieved by wrapping the \code{library} or \code{require}  call into
either \code{suppressStartupMessages()} or \code{onlytypeStartupMessages(.,atypes="version")}.  
 
As for general \code{packageStartupMessage}'s, you may also suppress all
 the start-up banner by wrapping the \code{library} or \code{require} 
 call into \code{suppressPackageStartupMessages()} from 
 \pkg{startupmsg}-version 0.5 on.
  }

\section{Package versions}{
Note: The first two numbers of package versions do not necessarily reflect
 package-individual development, but rather are chosen for the
 distrXXX family as a whole in order to ease updating "depends"
 information.
}

\references{
P. Ruckdeschel, M. Kohl, T. Stabla, F. Camphausen (2006):
S4 Classes for Distributions, \emph{R News}, \emph{6}(2), 2-6.
\url{https://CRAN.R-project.org/doc/Rnews/Rnews_2006-2.pdf}.

M. Kohl and P. Ruckdeschel (2010):
R Package distrMod: S4 Classes and Methods for Probability Models.
Journal of Statistical Software, 35(10), 1-27.
\doi{10.18637/jss.v035.i10}
(see also \code{vignette("distrMod")})

P. Ruckdeschel and M. Kohl (2014):
   General purpose convolution algorithm for distributions
  in S4-Classes by means of FFT. \emph{J. Statist. Softw.}
  \bold{59}(4): 1-25. \doi{10.18637/jss.v059.i04}.

A vignette for packages \pkg{distr}, \pkg{distrSim}, \pkg{distrTEst}, and
\pkg{distrEx} is included into the mere documentation package \pkg{distrDoc}
and may be called by
\code{require("distrDoc"); vignette("distr")}

%a more detailed manual for \pkg{distr}, \pkg{distrSim}, \pkg{distrTEst}, and \pkg{distrEx} may be downloaded from
%\url{http://www.uni-bayreuth.de/departments/math/org/mathe7/DISTR/distr.pdf}

A homepage to this package is available under\cr
\url{https://distr.r-forge.r-project.org/}
}
\keyword{package}
\keyword{utilities}
\keyword{documentation}
\concept{vignette}
\concept{S4 distribution class}
\concept{distr familiy}
\examples{
\dontrun{
## Open the distr vignette
     vignette("distr")
}
}
