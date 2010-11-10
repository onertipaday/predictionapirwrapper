\name{GooglePredict}
\alias{GooglePredict}
\title{
Predict 
}
\description{
Prediction against a trained model using new input data.
}
\usage{
GooglePredict(auth_token, mybucket, mydata, myinput)
}
\arguments{
  \item{auth_token}{string; the token fetched using \link{GetAuthToken}}
  \item{mybucket}{string; the name of the bucket created on Google Storage}
  \item{mydata}{string; the name of the data set saved into the mybucket on the Google Storage}
  \item{myinput}{it can be string, numeric, etc.; a value to test your trained classier}
}
\details{
}
\value{
a list
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