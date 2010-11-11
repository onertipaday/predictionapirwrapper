DeleteTrainedModel <-
function(auth_token, mybucket, mydata) {
  h = basicTextGatherer()
  b = basicTextGatherer()
  curlPerform(url = paste("https://www.googleapis.com/prediction/v1.1/training/", mybucket, "%2F", mydata, sep=""),
    customrequest = "DELETE",
    httpheader = c(Authorization = paste("GoogleLogin auth=", auth_token, sep = ""), 'Content-Type' = "application/json"),
    headerfunction = h$update,
    writefunction = b$update
    )
  junk <- list(status = parseHTTPHeader(h$value()), body = b$value())
  if(junk$status["status"]==400) print(junk$status["status"]) else cat ("Deleted Model for bucket: ", mybucket,", object: ", mydata,"\n")
}

