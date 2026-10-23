import 'dart:io';

abstract class Notifiction {
  void send(String message);
}

class Email implements Notifiction {
  @override
  void send(String message) {
    print("Email:$message");
  }
}

class Sms implements Notifiction {
  @override
  void send(String message) {
    print("Sms:$message");
  }
}

class Whatsapp implements Notifiction {
  @override
  void send(String message) {
    print("Whatsapp:$message");
  }
}

class PushNotification implements Notifiction {
  @override
  void send(String message) {
    print("Push Notification:$message");
  }
}

void notifyUser(Notifiction service, String message) {
  service.send(message);
}

void main() {
  stdout.write("Enter your Platform: ");
  String platform = stdin.readLineSync()!;

  stdout.write("Enter your Message:");
  String message = stdin.readLineSync()!;

  if (platform == "email") {
    notifyUser(Email(), message);
  } else if (platform == "sms") {
    notifyUser(Sms(), message);
  } else if (platform == "whatsapp") {
    notifyUser(Whatsapp(), message);
  } else if (platform == "push") {
    notifyUser(PushNotification(), message);
  } else {
    print("Unavailable Platform");
  }
}
