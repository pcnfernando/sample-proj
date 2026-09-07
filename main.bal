import ballerina/http;

service /greeter on new http:Listener(8080) {

    # Greets the caller with a default message.
    # + return - a greeting message
    resource function get greeting() returns string {
        return "Hello, World!";
    }

    # Greets the caller by name.
    # + name - the name of the person to greet
    # + return - a personalized greeting message
    resource function get greeting/[string name]() returns string {
        return string `Hello, ${name}!`;
    }
}
