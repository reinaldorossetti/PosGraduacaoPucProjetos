sealed class HttpState {}

class Loading extends HttpState {}

class Error extends HttpState {
  final String message;
  Error(this.message);
}

class Loaded extends HttpState {
  final String data;
  Loaded(this.data);
}

Future<HttpState> fetchData({bool succeed = true}) async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));

  if (succeed) {
    return Loaded('{"message": "Hello from server!"}');
  } else {
    return Error('Failed to fetch data.');
  }
}

void handleState(HttpState state) {
  switch (state) {
    case Loading():
      print('⏳ Loading...');
      break;

    case Loaded(:final data):
      print('✅ Success! Response: $data');
      break;

    case Error(:final message):
      print('❌ Error: $message');
      break;
  }
}

void main() async {
  HttpState state = Loading();
  handleState(state);

  // Fetching data, change to false to simulate error
  state = await fetchData(succeed: true);
  handleState(state);
}