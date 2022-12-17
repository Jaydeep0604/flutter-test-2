import 'package:flutter/material.dart';

class ItemsModel {
  final String id;
  final String oCustCount;
  final String oCustName;
  final String oCustAddress;
  final String oCustPaymentStatus;

  final String nCount;
  final String nweek;
  
  final String hOrderCount;
  final String hCustName;
  final String hOrderDate;
  final String hOrderTime;
  final String hOrderstatus;
  ItemsModel(
      this.id,
      this.oCustCount,
      this.oCustName,
      this.oCustAddress,
      this.oCustPaymentStatus,
      this.nCount,
      this.nweek,
      this.hOrderCount,
      this.hCustName,
      this.hOrderDate,
      this.hOrderTime,
      this.hOrderstatus);
}
