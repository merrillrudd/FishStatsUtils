
#.onLoad <- function(libname, pkgname) {
#}

.onAttach <- function(libname, pkgname) {
  if( getOption("repos")["CRAN"] == "@CRAN@" ){
    options(repos = c("CRAN" = "http://cran.us.r-project.org"))
  }
  if( !"INLA" %in% utils::installed.packages()[,1] ){
    packageStartupMessage("Installing package: INLA...")
    #utils::install.packages("INLA", repos="https://www.math.ntnu.no/inla/R/stable")

    # Over-ride default install for R 3.5.0 through R 3.5.3
    Rvers = numeric_version(paste0(R.version[6:7],collapse="."))
    if( Rvers<numeric_version("3.6.0") & Rvers>numeric_version("3.5.0") ){
      utils::install.packages( "https://inla.r-inla-download.org/R/stable/bin/windows/contrib/3.5/INLA_18.07.12.zip" )
    }else{
      utils::install.packages("INLA", repos=c(getOption("repos"), INLA="https://inla.r-inla-download.org/R/stable"), dep=TRUE)
    }
  }
  if( !"TMBhelper" %in% utils::installed.packages()[,1] || utils::packageVersion("TMBhelper") < numeric_version("1.2.0") ){
    packageStartupMessage("Installing TMBhelper, or updating package because previously using version < 1.2.0")
    devtools::install_github("kaskr/TMB_contrib_R/TMBhelper")
  }
}

#' Copy of FishStatsUtils::plot_loadings
#'
#' Included for continuity when using old scripts
#'
#' Please use \code{?FishStatsUtils::plot_loadings} to see list of arguments and usage
#' @export
PlotLoadings = function( ... ){
  .Deprecated( new="FishStatsUtils::plot_loadings" )
  FishStatsUtils::plot_loadings( ... )
}

#' Copy of FishStatsUtils::Rotate_Fn
#'
#' Included for continuity when using old scripts
#'
#' Please use \code{?FishStatsUtils::rotate_factors} to see list of arguments and usage
#' @export
Rotate_Fn = function( ... ){
  .Deprecated( new="FishStatsUtils::rotate_factors" )
  FishStatsUtils::rotate_factors( ... )
}


