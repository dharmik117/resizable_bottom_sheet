## resizable_bottom_sheet

A customizable Flutter package for displaying resizable modal bottom sheets that automatically
adjust their height to fit their content. This provides a seamless and natural user experience by
eliminating fixed-height constraints, supporting any child widget, and offering full customization
over appearance and behavior.

## Features

Same features available in flutter`s modal bottom sheet

## Usage

```

showResizableBottomSheet(
              context: context,
              elevation: 20,
              enableDrag: false,
              child: Column(
                children: [
                  TextFormField(),
                  SizedBox(height: 30),
                  ElevatedButton(onPressed: () {}, child: Text('Submit')),
                ],
              ),
            );
```

### 3. Install

Add to your `pubspec.yaml`:

```yaml
dependencies:
  resizable_bottom_sheet: ^0.0.1
