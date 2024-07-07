import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class ExpensesModel {
  final String? id;
  final String title;
  final String details;
  final Double price;
  final DateTime date;
  final Map<String, dynamic> category;
  final Map<String, dynamic> type;

  const ExpensesModel({
    required this.id,
    required this.title,
    required this.details,
    required this.price,
    required this.date,
    required this.category,
    required this.type,
  });

  factory ExpensesModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ExpensesModel(
      id: doc.id, 
      title: doc['title'], 
      details: doc['details'], 
      price: doc['price'], 
      date: (data['date'] as Timestamp).toDate(), 
      category: Map<String, dynamic>.from(data['category']), 
      type: Map<String, dynamic>.from(data['type']),
      );
  }
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'details': details,
      'price': price,
      'date': Timestamp.fromDate(date),
      'category': category,
      'type': type,
    };
  }
}

Future<void> addItem(ExpensesModel expense) async {
  await FirebaseFirestore.instance.collection('expenses').add(expense.toMap());
}

Future<List<ExpensesModel>> getItems() async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('expense').get();
  return snapshot.docs.map((doc) => ExpensesModel.fromDocument(doc)).toList();
}
