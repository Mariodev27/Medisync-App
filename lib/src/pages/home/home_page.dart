import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medisync/src/widgets/BackgroundTemplate.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundTemplate(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(context),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        Spacer(),
        _buildBackButton(context),
        _buildEmptyContainer(),
      ],
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0,
          right: 10.0), // Añade más padding en la parte superior y derecha
      child: Align(
        alignment: Alignment.topRight, // Alinea el botón a la derecha
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          child: Row(
            mainAxisSize: MainAxisSize
                .min, // Asegura que el Row no ocupe todo el ancho disponible
            children: [
              _buildBackButtonText(),
              SizedBox(
                  width:
                      5), // Añade un SizedBox para separar más el texto y el icono
              _buildBackButtonIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Text _buildBackButtonText() {
    return Text(
      'Volver',
      style: TextStyle(
        color: Color(0xFF5DB0A8),
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        height: 0.08,
        letterSpacing: 0.84,
      ),
    );
  }

  SizedBox _buildBackButtonIcon() {
    return SizedBox(
      width: 20,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(Color(0xFF5DB0A8), BlendMode.srcIn),
        child: SvgPicture.asset('assets/svg/log-in.svg'),
      ),
    );
  }

  Container _buildEmptyContainer() {
    return Container(
      width: 24,
      height: 24,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Stack(children: []),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleText(),
          _buildSubtitleText(),
          SizedBox(height: 33), // Añade un espacio de 10 píxeles
          _singleChildScrollView(),
          SizedBox(height: 30),
          _buildAlarmScrollView(),
          SizedBox(height: 33), // Añade un espacio de 10 píxeles
          _buildSubtitleText1(),
          SizedBox(height: 33), // Añade un espacio de 10 píxeles
          _buildContainer(),
          SizedBox(height: 33), // Añade un espacio de 10 píxeles
          _buildSubtitleText2(),
          SizedBox(height: 33),
          _buildContainer1(),
          SizedBox(height: 33),
          _buildBottomContainer(), // Añade el container
        ],
      ),
    );
  }

  Padding _buildTitleText() {
    return Padding(
      padding: EdgeInsets.only(
          left:
              30.0), // Agrega un espacio de 20 píxeles a la izquierda del texto
      child: SizedBox(
        width: 328,
        height: 52,
        child: Text(
          'Programar la dosis',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.04,
            letterSpacing: 1.68,
          ),
        ),
      ),
    );
  }

  Padding _buildSubtitleText() {
    return Padding(
      padding: EdgeInsets.only(
          left:
              30.0), // Agrega un espacio de 20 píxeles a la izquierda del texto
      child: Text(
        '¿A qué hora del día quieres tomarlo?',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 0.10,
          letterSpacing: 0.72,
        ),
      ),
    );
  }

  Widget _singleChildScrollView() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 30.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            Container(
              width: 231,
              height: 143,
              margin:
                  EdgeInsets.only(right: 10), // Espacio entre los containers
              decoration: ShapeDecoration(
                color: Color(0xFFEDF2F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildAlarmScrollView() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 30.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 10; i++)
            Container(
              width: 110,
              height: 32,
              margin:
                  EdgeInsets.only(right: 10), // Espacio entre los containers
              decoration: ShapeDecoration(
                color: Color(0xFFD0E4E4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Alinea los hijos a los extremos del Row
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left:
                            10), // Añade un poco de espacio a la izquierda del SVG
                    child: SvgPicture.asset('assets/svg/alarma.svg',
                        width: 10,
                        height:
                            10), // Asegúrate de reemplazar 'assets/svg/my_svg.svg' con la ruta de tu SVG
                  ),
                  Text('$i:00'), // Muestra la hora en cada container
                  Padding(
                    padding: EdgeInsets.only(
                        right:
                            10), // Añade un poco de espacio a la derecha del SVG
                    child: SvgPicture.asset('assets/svg/Vector.svg',
                        width: 10,
                        height:
                            10), // Asegúrate de reemplazar 'assets/svg/my_svg.svg' con la ruta de tu SVG
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Padding _buildSubtitleText1() {
    return Padding(
      padding: EdgeInsets.only(
          left:
              30.0), // Agrega un espacio de 20 píxeles a la izquierda del texto
      child: Text(
        '¿Con qué frecuencia se toma esta dosis?',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 0.10,
          letterSpacing: 0.72,
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Center(
      child: Container(
        width: 323,
        height: 47,
        decoration: BoxDecoration(color: Color(0xFFEDF2F3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Alinea los hijos a los extremos del Row
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left:
                      10), // Añade un poco de espacio a la izquierda del texto
              child: Text(
                'Todos los días',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                  letterSpacing: 1.08,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: 10), // Añade un poco de espacio a la derecha del SVG
              child: SvgPicture.asset('assets/svg/tabla.svg',
                  width: 20,
                  height:
                      20), // Asegúrate de reemplazar 'assets/svg/my_svg.svg' con la ruta de tu SVG
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildSubtitleText2() {
    return Padding(
      padding: EdgeInsets.only(
          left:
              30.0), // Agrega un espacio de 20 píxeles a la izquierda del texto
      child: Text(
        '¿Cuántas pastillas se toman en cada dosis?',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 0.10,
          letterSpacing: 0.72,
        ),
      ),
    );
  }

  Widget _buildContainer1() {
    return Center(
      child: Container(
        width: 323,
        height: 47,
        decoration: BoxDecoration(color: Color(0xFFEDF2F3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Alinea los hijos a los extremos del Row
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 10), // Añade un poco de espacio a la izquierda del SVG
              child: SvgPicture.asset('assets/svg/menos.svg',
                  width: 20,
                  height:
                      20), // Asegúrate de reemplazar 'assets/svg/my_svg.svg' con la ruta de tu SVG
            ),
            Text(
              '1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0.06,
                letterSpacing: 1.08,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: 10), // Añade un poco de espacio a la derecha del SVG
              child: SvgPicture.asset('assets/svg/mas.svg',
                  width: 20,
                  height:
                      20), // Asegúrate de reemplazar 'assets/svg/my_svg.svg' con la ruta de tu SVG
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Center(
      child: Container(
        width: 309,
        height: 61,
        decoration: ShapeDecoration(
          color: Color(0xFF51D0D0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F50C2C9),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          // Añade un Center para centrar el texto
          child: Text(
            'GUARDAR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.03,
              letterSpacing: 2.10,
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor:
          Colors.transparent, // Cambia esto a cualquier color que quieras
      elevation: 0, // Esto elimina la sombra
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Negocios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Escuela',
        ),
      ],
      showSelectedLabels:
          false, // Esto oculta las etiquetas de los ítems seleccionados
      showUnselectedLabels:
          false, // Esto oculta las etiquetas de los ítems no seleccionados
    );
  }
}
