import 'package:eshop/utils/dimenssion.dart';
import 'package:flutter/material.dart';

class dots_indicator extends StatelessWidget {
  Color color_ind ;
   dots_indicator([this.color_ind=Colors.grey]);

  @override
  Widget build(BuildContext context) {
    return Container(
                            height:dimensions.height10 - 2,
                            width: dimensions.width20 * 4.2,
                            decoration: BoxDecoration(
                                color:color_ind,
                                borderRadius: BorderRadius.circular(
                                    dimensions.radius10 / 2)),
                          );  
  }
}