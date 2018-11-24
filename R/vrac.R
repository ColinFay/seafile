#' get ping using token
#'
#' @param seafile_url seafile base url
#' @param token token
#'
#' @return pong as string if OK
#' @export
#' @importFrom httr GET add_headers content
#' @importFrom glue glue
#' @examples
#' ping(seafile_url = "http://drop.legum.fr:8000/",token = ask_for_token(seafile_url = "http://drop.legum.fr:8000/",username = "vincent@thinkr.fr"))

ping <-
  function(seafile_url = get_seafile_url()  ,
           token = get_seafile_api_token()) {
    template_base(base = "ping",
                        seafile_url = seafile_url,
                        token = token)

  }



template_base <-
  function(base = "ping",
           seafile_url = get_seafile_url()  ,
           token = get_seafile_api_token()) {
    # curl -H 'Authorization: Token 24fd3c026886e3121b2ca630805ed425c272cb96' -H 'Accept: application/json; indent=4' https://cloud.seafile.com/api2/repos/

    r <- httr::GET(
      glue::glue("{seafile_url}/api2/{base}/"),
      add_headers(Authorization = glue::glue("Token {token}"))
    )
    httr::content(r)

  }



#' list libraries
#'
#' @param seafile_url seafile base url
#' @param token seafil token
#' @importFrom dplyr bind_rows
#' @return a data.frame
#' @importFrom magrittr %>%
#' @export
#'
#' @examples
list_libraries <-
  function(seafile_url = get_seafile_url()  ,
           token = get_seafile_api_token()) {
    template_base(base = "repos",
                        seafile_url = seafile_url,
                        token = token) %>%
      bind_rows()
  }