import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FunctionModel extends Equatable {
  FunctionModel({required this.id, required this.name, required this.icon});

  late String id;
  late String name;
  late IconData icon;
  late String path;

  FunctionModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    icon = json["icon"];
    path = json["path"];
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "icon": icon, "path": path};

  @override
  List<Object> get props => throw UnimplementedError();
}
