import 'package:twitter_space_ui/models/user_model.dart';

class Utils {
  static List<UserModel> getUsers() {
    return [
      UserModel(
        uid: '01',
        name: 'John',
        title: 'Host',
        img: 'user_q',
        isMuted: false,
        isSpeaking: false,
      ),
      UserModel(
        uid: '02',
        name: 'Jane',
        title: 'Co-host',
        img: 'user_q',
        isMuted: false,
        isSpeaking: false,
      ),
      UserModel(
        uid: '03',
        name: 'Elon',
        title: 'Co-host',
        img: 'user_q',
        isMuted: false,
        isSpeaking: true,
      ),
      UserModel(
        uid: '04',
        name: 'Raphael',
        title: 'Speaker',
        img: 'user_q',
        isMuted: false,
        isSpeaking: false,
      ),
      UserModel(
        uid: '05',
        name: 'Kelvin',
        title: 'Listener',
        img: 'user_q',
        isMuted: true,
        isSpeaking: false,
      ),
      UserModel(
        uid: '06',
        name: 'Sam',
        title: 'Listener',
        img: 'user_q',
        isMuted: true,
        isSpeaking: false,
      ),
      UserModel(
        uid: '07',
        name: 'Rose',
        title: 'Listener',
        img: 'user_q',
        isMuted: true,
        isSpeaking: false,
      ),
      UserModel(
        uid: '08',
        name: 'Abraham',
        title: 'Listener',
        img: 'user_q',
        isMuted: true,
        isSpeaking: false,
      ),
      UserModel(
        uid: '09',
        name: 'Alfred',
        title: 'Listener',
        img: 'user_q',
        isMuted: true,
        isSpeaking: false,
      ),
      UserModel(
        uid: '10',
        name: 'Gold',
        title: 'Listener',
        img: 'user_q',
        isMuted: true,
        isSpeaking: false,
      ),
    ];
  }
}
