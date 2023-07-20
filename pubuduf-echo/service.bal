import ballerina/http;

service on new http:Listener(9090) {
  resource function post echo(@http:Payload string body) returns json {
    return {"message": body};
  }

  resource function get hello() returns json {
    return {"greeting": "Hello World!"};
  }
}
