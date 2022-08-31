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

This package provides Column and Row Widgets with Content Padding.

## Features

- Column with Content Padding
- Row with Content Padding


## Example
![image](https://imgur.com/HmtfdPP.png)

## Usage

TODO: Add package in **Pubspec.yaml** file.

```

dependencies:
  padding_column_row_widget:
  

```

- Column widget with Padding
```
ColumnWithPadding(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  children:[
                    const Text("Only with contentPadding Column Widget"),
                    const Text("Hello this is text"),
                  ],
                ).build(context)
```
**NOTE**:Column Widget Vertical padding either from top or bottom only will be added if mainAxisAlignment is not MainAxisAlignment.spaceBetween, MainAxisAlignment.spaceAround,MainAxisAlignment.spaceEvenly but horizontal padding will be added to childrens.

- Row widget with Padding
```
RowWithPadding(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  children:[
                    const Text("Only with contentPadding Column Widget"),
                    const Text("Hello this is text"),
                  ],
                ).build(context)
```
**NOTE**:Column Widget Horizontal padding either from left or right only will be added if mainAxisAlignment is not MainAxisAlignment.spaceBetween, MainAxisAlignment.spaceAround,MainAxisAlignment.spaceEvenly but vertical padding will be added to childrens.

## Contribution

make a clone and start contributing.


