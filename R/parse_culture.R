#' @keywords internal

parse_culture <- function(block) {

  meta <- get_culture_info(block)

  tibble::tibble(
    Accession = meta$Accession,
    MRN = meta$MRN,
    Sleeve_date = parse_sleeve_dates(block)
  )
}
