import ballerina/log;
import ballerina/http;

service /echo on new http:Listener(9090) {
    resource function post .(string msg) returns json {
        return {"message": msg};
    }

    resource function post callback(@http:Payload json payload) returns http:Ok {
        log:printInfo(payload.toJsonString());
        return {};
    }
}
