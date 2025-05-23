\name{distrTEst-package}
\alias{distrTEst-package}
\alias{distrTEst}
\docType{package}
\title{
distrTEst -- Estimation and Testing Classes Based on Package distr
}
\description{
\pkg{distrTest} provides
(S4-)classes for evaluating procedures (estimators/tests) at data/simulation in
a unified way based on package \pkg{distr}. This is achieved by means of the S4 class
\code{Evaluation}. The package is based on our packages \pkg{distr} and \pkg{distrSim}, hence uses distribution classes 
and simulation classes as introduced there to capture the situation from which the simulations stem.
}
\details{
\tabular{ll}{
Package: \tab distrTEst \cr
Version: \tab 2.8.3 \cr
Date: \tab 2025-01-11 \cr
Depends: \tab R(>= 3.4), methods, graphics, setRNG(>= 2006.2-1), distrSim(>= 2.2) \cr
Imports: \tab startupmsg(>= 1.0.0), utils \cr
Suggests: \tab distrEx(>= 2.2) \cr
LazyLoad: \tab yes \cr
License: \tab LGPL-3 \cr
URL: \tab https://distr.r-forge.r-project.org/\cr
VCS/SVNRevision: \tab 1490 \cr
}}
\section{Classes}{
\preformatted{
"Evaluation"
      slots: [<name>(<class>)] 
      name(character), filename(character), call.ev(call),
      Data(Dataclass), result(DataframeorNULL), 
      estimator(OptionalFunction)
"EvaluationList"
      slots: [<name>(<class>)] 
      name(character), Elist(list) 
}
Objects of class "Evaluation" are generated by a call to \code{\link{evaluate}}.
}
\section{Methods}{
\preformatted{
plot            plot method for "Evaluation" and for "EvaluationList"
print,show      print/show method for "Evaluation" and for "EvaluationList"
summary         summary method for "Evaluation" and for "EvaluationList"
Data            accessor method for "Evaluation", and, for "EvaluationList" 
                returns common Data 
}}
\section{Slot accessors / -replacement functions}{
All slots are inspected / modified by corresponding 
accessors / -replacement functions, e.g. \code{call.ev(X)} 
or \code{filename(X)<-"myevaluation.sav"} for
an object of class \code{"Evaluation"}.
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
either \code{\link[startupmsg:StartupUtilities]{suppressStartupMessages}()} or 
\code{\link[startupmsg:StartupUtilities]{onlytypeStartupMessages}(.,atypes="version")}. 
As for general \code{packageStartupMessage}'s, you may also suppress all
 the start-up banner by wrapping the \code{library} or \code{require} 
 call into \code{suppressPackageStartupMessages()} from 
 \pkg{startupmsg}-version 0.5 on.
 }
\author{
  Thomas Stabla \email{statho3@web.de},\cr 
  Florian Camphausen \email{fcampi@gmx.de},\cr
  Peter Ruckdeschel \email{peter.ruckdeschel@uni-oldenburg.de},\cr 
  Matthias Kohl \email{Matthias.Kohl@stamats.de}\cr
\emph{Maintainer:} Peter Ruckdeschel \email{peter.ruckdeschel@uni-oldenburg.de}
}
\note{Global options controlling the plots and summaries of Evaluationlist
objects may be inspected / set by \code{\link{distrTEstoptions}()} 
and \code{\link{getdistrTEstOption}()}.
}
\section{Package versions}{
Note: The first two numbers of package versions do not necessarily reflect
 package-individual development, but rather are chosen for the
 distrXXX family as a whole in order to ease updating "depends"
 information.
}
\references{
%A more detailed manual for \pkg{distr}, \pkg{distrSim}, \pkg{distrTEst}, and \pkg{distrEx} may be downloaded from  
%\url{http://www.uni-bayreuth.de/departments/math/org/mathe7/DISTR/distr.pdf}.
A vignette for packages \pkg{distr}, \pkg{distrSim}, \pkg{distrTEst}, and \pkg{distrEx} 
is included into the mere documentation package \pkg{distrDoc} and may be called by 
\code{require("distrDoc");vignette("distr")}.
A homepage to this package is available under\cr
\url{https://distr.r-forge.r-project.org/}
}
\keyword{ package }
\concept{S4 evaluation class}
\seealso{
\code{\link[distr:0distr-package]{distr-package}}, \code{\link[distrSim:0distrSim-package]{distrSim-package}}, 
\code{\link[setRNG]{setRNG}}
}
