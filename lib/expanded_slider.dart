import 'package:flutter/material.dart';


class ExpandedSlider extends StatelessWidget {

final double sliderValue;
final void Function(double) handleValue;
ExpandedSlider(this.sliderValue,this.handleValue);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                            child: Stack(
                              children: [
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 15.0),
                                      overlayShape: RoundSliderOverlayShape(
                                          overlayRadius: 30.0),
                                    ),
                                    child: Slider(
                                      label: sliderValue.toString(),
                                      min: 60.0,
                                      max: 225.0,
                                      inactiveColor: Colors.grey,
                                      activeColor: const Color(0xff2BA1BB),
                                      value: sliderValue,
                                      onChanged: handleValue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
  }
}