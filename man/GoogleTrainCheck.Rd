\name{GoogleTrainCheck}
\alias{GoogleTrainCheck}
\title{
Check the training process status
}
\description{
Check if the training process is either still running or completed
}
\usage{
GoogleTrainCheck(auth_token, mybucket, mydata)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{auth_token}{string; the token fetched using \link{GetAuthToken}}
\item{mybucket}{string; the name of the bucket created on Google Storage}
\item{mydata}{string; the name of the data set saved into the mybucket on the Google Storage}
}
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