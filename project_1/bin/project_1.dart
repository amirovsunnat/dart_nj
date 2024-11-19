import 'package:project_1/project_1.dart' as project_1;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  print('Hello world: ${project_1.calculate()}!');
  final uri = Uri.parse("https://catfact.ninja/fact");

  var result = await http.get(
    uri,
  );
  if (result.statusCode == 200) {
    print(result.body);
  }
}
