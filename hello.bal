import ballerina/http;

service /hello on new http:Listener(9090) {
    resource function get .() returns json {
        return {"greeting": "Hello World!"};
    }
}
