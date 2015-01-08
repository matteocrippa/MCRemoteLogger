# MCRemoteLogger
A quick class for iOS to remote log thanks to a php script.

## Requirements

### Webserver

- PHP4+

Upload logger.php in your preferred path and update the file according your setup

### iOS App

- AFNetworking2

Simply instantiate the remote logger:

MCRemoteLogger *remoteLog = [[MCRemoteLogger alloc] initLoggerWithHost:@"http://localhost/logger.php" andPassword:@"password"];

[remoteLog log:@"test"];
