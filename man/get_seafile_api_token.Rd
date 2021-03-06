% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/token.R
\name{get_seafile_api_token}
\alias{get_seafile_api_token}
\title{Get seafile api token}
\usage{
get_seafile_api_token(ask = TRUE,
  username = rstudioapi::showPrompt(title = "username", message =
  "email"), password = rstudioapi::askForPassword(),
  seafile_url = get_seafile_url())
}
\arguments{
\item{ask}{booleen ask if missing}

\item{username}{seafile username or email adress}

\item{password}{seafile password}

\item{seafile_url}{seafile base url}
}
\description{
Get seafile api token
}
