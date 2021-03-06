% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_local_dirs.R
\name{create_local_dirs}
\alias{create_local_dirs}
\title{Create local directories}
\usage{
create_local_dirs(other_dirs = NULL)
}
\arguments{
\item{other_dirs}{If needed, a character vector containing the names for extra directories.}
}
\description{
Creates a set of standard directories in the repository: scripts, results (and subdirectories for img and tab)
}
\examples{

\dontrun{
create_dirs() # This creates default directories

create_dirs(other_dirs = "app") # Creates all default directories and an "app" directory
}

}
