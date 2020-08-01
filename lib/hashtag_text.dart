import 'package:flutter/cupertino.dart';
import 'package:hashtagable/hashtagable.dart';

/// Show decorated tagged text only to be shown
///
/// [decoratedStyle] is textStyle of tagged text.
/// [basicStyle] is textStyle of others.
/// [onTap] is called when a tagged text is tapped.
class HashTagText extends StatelessWidget {
  HashTagText(
      {@required this.text,
      @required this.basicStyle,
      @required this.decoratedStyle,
      this.onTap,
      this.textAlign,
      this.textDirection,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.locale,
      this.strutStyle,
      this.textWidthBasis,
      this.textHeightBehavior});

  final String text;
  final TextStyle basicStyle;
  final TextStyle decoratedStyle;
  final Function(String) onTap;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final Locale locale;
  final StrutStyle strutStyle;
  final TextWidthBasis textWidthBasis;
  final TextHeightBehavior textHeightBehavior;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: getHashTagTextSpan(
          decoratedStyle: decoratedStyle,
          basicStyle: basicStyle,
          onTap: onTap,
          source: text),
      textAlign: textAlign,
      textDirection: textDirection,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      locale: locale,
      strutStyle: strutStyle,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
