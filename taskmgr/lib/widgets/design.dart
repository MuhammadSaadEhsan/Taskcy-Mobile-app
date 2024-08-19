import 'package:flutter/material.dart';

Widget design1({double widths = 35}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        c2(widths),
        const SizedBox(
          width: 5,
        ),
        c1(),
        const SizedBox(
          width: 5,
        ),
        c1()
      ],
    ),
  );
}

Widget design2({double widths = 35}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        c1(),
        const SizedBox(
          width: 5,
        ),
        c2(widths),
        const SizedBox(
          width: 5,
        ),
        c1()
      ],
    ),
  );
}

Widget design3({double widths = 35}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        c1(),
        const SizedBox(
          width: 5,
        ),
        c1(),
        const SizedBox(
          width: 5,
        ),
        c2(widths),
      ],
    ),
  );
}

Widget c1() {
  return Container(
    height: 7,
    width: 7,
    decoration: BoxDecoration(
        color: const Color.fromARGB(80, 117, 110, 243),
        borderRadius: BorderRadius.circular(30)),
  );
}

Widget c2(widths) {
  return Container(
    height: 7,
    width: widths,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(117, 110, 243, 1),
        borderRadius: BorderRadius.circular(30)),
  );
}

Widget design({index = 0,double widths = 35}) {
  if (index == 0) {
    return design1(widths: widths);
  }
  else if (index == 1) {
    return design2(widths: widths);
  }
    return design3(widths: widths);
}
