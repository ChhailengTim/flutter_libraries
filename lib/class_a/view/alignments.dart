import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AlignmentsScreen extends StatefulWidget {
  const AlignmentsScreen({super.key});

  @override
  State<AlignmentsScreen> createState() => _AlignmentsScreenState();
}

class _AlignmentsScreenState extends State<AlignmentsScreen> {
  bool reStart = true;
  bool center = true;
  bool topLeft = true;
  bool topCenter = true;
  bool topRight = true;
  bool centerLeft = true;
  bool centerInCenter = true;
  bool centerRight = true;
  bool bottomLeft = true;
  bool bottomCenter = true;
  bool bottomRight = true;

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());

    return Scaffold(
      appBar: AppBar(
        title: Text(appText.alignment),
      ),
      body: center
          ? Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  setState(() {
                    center = !center;
                  });
                },
                child: Container(
                  height: AppSize.a100,
                  width: AppSize.a100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(AppSize.a10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Tap!'),
                      Text('Alignment'),
                    ],
                  ),
                ),
              ),
            )
          : topLeft
              ? Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        topLeft = !topLeft;
                      });
                    },
                    child: Container(
                      height: AppSize.a100,
                      width: AppSize.a100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(AppSize.a10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Tap!'),
                          Text('Alignment'),
                        ],
                      ),
                    ),
                  ),
                )
              : topCenter
                  ? Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            topCenter = !topCenter;
                          });
                        },
                        child: Container(
                          height: AppSize.a100,
                          width: AppSize.a100,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(AppSize.a10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Tap!'),
                              Text('Alignment'),
                            ],
                          ),
                        ),
                      ),
                    )
                  : topRight
                      ? Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                topRight = !topRight;
                              });
                            },
                            child: Container(
                              height: AppSize.a100,
                              width: AppSize.a100,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius:
                                    BorderRadius.circular(AppSize.a10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Tap!'),
                                  Text('Alignment'),
                                ],
                              ),
                            ),
                          ),
                        )
                      : centerLeft
                          ? Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    centerLeft = !centerLeft;
                                  });
                                },
                                child: Container(
                                  height: AppSize.a100,
                                  width: AppSize.a100,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.circular(AppSize.a10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text('Tap!'),
                                      Text('Alignment'),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : centerInCenter
                              ? Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        centerInCenter = !centerInCenter;
                                      });
                                    },
                                    child: Container(
                                      height: AppSize.a100,
                                      width: AppSize.a100,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(AppSize.a10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text('Tap!'),
                                          Text('Alignment'),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : centerRight
                                  ? Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            centerRight = !centerRight;
                                          });
                                        },
                                        child: Container(
                                          height: AppSize.a100,
                                          width: AppSize.a100,
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.circular(
                                                AppSize.a10),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text('Tap!'),
                                              Text('Alignment'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : bottomLeft
                                      ? Align(
                                          alignment: Alignment.bottomLeft,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                bottomLeft = !bottomLeft;
                                              });
                                            },
                                            child: Container(
                                              height: AppSize.a100,
                                              width: AppSize.a100,
                                              decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppSize.a10),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text('Tap!'),
                                                  Text('Alignment'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : bottomCenter
                                          ? Align(
                                              alignment: Alignment.bottomCenter,
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    bottomCenter =
                                                        !bottomCenter;
                                                  });
                                                },
                                                child: Container(
                                                  height: AppSize.a100,
                                                  width: AppSize.a100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            AppSize.a10),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Text('Tap!'),
                                                      Text('Alignment'),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          : reStart
                                              ? Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: InkWell(
                                                    onTap: (() => setState(() {
                                                          reStart = !reStart;
                                                        })),
                                                    child: Container(
                                                      height: AppSize.a100,
                                                      width: AppSize.a100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    AppSize
                                                                        .a10),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text('Tap!'),
                                                          Text('Alignment'),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Align(
                                                  alignment: Alignment.center,
                                                  child: InkWell(
                                                    onTap: (() => setState(() {
                                                          reStart == center;
                                                        })),
                                                    child: Container(
                                                      height: AppSize.a100,
                                                      width: AppSize.a100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    AppSize
                                                                        .a10),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text('Tap!'),
                                                          Text('Alignment'),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
    );
  }
}
