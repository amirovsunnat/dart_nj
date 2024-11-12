class Room {
  static int _id = 0;
  int? roomId;
  String type;
  double price;
  bool isBooked = false;

  Room({
    required this.type,
    required this.price,
  }) {
    _id++;
    roomId = _id;
  }

  int get getRoomId => roomId!;

  // book room method
  bool bookRoom() {
    if (isBooked) {
      print("Xona band");
      return false;
    } else {
      isBooked = true;
      return true;
    }
  }

  // release room
  void releaseRoom() {
    if (isBooked == false) {
      print("Xona band qilinmagan");
    } else {
      isBooked = false;
    }
  }
}

class Guest {
  String name;
  DateTime birthdate;
  Room? room;

  Guest({
    required this.name,
    required this.birthdate,
  });

  // yoshini hisoblash
  int? calculateAge() {
    int currentYear = DateTime.now().year;
    if (birthdate.year < currentYear) {
      int yosh = currentYear - birthdate.year;
      return yosh;
    } else {
      print("Iltimos yoshingizni to'g'ri kiriting.");
      return null;
    }
  }

  // book room
  void bookRoom(int roomId, List<Room> rooms) {
    List<Room> rooms_ = rooms
        .where(
          (room) => room.roomId == roomId,
        )
        .toList();
    print(rooms_);
    if (rooms_.isNotEmpty) {
      print(rooms_);
      if (rooms_[0].bookRoom() == false) {
        print(rooms_[0].bookRoom());
        room = rooms_[0];
      }
    }
  }
}

class Booking {
  Guest guest;
  Room room;
  DateTime bookingDate;
  int nights;

  Booking({
    required this.guest,
    required this.room,
    required this.bookingDate,
    required this.nights,
  });

  // to'lov
  double? calculateTotalPrice() {
    if (guest.room != null) {
      return guest.room!.price * nights;
    }
    return null;
  }

  // booking details
  void printBookingDetails() {
    print(
        "Mehmon: ${guest.name}, Yoshi: ${guest.calculateAge()}\nRoom id: ${guest.room?.roomId}"
        "Room price: \$${guest.room?.price}, Room type: ${guest.room?.type} \nBooking date: $bookingDate\nDays to stay: $nights");
  }
}

void main(List<String> args) {
  Room room1 = Room(type: "Deluxe", price: 50);
  Room room2 = Room(type: "Standart", price: 30);
  Room room3 = Room(type: "Deluxe", price: 100);
  room1.bookRoom();

  List<Room> rooms = [room1, room2, room3];
  rooms.forEach(
    (element) => print(element.roomId),
  );

  Guest guest = Guest(name: "Sunnat", birthdate: DateTime(2020));
  int? age = guest.calculateAge();
  guest.bookRoom(1, rooms);

  Booking booking = Booking(
      guest: guest, room: room1, bookingDate: DateTime(2024), nights: 5);

  print(booking.calculateTotalPrice());
  booking.printBookingDetails();
}
