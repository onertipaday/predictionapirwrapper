\name{GoogleTrain}
\alias{GoogleTrain}
\title{
Train a model
}
\description{
This function initiates a training process against a data set previously uploaded to Google Storage and stored in mybucket/mydata
}
\usage{
GoogleTrain(auth_token, mybucket, mydata)
}
\arguments{
  \item{auth_token}{string; the token fetched using \link{GetAuthToken}}
  \item{mybucket}{string; the name of the bucket created on Google Storage}
  \item{mydata}{string; the name of the data set saved into the mybucket on the Google Storage}
}
\details{
}
\value{
a list 
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
