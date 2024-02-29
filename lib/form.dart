import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String? _selectedValue = null;
  String? _selectedValue2 = null;
  String? _selectedValue3 = null;
  String? _selectedValueServicio = null;
  DateTime? desde = null;

  var isPressed = false;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting("es");
  }

  List<DropdownMenuItem<String>> get dropdownItemsServicio {
    return [
      DropdownMenuItem(child: Text('Tecnico'), value: 'TEC'),
      DropdownMenuItem(child: Text('Supervisor'), value: 'SUP'),
      DropdownMenuItem(child: Text('Mantenimiento a Vehículos'), value: 'MAN'),
    ];
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    return [
      DropdownMenuItem(child: Text('Bajo'), value: 'LOW'),
      DropdownMenuItem(child: Text('Media'), value: 'Medium'),
      DropdownMenuItem(child: Text('Alta'), value: 'High'),
      DropdownMenuItem(child: Text('Maxima prioridad'), value: 'Max'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation:0,
          centerTitle:false,
          automaticallyImplyLeading: false,
          backgroundColor:Color(0xFF031A6B),
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.zero,
          ),
          title: Text(
              'Registro de solicitud de servicios',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff05B2DC),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButtonFormField<String>(
                      value: _selectedValueServicio,
                      items: dropdownItemsServicio,
                      isDense: false,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValueServicio = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: _selectedValueServicio == null ? 'Tipo de solicitud' : null,
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 0),
                          child: Icon(Icons.add_chart, color: Color(0xff212435),size:24),
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 40,
                          minHeight: 24,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff05B2DC),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButtonFormField<String>(
                      value: _selectedValue,
                      items: dropdownItems,
                      isDense: false,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        hintText: _selectedValue == null ? 'Importancia' : null,
                        border: InputBorder.none,
                        prefixIcon: const Padding(
                          padding: EdgeInsetsDirectional.only(start: 0),
                          child: Icon(Icons.priority_high, color: Color(0xff2124352), size: 24,),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 40,
                          minHeight: 24,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff05B2DC),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButtonFormField<String>(
                      value: _selectedValue2,
                      items: dropdownItems,
                      isDense: false,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue2 = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: _selectedValue2 == null ? 'Urgencia' : null,
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 0),
                          child: Icon(Icons.notification_important, color: Color(0xff2124352), size: 24,),
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 40, // ajusta este valor según sea necesario
                          minHeight: 24, // ajusta este valor según sea necesario
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff05B2DC),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButtonFormField<String>(
                      value: _selectedValue3,
                      items: dropdownItems,
                      isDense: false,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue3 = value;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        hintText: _selectedValue3 == null ? 'Impacto' : null,
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 0),
                          child: Icon(Icons.warning, color: Color(0xff2124352), size: 24,),
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 40,
                          minHeight: 24,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      DateTime? fecha = await showDatePicker(
                        context: context,
                        initialDate: desde,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: Color(0xFF031A6B),
                                onPrimary: Colors.white,
                                onSurface: Colors.black,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (fecha != null && fecha != desde) {
                        setState(() {
                          desde = fecha;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Color(0xff05B2DC),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today, // Icono de calendario
                              color: Color(0xff2124352),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              (desde == null) ? "Fecha requerida" : DateFormat(DateFormat.YEAR_MONTH_DAY, 'es').format(desde!),
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: Color(0xff212435)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color(0xff05B2DC),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color(0xff05B2DC),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1
                          ),
                        ),
                        hintText: "Titulo",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        filled: true,
                        fillColor: Color(0xffffffff),
                        isDense: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        prefixIcon: Icon(Icons.title, color: Color(0xff2124352), size: 24,)
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Stack(
                    children: [
                      TextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        textAlign: TextAlign.start,
                        maxLines: 10,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color(0xff05B2DC),
                                width: 1
                            ),
                          ),
                          hintText: "Descripción",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                        ),
                      ),
                      Positioned(
                        left: 8,  // Ajusta este valor para alinear el ícono a tu gusto
                        top: 8,  // Ajusta este valor para alinear el ícono a tu gusto
                        child: Icon(Icons.description, color: Color(0xff2124352), size: 24),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Stack(
                    children: [
                      TextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        textAlign: TextAlign.start,
                        maxLines: 10,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Color(0xff05B2DC),
                                width: 1
                            ),
                          ),
                          hintText: "Condiciones de exito",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                        ),
                      ),
                      Positioned(
                        left: 8,  // Ajusta este valor para alinear el ícono a tu gusto
                        top: 8,  // Ajusta este valor para alinear el ícono a tu gusto
                        child: Icon(Icons.check, color: Color(0xff2124352), size: 24,),
                      ),
                    ],
                  ),
                ),




                /*Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 10,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color(0xff05B2DC),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color(0xff05B2DC),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1
                          ),
                        ),
                        hintText: "Descripcion",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        filled: true,
                        fillColor: Color(0xffffffff),
                        isDense: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        prefixIcon: Icon(Icons.description, color: Color(0xff2124352), size: 24),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color(0xff05B2DC),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Color(0xff05B2DC),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Color(0xff05B2DC),
                              width: 1
                          ),
                        ),
                        hintText: "Condiciones de exito",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        filled: true,
                        fillColor: Color(0xffffffff),
                        isDense: false,
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        prefixIcon: Icon(Icons.check, color: Color(0xff2124352), size: 24,)
                    ),
                  ),
                ),*/

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.add_a_photo, color: Color(0xff2124352), size: 24,),
                    iconSize: 50,
                    color: Color(0xff004385),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check, color: Color(0xffffffff)),
          backgroundColor: Color(0xff004385),
          onPressed: (){
          }),
    );
  }
}