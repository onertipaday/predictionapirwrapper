\name{DeleteTrainedModel}
\alias{DeleteTrainedModel}
\title{
DeleteTrainedModel
}
\description{
Delete a trained model
}
\usage{
DeleteTrainedModel(auth_token, mybucket, mydata)
}
\arguments{
\item{auth_token}{string; the token fetched using \link{GetAuthToken}}
\item{mybucket}{string; the name of the bucket created on Google Storage}
\item{mydata}{string; the name of the data set saved into the mybucket on the Google Storage}
}
\details{
}
\value{
An empty response if a model exists and is successfully deleted, and a 400 error if the model does not exist.
}
\references{
http://code.google.com/apis/predict/
}
\author{Paolo Sonego <paolo.sonego@gmail.com>}
\note{
}


\seealso{
}
\examples{}
