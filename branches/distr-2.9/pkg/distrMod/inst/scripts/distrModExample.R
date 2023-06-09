## Example: skew-normal distribution
library(distrMod)

fsn <- function(x, loc = 0, scale = 1, shape = 0){ 
    u <- (x-loc)/scale
    dnorm(u)*pnorm(shape*u)/scale
}
rsn <- function(n, loc = 0, scale = 1, shape = 0){
## borrowed from package sn
    u1 <- rnorm(n)
    u2 <- rnorm(n)
    id <- (u2 > shape * u1)
    u1[id] <- (-u1[id])
    loc + scale * u1
}

##Class:parameters
setClass("SkewNormParameter", 
         representation = representation(loc = "numeric", 
                                         scale = "numeric", 
                                         shape = "numeric"),
         prototype = prototype(loc = 0, scale = 1, shape = 0, 
                               name = gettext("Parameter of the Skew Normal distribution")),
         
         contains = "Parameter",
         validity = function(object){
                if(length(object@loc) != 1)
                    stop("length of 'loc' is not equal to 1")
                if(length(object@scale) != 1)
                    stop("length of 'scale' is not equal to 1")
                if(length(object@shape) != 1)
                    stop("length of 'shape' is not equal to 1")
                if(object@scale <= 0)
                    stop("'scale' has to be positive")
                else return(TRUE)
            }
)

##Class: distribution (created using the pdf of the skew normal defined above)
setClass("SkewNorm",
         prototype = prototype(d = function(x, log = FALSE){ fsn(x, loc=0, scale=1, shape=0) },
                               r = function(n){ rsn(n, loc = 0, scale = 1, shape = 0) },
                               img = new("Reals"),
                               param = new("SkewNormParameter"),
                               .logExact = FALSE,
                               .lowerExact = FALSE),
         contains = "AbscontDistribution"
)


## you would need
#if(!isGeneric("mu")){
#   setGeneric("mu", function(object) standardGeneric("mu"))
#}
## before
#setMethod("mu", "SkewNormParameter", function(object) object@mu)

## loc, scale and shape are already generic
## accessor methods
setMethod("loc", "SkewNormParameter", function(object) object@loc)
setMethod("scale", c("SkewNormParameter", "missing", "missing"), function(x) x@scale)
setMethod("shape", "SkewNormParameter", function(object) object@shape)

## initialize method
setMethod("initialize", "SkewNorm",
    function(.Object, loc = 0, scale = 1, shape = 0) {
        .Object@img <- Reals()
        .Object@param <- new("SkewNormParameter", loc = loc, scale = scale, shape = shape,
                             name = gettext("Parameter of a skew norml distribution"))
        .Object@r <- function(n){}
        body(.Object@r) <- substitute({ rsn(n, loc = loc1, scale = scale1, shape = shape1) },
                                     list(loc1 = loc, scale1 = scale, shape1 = shape))
        .Object@d <- function(x, log = FALSE){}
        body(.Object@d) <- substitute({  fsn(x, loc = loc1, scale = scale1, shape = shape1) },
                                     list(loc1 = loc, scale1 = scale, shape1 = shape))
        .withSim <- TRUE
        r <- .Object@r
        dpq <- RtoDPQ(r)
        pfun <- dpq$pfun
        up1 <- max(rN <- r(10^getdistrOption("RtoDPQ.e")))
        low1 <- min(r(10^getdistrOption("RtoDPQ.e")))
        h <- (up1 - low1)/getdistrOption("DefaultNrFFTGridPointsExponent")
        x <- seq(from = low1, to = up1, by = h)
        px.l <- pfun(x + 0.5 * h)
        px.u <- pfun(x + 0.5 * h, lower.tail = FALSE)
        qfun <- distr:::.makeQNew(x + 0.5 * h, px.l, px.u, FALSE, yL = -Inf, yR = Inf)
        .Object@.withArith <- FALSE
        .Object@.logExact <- FALSE
        .Object@.lowerExact <- FALSE
        .Object
    })

SN <- new("SkewNorm", loc = 0, scale = 1, shape = 1)

## Generating Function
SkewNorm <- function(loc = 0, scale = 1, shape = 0){
    new("SkewNorm", loc = loc, scale = scale, shape = shape)
}

## skew normal location family
theta <- 0
names(theta) <- "loc"
SNL <- ParamFamily(name = "Skew normal location family",
                  param = ParamFamParameter(name = "location parameter", main = theta),
                  distribution = SkewNorm(loc = 0, scale = 1, shape = 1), ## scale, shape known!
                  startPar = function(x,...) c(min(x),max(x)),
                  distrSymm <- NoSymmetry(),
                  modifyParam = function(theta){ SkewNorm(loc = theta, scale = 1, shape = 1) })
SNL

#An object of class "ParamFamily"
#### name:       Skew normal location family
#
#### distribution:       Distribution Object of Class: SkewNorm
# loc: 0
# scale: 1
# shape: 1
#
#### param:      An object of class "ParamFamParameter"
#name:   location parameter
#loc:    0


x <- r(SN)(50)
est <- MLEstimator(x, SNL)

#Evaluations of Maximum likelihood estimate:
#-------------------------------------------
#An object of class ''Estimate''
#generated by call
#  MLEstimator(x = x, ParamFamily = SNL)
#samplesize:   50
#estimate:
#       loc
#-0.0891984
#Criterion:
#negative log-likelihood
#              -7.901378
