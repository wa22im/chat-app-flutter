class ChatMessage {
  final String message;
  final bool isSentByMe;
  final String date;

  static List<ChatMessage> messages = [
    ChatMessage(message: "hey ", isSentByMe: false, date: "12/07/2020"),
    ChatMessage(message: " labess ?  ", isSentByMe: true, date: "12/07/2020"),
    ChatMessage(message: "are u ok ? ", isSentByMe: true, date: "12/07/2020"),
    ChatMessage(
        message: "fine and u ? ", isSentByMe: false, date: "12/07/2020"),
  ];
  ChatMessage({this.message, this.isSentByMe, this.date});
}
