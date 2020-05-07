import 'dart_builder.dart';

var list = <String>[
  """
enum TextAlign {
  /// Align the text on the left edge of the container.
  left,

  /// Align the text on the right edge of the container.
  right,

  /// Align the text in the center of the container.
  center,

  /// Stretch lines of text that end with a soft line break to fill the width of
  /// the container.
  ///
  /// Lines that end with hard line breaks are aligned towards the [start] edge.
  justify,

  /// Align the text on the leading edge of the container.
  ///
  /// For left-to-right text ([TextDirection.ltr]), this is the left edge.
  ///
  /// For right-to-left text ([TextDirection.rtl]), this is the right edge.
  start,

  /// Align the text on the trailing edge of the container.
  ///
  /// For left-to-right text ([TextDirection.ltr]), this is the right edge.
  ///
  /// For right-to-left text ([TextDirection.rtl]), this is the left edge.
  end,
}


  """,
  """
enum TextOverflow {
  /// Clip the overflowing text to fix its container.
  clip,

  /// Fade the overflowing text to transparent.
  fade,

  /// Use an ellipsis to indicate that the text has overflowed.
  ellipsis,
}
  """,

  """
const TextStyle({
    this.inherit = true,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.debugLabel,
    String fontFamily,
    String package,
  })
  """
  ,

  """
  const Shadow({
    this.color = const Color(_kColorDefault),
    this.offset = Offset.zero,
    this.blurRadius = 0.0,
  })
  """
  ,

  """
  const RichText({
    Key key,
    @required this.text,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.textScaleFactor = 1.0,
    this.maxLines,
    this.locale,
  })
  """
  ,

  """
  const DefaultTextStyle({
    Key key,
    @required this.style,
    this.textAlign,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.maxLines,
    @required Widget child,
  })
  """
  ,

   """
   const TextStyle({
    this.inherit = true,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.debugLabel,
    String fontFamily,
    String package,
  })
  """
  ,

  """
  const TextSpan({
    this.style,
    this.text,
    this.children,
    this.recognizer,
  })
  """
  ,

  """
TextFormField({
    Key key,
    this.controller,
    String initialValue,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction textInputAction,
    TextStyle style,
    TextDirection textDirection,
    TextAlign textAlign = TextAlign.start,
    bool autofocus = false,
    bool obscureText = false,
    bool autocorrect = true,
    bool autovalidate = false,
    bool maxLengthEnforced = true,
    int maxLines = 1,
    int maxLength,
    VoidCallback onEditingComplete,
    ValueChanged<String> onFieldSubmitted,
    FormFieldSetter<String> onSaved,
    FormFieldValidator<String> validator,
    List<TextInputFormatter> inputFormatters,
    bool enabled = true,
    double cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool enableInteractiveSelection = true,
    InputCounterWidgetBuilder buildCounter,
  })
  """,

  """
  TextEditingController({
     String text 
  })
  """,

  """
enum TextCapitalization {
  /// Defaults to an uppercase keyboard for the first letter of each word.
  ///
  /// Corresponds to `InputType.TYPE_TEXT_FLAG_CAP_WORDS` on Android, and
  /// `UITextAutocapitalizationTypeWords` on iOS.
  words,

  /// Defaults to an uppercase keyboard for the first letter of each sentence.
  ///
  /// Corresponds to `InputType.TYPE_TEXT_FLAG_CAP_SENTENCES` on Android, and
  /// `UITextAutocapitalizationTypeSentences` on iOS.
  sentences,

  /// Defaults to an uppercase keyboard for each character.
  ///
  /// Corresponds to `InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS` on Android, and
  /// `UITextAutocapitalizationTypeAllCharacters` on iOS.
  characters,

  /// Defaults to a lowercase keyboard.
  none,
}
  """,

  """
  enum TextInputAction {
  /// Logical meaning: There is no relevant input action for the current input
  /// source, e.g., [TextField].
  ///
  /// Android: Corresponds to Android's "IME_ACTION_NONE". The keyboard setup
  /// is decided by the OS. The keyboard will likely show a return key.
  ///
  /// iOS: iOS does not have a keyboard return type of "none." It is
  /// inappropriate to choose this [TextInputAction] when running on iOS.
  none,

  /// Logical meaning: Let the OS decide which action is most appropriate.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_UNSPECIFIED". The OS chooses
  /// which keyboard action to display. The decision will likely be a done
  /// button or a return key.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyDefault". The title displayed in
  /// the action button is "return".
  unspecified,

  /// Logical meaning: The user is done providing input to a group of inputs
  /// (like a form). Some kind of finalization behavior should now take place.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_DONE". The OS displays a
  /// button that represents completion, e.g., a checkmark button.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyDone". The title displayed in the
  /// action button is "Done".
  done,

  /// Logical meaning: The user has entered some text that represents a
  /// destination, e.g., a restaurant name. The "go" button is intended to take
  /// the user to a part of the app that corresponds to this destination.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_GO". The OS displays a
  /// button that represents taking "the user to the target of the text they
  /// typed", e.g., a right-facing arrow button.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyGo". The title displayed in the
  /// action button is "Go".
  go,

  /// Logical meaning: Execute a search query.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_SEARCH". The OS displays a
  /// button that represents a search, e.g., a magnifying glass button.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeySearch". The title displayed in the
  /// action button is "Search".
  search,

  /// Logical meaning: Sends something that the user has composed, e.g., an
  /// email or a text message.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_SEND". The OS displays a
  /// button that represents sending something, e.g., a paper plane button.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeySend". The title displayed in the
  /// action button is "Send".
  send,

  /// Logical meaning: The user is done with the current input source and wants
  /// to move to the next one.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_NEXT". The OS displays a
  /// button that represents moving forward, e.g., a right-facing arrow button.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyNext". The title displayed in the
  /// action button is "Next".
  next,

  /// Logical meaning: The user wishes to return to the previous input source
  /// in the group, e.g., a form with multiple [TextField]s.
  ///
  /// Android: Corresponds to Android's "IME_ACTION_PREVIOUS". The OS displays a
  /// button that represents moving backward, e.g., a left-facing arrow button.
  ///
  /// iOS: iOS does not have a keyboard return type of "previous." It is
  /// inappropriate to choose this [TextInputAction] when running on iOS.
  previous,

  /// Logical meaning: In iOS apps, it is common for a "Back" button and
  /// "Continue" button to appear at the top of the screen. However, when the
  /// keyboard is open, these buttons are often hidden off-screen. Therefore,
  /// the purpose of the "Continue" return key on iOS is to make the "Continue"
  /// button available when the user is entering text.
  ///
  /// Historical context aside, [TextInputAction.continueAction] can be used any
  /// time that the term "Continue" seems most appropriate for the given action.
  ///
  /// Android: Android does not have an IME input type of "continue." It is
  /// inappropriate to choose this [TextInputAction] when running on Android.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyContinue". The title displayed in the
  /// action button is "Continue". This action is only available on iOS 9.0+.
  ///
  /// The reason that this value has "Action" post-fixed to it is because
  /// "continue" is a reserved word in Dart, as well as many other languages.
  continueAction,

  /// Logical meaning: The user wants to join something, e.g., a wireless
  /// network.
  ///
  /// Android: Android does not have an IME input type of "join." It is
  /// inappropriate to choose this [TextInputAction] when running on Android.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyJoin". The title displayed in the
  /// action button is "Join".
  join,

  /// Logical meaning: The user wants routing options, e.g., driving directions.
  ///
  /// Android: Android does not have an IME input type of "route." It is
  /// inappropriate to choose this [TextInputAction] when running on Android.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyRoute". The title displayed in the
  /// action button is "Route".
  route,

  /// Logical meaning: Initiate a call to emergency services.
  ///
  /// Android: Android does not have an IME input type of "emergencyCall." It is
  /// inappropriate to choose this [TextInputAction] when running on Android.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyEmergencyCall". The title displayed
  /// in the action button is "Emergency Call".
  emergencyCall,

  /// Logical meaning: Insert a newline character in the focused text input,
  /// e.g., [TextField].
  ///
  /// Android: Corresponds to Android's "IME_ACTION_NONE". The OS displays a
  /// button that represents a new line, e.g., a carriage return button.
  ///
  /// iOS: Corresponds to iOS's "UIReturnKeyDefault". The title displayed in the
  /// action button is "return".
  ///
  /// The term [TextInputAction.newline] exists in Flutter but not in Android
  /// or iOS. The reason for introducing this term is so that developers can
  /// achieve the common result of inserting new lines without needing to
  /// understand the various IME actions on Android and return keys on iOS.
  /// Thus, [TextInputAction.newline] is a convenience term that alleviates the
  /// need to understand the underlying platforms to achieve this common behavior.
  newline,
}

  """,

  """
  const InputDecoration({
    this.icon,
    this.labelText,
    this.labelStyle,
    this.helperText,
    this.helperStyle,
    this.hintText,
    this.hintStyle,
    this.hintMaxLines,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.hasFloatingPlaceholder = true,
    this.isDense,
    this.contentPadding,
    this.prefixIcon,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.suffixIcon,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.counter,
    this.counterText,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
    this.enabled = true,
    this.semanticCounterText,
    this.alignLabelWithHint,
  })
  """,

"""
const UnderlineInputBorder({
    BorderSide borderSide = const BorderSide(),
    this.borderRadius = const BorderRadius.only(topLeft: Radius.circular(4.0),topRight: Radius.circular(4.0),),
  })
""",

"""
const OutlineInputBorder({
    BorderSide borderSide = const BorderSide(),
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
    this.gapPadding = 4.0,
  })
""",

"""
const TextField({
    Key key,
    this.controller,
    this.focusNode,
    this.decoration = const InputDecoration(),
    TextInputType keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.maxLines = 1,
    this.maxLength,
    this.maxLengthEnforced = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.down,
    this.enableInteractiveSelection,
    this.onTap,
    this.buildCounter,
  })
""",

"""
enum TextDecorationStyle {
  /// Draw a solid line
  solid,

  /// Draw two lines
  double,

  /// Draw a dotted line
  dotted,

  /// Draw a dashed line
  dashed,

  /// Draw a sinusoidal line
  wavy
}
""",

"""
enum TextBaseline {
  /// The horizontal line used to align the bottom of glyphs for alphabetic characters.
  alphabetic,

  /// The horizontal line used to align ideographic characters.
  ideographic,
}
""",

"""
enum TextDirection {
  /// The text flows from right to left (e.g. Arabic, Hebrew).
  rtl,

  /// The text flows from left to right (e.g., English, French).
  ltr,
}
""",

"""
enum FontStyle {
  /// Use the upright glyphs
  normal,

  /// Use glyphs designed for slanting
  italic,
}
""",
];

void main(List<String> arguments) {

  //打印输出所有
  list.map(translate).toList().join('\n\n\n');

  //打印输出最后一个
  // translate(list.first);

}

 translate(String src) {
  print(translateDart(src));
  // print(translateJS(src));
}
