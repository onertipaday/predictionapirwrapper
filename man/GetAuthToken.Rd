\name{GetAuthToken}
\alias{GetAuthToken}
\title{
Fetch the authorization token using your Google account.
}
\description{
Fetch the authorization token using your Google account.
}
\usage{
GetAuthToken(email, passwd, file = "auth_token.txt", save = FALSE)
}
\arguments{
  \item{email}{string; your gmail email}
  \item{passwd}{string; your gmail password}
  \item{file}{string; the name of the file where the full analysis will be saved}
  \item{save}{logical; TRUE if you want to save the token in a text file}
}
\details{
}
\value{ 
a list containing the following fields:
\item{SID}{}
\item{LSID}{}
\item{Auth}{authorization token from your Google Account; you need this to use the Prediction API}

}
\references{
http://code.google.com/apis/predict/
}
\author{Paolo Sonego <paolo.sonego@cbm.fvg.it>}
\note{
}


\seealso{
}
\examples{}
