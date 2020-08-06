import 'package:intl/intl.dart';

DateFormat _dateFormat = DateFormat('yyyy-MM-dd – kk:mm');

String timestampToString(int time) {
  final date = DateTime.fromMillisecondsSinceEpoch(time);
  return _dateFormat.format(date);
}
