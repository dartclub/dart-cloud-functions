import 'package:firebase_functions_interop/firebase_functions_interop.dart';
import 'package:node_io/node_io.dart';

import 'dart:convert';

void main() {
  functions['helloWorld'] =
      FirebaseFunctions.https.onRequest(helloWorld);
}

void helloWorld(ExpressHttpRequest request) {
  request.response.headers.contentType = ContentType.JSON;
  request.response.write(json.encode({'key' : 'hello from dart json'}));
  request.response.close();
}


