Values <- matrix(c("2.9.0", format(Sys.time(), format="%Y-%m-%d"),1370),nrow=3)
colnames(Values) <- "distr"
rownames(Values) <- c("Version","Date","VCS/SVNRevision")
changeDescription(startDir = "C:/rtest/distr/",names=c("Version","Date","VCS/SVNRevision"),
                  pkgs="distr", values=Values)

Values <- matrix(c("1.2.3", format(Sys.time(), format="%Y-%m-%d"),1236),nrow=3,ncol=1)
colnames(Values) <- "RobAstBase"
rownames(Values) <- c("Version","Date","VCS/SVNRevision")
changeDescription(startDir = "C:/rtest/robast/",names=c("Version","Date","VCS/SVNRevision"),
                  pkgs="RobAstBase", values=Values, pathRepo="robast")

Values <- matrix(c("1.3.0", format(Sys.time(), format="%Y-%m-%d"),1236),nrow=3,ncol=1)
colnames(Values) <- "ROptEst"
rownames(Values) <- c("Version","Date","VCS/SVNRevision")
changeDescription(startDir = "C:/rtest/robast/",names=c("Version","Date","VCS/SVNRevision"),
                  pkgs="ROptEst", values=Values, pathRepo="robast")

Pkgs <- c("distrEx", "distrDoc", "distrRmetrics", "distrSim", "distrTEst",
                      "distrEllipse", "distrTeach")

Pkgs <- c("distrEx", "distrDoc", "distrRmetrics", "distrSim", "distrTEst",
                      "distrEllipse", "distrTeach")
Values <- matrix(c("2.8.1", format(Sys.time(), format="%Y-%m-%d"),1370),nrow=3,ncol=7)
colnames(Values) <- Pkgs
rownames(Values) <- c("Version","Date","VCS/SVNRevision")
Values["Version",c(1,7)] <- "2.9.0" 
changeDescription(startDir = "C:/rtest/distr/",names=c("Version","Date","VCS/SVNRevision"),
                  pkgs=Pkgs, values=Values)

Pkgs <- c("distr", "distrMod")
Values <- matrix(c("2.9.0", format(Sys.time(), format="%Y-%m-%d"),1370),nrow=3,ncol=2)
colnames(Values) <- Pkgs
rownames(Values) <- c("Version","Date","VCS/SVNRevision")
Values["Version",c(1,1)] <- "2.9.1" 
changeDescription(startDir = "C:/rtest/distr/",names=c("Version","Date","VCS/SVNRevision"),
                  pkgs=Pkgs, values=Values)

