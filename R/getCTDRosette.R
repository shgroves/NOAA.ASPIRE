

# Function to create CTD Rosette dataframes based on specified metric or expedition

# NOAA Exploration Science and Technology Data Analysis team: Groves, Egan
# Last update: Mar 2023


#' CTD Rosette Operations
#' @export
#' @description
#' Creates CTD Rosette dataframes based on specified metric or expedition
#' @param metric A string indicating the metric.
#' \itemize{
#'  \item{Choose from one of the following: }{"conductivity", "temperature", "depth", "salinity", "oxygen",
#' "oxidation reduction potential", "turbidity", "fluorometer"  or "All"}
#'  \item{Default value: }{"All"}
#'  \item{Note not all metrics were collected on each expedition.}
#' }
#' @param expedition A string indicating the expedition.
#' \itemize{
#'  \item{Choose from one of the following: }
#'  * "EX1805" (East Florida Telemapping),
#'  * "EX1810" (Mapping Deepwater Areas in the Caribbean and South Atlantic Bight),
#'  * "EX1812" (Caribbean/SAB ROV and Mapping),
#'  * "EX1903" (Southeastern US Atlantic Continental Margin Mapping),
#'  * "EX1905" (New England and Canada Mapping),
#'  * "EX1906" (Southeast US and Bahamas, Leg 1 Mapping),
#'  * "EX2101" (2021 EM304 SAT + Mapping Shakedown),
#'  * "EX2102" (2021 Technology Demonstration),
#'  * "EX2106" (2021 U.S. Blake Plateau Mapping 2),
#'  * "EX2107" (Windows to the Deep 2021: Blake Plateau),
#'  * "EX2202" (Caribbean Mapping ),
#'  * "EX2203" (2022 Puerto Rico Mapping and Deep-Sea Camera Demonstration),
#'  *  Or you can select "All" for all expeditions.
#'
#'
#'  \item{Default value = }{"All"}
#'  \item{See https://oceanexplorer.noaa.gov/explorations/aspire/welcome.html
#'  for a list of all ASPIRE expeditions}
#' }
#' @returns This function returns a dataframe with the following columns:
#'\describe{
#' \item{YEAR}{The year}
#' \item{EXPEDITION}{A code indicating a specified cruise, ex: EX2203 or all expeditions, ex. "ALL"}
#' \item{FEATURE}{A code for the geological feature surveyed. If "All" expeditions is specified, FEATURE will = "ALL"}
#' \item{METRIC}{The metric:}
#' \itemize{*conductivity (S/m),
#' *temperature (C),
#' *depth (m),
#' *salinity,
#' *oxygen (%),
#' *oxygen2 (mg/l),
#' *oxygen3 (μmol/kg)
#' *density (kg/m³),
#' *sound speed (m/s),
#' *pressure (dbar)}
#'
#' }
#' @details
#' NOAA Ocean Exploration collects oceanographic data and water samples by request during mapping and ROV
#' expeditions on *Okeanos Explorer* with a CTD rosette system. The CTD rosette contains conductivity,
#' temperature, depth, oxygen, salinity, oxidation reduction potential, turbidity, and fluorometer sensors.
#' CTD rosette data are archived as .hex and .cnv files, which are produced using Seabird software.The oce R package
#' (Kelley & Richards 2020) was used to read in the .cnv file into R where the CTD rosette data were extracted.
#' @seealso \code{\link{getROVCTD}}
#' @examples
#' #Get temperature profiles from all ASPRIRE cruises
#' EX_CTD = getCTDRosette(metric = "temperature", expedition = "All")
#' #Returns all of the CTD Rosette temperature data collected during the ASPIRE campaign
#'
#' #Get all of the CTD Rosette data collected from a single expedition
#' EX_CTD = getCTDRosette(metric = "ALL", expedition = "EX1903")
#' #Returns all of the CTD Rosette data collected during the EX1903 expedition
#' @importFrom magrittr "%>%"

getCTDRosette = function(metric = "NULL", expedition = "NULL"){



}
