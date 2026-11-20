#' creates a dataframe (tibble) with one row per organism found in a culture report.
#' @keywords internal
#' @return organism by name and accession

parse_org <- function(block) {

  meta <- get_culture_info(block)

  orgs <- extract_organisms(block)

  tibble::tibble(
    Accession = meta$Accession,
    MRN = meta$MRN,
    Organism = orgs
  )
}

