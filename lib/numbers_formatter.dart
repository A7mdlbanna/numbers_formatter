library numbers_formatter;

import 'package:flutter/services.dart';

///
/// ```
///   NumbersFormatter(sample: 'xxxx-xxxx-xxxx-xxxx', seperator: ' ') // 1234 1234 1234 1234
/// ```
///

class NumbersFormatter extends TextInputFormatter {

  /// sample of the formatted number you want separated by '-' ex: xxxx-xxxx-xxxx-xxxx
  final String sample;

  /// pattern that will replace the '-'
  final String separator;

  NumbersFormatter({
    required this.sample,
    required this.separator
  });

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // print('old: ${oldValue.text} - new: ${newValue.text}');
    if(newValue.text.length > (sample.replaceAll('-', '')).length) return oldValue;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    List<int> separators = [];
    for(var i = 0; i < sample.length; i++){
      if(sample[i] == '-') separators.add(i); // 4, 9, 14, 19
    }

    var inputText = newValue.text;
    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var idx = i + 1;
      if (separators.contains(idx) && idx != inputText.length) {
        bufferString.write(separator);
      }
    }

    var string = bufferString.toString(); // 0
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
