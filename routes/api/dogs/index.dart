import 'package:dart_frog/dart_frog.dart';

List dogs = [
  {'name': 'Fido', 'breed': 'Golden Retriever'},
  {'name': 'Rex', 'breed': 'German Shepherd'},
  {'name': 'Buddy', 'breed': 'Labrador Retriever'},
];

Response onRequest(RequestContext context) {
  final request = context.request;

  if (request.method == HttpMethod.get) {
    return Response.json(body: dogs);
  }

  return Response(body: 'Unimplemented method!');
}
