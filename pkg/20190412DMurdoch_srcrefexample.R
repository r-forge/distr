sourcefile <- tempfile()
writeLines("", sourcefile) # create it

srcfile <- srcfile(sourcefile)
srcfile$timestamp <- NULL  # Prevent warnings about changed file

linecount <- 1

sourcelines <- c("# here are some comments",
                 "# which will appear as the ",
                 "# source of a generated function")
sourcelines[4] <- paste("One random value: ", runif(1))

f <- function(myargs) {}

start <- linecount
con <- file(sourcefile, open = "a")
writeLines(sourcelines, con)
close(con)
linecount <- linecount + length(sourcelines)

srcref <- srcref(srcfile, c(start +1, 1, linecount, nchar(sourcelines[length(sourcelines)])))
attr(f, "srcref") <- srcref
f

g <- function(myargs) {}
sourcelines[4] <- "A nonrandom value:  0"
start <- linecount
con <- file(sourcefile, open = "a")
writeLines(sourcelines, con)
close(con)
linecount <- linecount + length(sourcelines)

srcref <- srcref(srcfile, c(start +1, 1, linecount, nchar(sourcelines[length(sourcelines)])))
attr(g, "srcref") <- srcref
g
