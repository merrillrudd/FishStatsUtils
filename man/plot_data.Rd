% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_data.R
\name{plot_data}
\alias{plot_data}
\title{Plot location of sampling data}
\usage{
plot_data(Extrapolation_List, Spatial_List, Data_Geostat = NULL,
  Lat_i = Data_Geostat[, "Lat"], Lon_i = Data_Geostat[, "Lon"],
  Year_i = Data_Geostat[, "Year"], PlotDir = paste0(getwd(), "/"),
  Plot1_name = "Data_and_knots.png", Plot2_name = "Data_by_year.png",
  col = "red", cex = 0.01, pch = 19, Year_Set,
  projargs = "+proj=longlat", map_resolution = "medium",
  land_color = "grey", country = NULL, ...)
}
\arguments{
\item{Extrapolation_List}{Output from \code{Prepare_Extrapolation_Data_Fn}}

\item{Spatial_List}{Output from \code{Spatial_Information_Fn}}

\item{Data_Geostat}{data-frame of data (with columns 'E_km', 'N_km', 'Year', 'Lon', 'Lat' at a minimum)}

\item{PlotDir}{Directory for plots}

\item{projargs}{A character string of projection arguments; the arguments must be entered exactly as in the PROJ.4 documentation; if the projection is unknown, use \code{as.character(NA)}, it may be missing or an empty string of zero length and will then set to the missing value.}

\item{land_color}{color for filling in land (use \code{land_color=rgb(0,0,0,alpha=0)} for transparent land)}

\item{country}{a character vector of country names.}

\item{...}{addition inputs to \code{plot}}
}
\description{
\code{plot_data} produces diagnostics plots for the spatial distribution of data and knots
}
