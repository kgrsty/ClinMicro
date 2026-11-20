#' @keywords internal

parse_culture <- function(block) {

  meta <- get_culture_info(block)

  tibble::tibble(
    Accession = meta$Accession,
    Patient_name = meta$Patient_name,
    Sleeve_date = parse_sleeve_dates(block)
  )
}