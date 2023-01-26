import ballerina/http;

service /echo on new http:Listener(9090) {
    resource function post .(string msg) returns json {
        return {"message": msg};
    }
}
