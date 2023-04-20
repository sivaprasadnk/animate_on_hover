## Animate on Hover

Animate widgets on web when hovered using this package.

## Screenshot

![screen](https://user-images.githubusercontent.com/75713903/233435577-38a0a6a3-fba2-4557-a02f-3de96b274d62.gif)


## Getting started

Add this to your package's `pubspec.yaml` file

```yaml
dependencies:
  animate_on_hover: ^1.0.0
```

## Usage

Next, you just have to import the package using:

```dart
import 'package:animate_on_hover/animate_on_hover.dart';
```

```dart
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 75,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
        ).increaseSizeOnHover(1.5),
      ),
    );
  }
```

## Additional information

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
