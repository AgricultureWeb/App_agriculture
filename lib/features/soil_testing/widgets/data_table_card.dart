import 'package:flutter/material.dart';
import 'package:krushisaathi/constants/size_config.dart';
import '../../../constants/colors.dart';

class DataTableCard extends StatelessWidget {
  final List nutrients;
  final List results;
  final List optimalResults;
  final List ratings;
  const DataTableCard(
      {super.key,
      required this.nutrients,
      required this.results,
      required this.optimalResults,
      required this.ratings});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: const Color.fromARGB(255, 190, 209, 192),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: DataTable(
            dataRowMinHeight: 18,
            dataRowMaxHeight: 24,
            columnSpacing: 4,
            headingRowHeight: 40,
            columns: [
              DataColumn(
                label: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.blockSizeHorizontal * 18,
                  child: const Text(
                    'Nutrients',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textLightGreen),
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.blockSizeHorizontal * 14,
                  child: const Text(
                    'Your Results',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textLightGreen,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.blockSizeHorizontal * 14,
                  child: const Text(
                    maxLines: 2,
                    'Optimal Results',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textLightGreen,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.blockSizeHorizontal * 14,
                  child: const Text(
                    'Ratings',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textLightGreen),
                  ),
                ),
              ),
            ],
            rows: List.generate(12, (index) {
              return DataRow(
                cells: [
                  DataCell(Text(
                    nutrients[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  )),
                  DataCell(Center(
                    child: Text(
                      results[index],
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  )),
                  DataCell(Center(
                    child: Text(
                      optimalResults[index],
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    ),
                  )),
                  DataCell(Center(
                    child: Text(
                      ratings[index],
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color:
                            ratings[index] == 'High' ? Colors.red : Colors.blue,
                      ),
                    ),
                  )),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
