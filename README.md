<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Flutter Package for formatting Numbers and Text as you type.

## Getting started

Start by adding the package to your `pubspec.yaml`.

```yaml
    dependencies:
    numbers_formatter:
      git:
        url: https://github.com/A7mdlbanna/numbers_formatter.git
```

or use the following command

`flutter pub add numbers_formatter --git-url=https://github.com/A7mdlbanna/numbers_formatter.git`

## Usage

```dart
  TextFormField(
    ...
    inputFormatters: [
      ...
      NumbersFormatter(sample: '000-000-0000', separator: ' '),
    ],
);
```
