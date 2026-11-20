#' Parses a single sleeve culture report and extracts relevant sleeve microbiology information.
#' @keywords internal

parse_sleeve_culture <- function(block) {

  meta <- get_culture_info(block)

  tibble::tibble(
    Accession = meta$Accession,
    Patient_name = meta$Patient_name,
    Sleeve_date = parse_sleeve_dates(block)
  )
}