import ballerina/http;

service on new http:Listener(9090) {
  resource function get echo(@http:Payload string body) returns json {
    return {"message": body};
  }
}
