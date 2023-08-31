import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  static const name = '/';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Mis Direcciones',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF33357E),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return _item();
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 5,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.push('/CreateGRUP');
        },
      ),
    );
  }

  Widget _item() {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const TeacherDetailScreen(),
      //     ),
      //   );
      // },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFEFFFF),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(.1),
              offset: const Offset(.1, 1),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Codigo Postal: ',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    children: const [
                      TextSpan(
                        text: '89779',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                RichText(
                  text: TextSpan(
                    text: 'Nombre: Casa en Italia',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Row(
                //   children: [_studentsIcons(), const Text(' + 2 cursos')],
                // ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Theme.of(context).primaryColor.withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // SizedBox _studentsIcons() {
  //   return SizedBox(
  //     width: 50.0,
  //     height: 25.0,
  //     child: Stack(
  //       children: [
  //         Positioned(left: 0, top: 0, child: _studentIcon(Colors.grey)),
  //         Positioned(left: 30, top: 0, child: _studentIcon(Colors.grey)),
  //         Positioned(left: 15, top: 0, child: _studentIcon(Colors.black54)),
  //       ],
  //     ),
  //   );
  // }

  // Widget _studentIcon(Color color) {
  //   return Container(
  //     padding: const EdgeInsets.all(4.0),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20.0),
  //       border: Border.all(color: color),
  //       color: color,
  //     ),
  //     child: const Center(
  //       child: Icon(
  //         Icons.file_copy,
  //         color: Colors.white,
  //         size: 12.0,
  //       ),
  //     ),
  //   );
  // }
}
