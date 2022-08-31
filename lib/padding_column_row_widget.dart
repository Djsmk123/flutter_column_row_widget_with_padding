// ignore_for_file: overridden_fields

library padding_column_row_widget;


import 'package:flutter/material.dart';
/// Column Widget Vertical padding either from top or bottom only will be added if [mainAxisAlignment] is not [MainAxisAlignment.spaceBetween],[MainAxisAlignment.spaceAround],[MainAxisAlignment.spaceEvenly]
/// but horizontal padding will be added to childrens



class ColumnWithPadding extends Flex {
  @override
  final List<Widget> children;
  final EdgeInsets contentPadding;
  @override
  final MainAxisAlignment mainAxisAlignment;
  @override
  final  MainAxisSize mainAxisSize;
  @override
  final CrossAxisAlignment crossAxisAlignment;
  @override
  final TextDirection? textDirection;
  @override
  final VerticalDirection verticalDirection;
  @override
  final TextBaseline? textBaseline;
  @override
  final Key? key;
  ColumnWithPadding({
    this.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.contentPadding=EdgeInsets.zero,
    this.children=const <Widget>[],
  }) : super(children: children,
    key: key,
    direction: Axis.vertical,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,);

  Widget build(BuildContext context) {
    List<Widget> newChildrens=<Widget>[];
    if(mainAxisAlignment!=MainAxisAlignment.spaceBetween && mainAxisAlignment!=MainAxisAlignment.spaceEvenly && mainAxisAlignment!=MainAxisAlignment.spaceAround) {

      for (var child in children) {
        newChildrens.add(
           child.runtimeType!=Expanded && child.runtimeType!=Flexible?Padding(padding: contentPadding, child: child):child
        );
      }
    }
    else{
      for (var child in children) {
        newChildrens.add(
            child.runtimeType!=Expanded && child.runtimeType!=Flexible? Padding(padding:EdgeInsets.fromLTRB(0, contentPadding.top!=0?contentPadding.top:(contentPadding.vertical!=0?contentPadding.vertical:(0)), 0, contentPadding.bottom!=0?contentPadding.bottom:(contentPadding.vertical!=0?contentPadding.vertical:(0))), child: child):child);
      }
    }
    return Column(
        key: key,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        textDirection: textDirection,
        children:newChildrens
    );
  }
}


/// Row Widget Horizontal padding either from left or right only will be added if [mainAxisAlignment] is not [MainAxisAlignment.spaceBetween],[MainAxisAlignment.spaceAround],[MainAxisAlignment.spaceEvenly]
/// but vertical padding will be added to childrens

class RowWithPadding extends Flex {
  @override
  final List<Widget> children;
  final EdgeInsets contentPadding;
  @override
  final MainAxisAlignment mainAxisAlignment;
  @override
  final  MainAxisSize mainAxisSize;
  @override
  final CrossAxisAlignment crossAxisAlignment;
  @override
  final TextDirection? textDirection;
  @override
  final VerticalDirection verticalDirection;
  @override
  final TextBaseline? textBaseline;
  @override
  final Key? key;
  RowWithPadding({ this.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline, // NO DEFAULT: we don't know what the text's baseline should be
    this.children = const <Widget>[],
    this.contentPadding=EdgeInsets.zero,
  }) : super(  children: children,
    key: key,
    direction: Axis.horizontal,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,);

  Widget build(BuildContext context) {
    List<Widget> newChildrens=<Widget>[];
    if(mainAxisAlignment!=MainAxisAlignment.spaceBetween && mainAxisAlignment!=MainAxisAlignment.spaceEvenly && mainAxisAlignment!=MainAxisAlignment.spaceAround) {

      for (var child in children) {
        newChildrens.add(
            child.runtimeType!=Expanded && child.runtimeType!=Flexible?Padding(padding: contentPadding, child: child):child
        );
      }
    }
    else{
      for (var child in children) {
        newChildrens.add(

            child.runtimeType!=Expanded && child.runtimeType!=Flexible?Padding(padding:EdgeInsets.fromLTRB(contentPadding.left!=0?contentPadding.left:(contentPadding.horizontal!=0?contentPadding.horizontal:(0)), 0, contentPadding.right!=0?contentPadding.right:(contentPadding.horizontal!=0?contentPadding.horizontal:(0)), 0), child: child):child);
      }
    }

    return Row(
        key: key,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        textDirection: textDirection,
        children:newChildrens
    );
  }
}