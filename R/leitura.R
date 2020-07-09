#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

#' Ler tabela com dados de histórico do netflix
#'
#' @param path Caminho para arquivo com histórico
#'
#' @return Uma \code{\link{tibble}} com as colunas:
#' @return data: data do registro
#' @return serie: Série ou Filme
#' @return titulo: Tïtulo da série ou do filme
#' @return temporada: Temporada da série ou NA para filme
#' @return episodio: Episório da série ou NA para filme
#'
#' @export
#'
#' @examples
#' # ler_netflix("meu_historico.csv")
ler_netflix <- function(path) {
  readr::read_csv(path, col_types = "cc") %>%
    dplyr::mutate(
      data = lubridate::dmy(Date),
      serie = ifelse(stringr::str_count(Title, ":") > 1,
                     "Série", "Filme"),
      titulo = ifelse(serie == "Filme", Title,
                      stringr::str_extract(Title, ".+(?=:)")),
      temporada = ifelse(serie == "Filme", NA_character_,
                         stringr::str_extract(Title, "(?<=:).+?(?=:)")),
      episodio = ifelse(serie == "Filme", NA_character_,
                       Title %>%
                         stringr::str_remove("(.+?: ){2}"))
      ) %>%
    dplyr::select(-Title, -Date)
}

