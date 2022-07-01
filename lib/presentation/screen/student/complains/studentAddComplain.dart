import 'package:flutter/material.dart';
import 'package:hostelapplication/logic/provider/complaint_provider.dart';
import 'package:provider/provider.dart';

class StudentAddComplaintScreen extends StatelessWidget {
   const StudentAddComplaintScreen(this.complain, {Key? key}) : super(key: key);
  final String complain;
  

  @override
  Widget build(BuildContext context) {
    final noticeProvider = Provider.of<ComplaintProvider>(context);
    DateTime now = DateTime.now();
    
    const tablepadding = EdgeInsets.all(15);
    return Scaffold(
      appBar: AppBar(title: const Text("Add Complaint")),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(183, 235, 237, 237),
                    ),
                    child: Table(
                      // defaultColumnWidth: FixedColumnWidth(120.0),
                      columnWidths: const {
                        0: FixedColumnWidth(120),
                        1: FlexColumnWidth(),
                      },
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: tablepadding,
                            child: Column(children: const [
                              Center(
                                child: Text(
                                  'Name',
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ]),
                          ),
                          Padding(
                            padding: tablepadding,
                            child: Column(children: const [
                              Text(
                                'Gami Ishit',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              )
                            ]),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: tablepadding,
                            child: Column(children: const [
                              Text(
                                'Room No.',
                                style: TextStyle(fontSize: 18),
                              )
                            ]),
                          ),
                          Padding(
                            padding: tablepadding,
                            child: Column(children: const [
                              Text(
                                '510',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              )
                            ]),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: tablepadding,
                            child: Column(children: const [
                              Text(
                               'Date',
                                style: TextStyle(fontSize: 18),
                              )
                            ]),
                          ),
                          Padding(
                            padding: tablepadding,
                            child: Column(children:  [
                              Text(
                                 DateTime(now.year, now.month, now.day).toString().replaceAll("00:00:00.000", ""),
                                style:const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              )
                            ]),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 18.0, left: 18, right: 18, bottom: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                           const Text(
                              "Complaint ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                           const Text(": "),
                            Text(
                              complain,
                              style:const TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintText: "Type your complaint here...... 🖍",
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10))),
                            maxLines: 8,
                            keyboardType: TextInputType.multiline,
                            maxLength: 1000,
                            cursorColor: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 20,
                  child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.done,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
