#' @keywords internal

parse_org_block <- function(org_block,
                            Accession,
                            Patient_name) {

  organism <- get_org_name(org_block)

  tibble::tibble(
    Accession = Accession,
    Patient_name = Patient_name,
    Organism = organism
  )
}






