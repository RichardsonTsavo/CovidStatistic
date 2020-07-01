import 'package:flutter/material.dart';

class TreatmentTabPageScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/TopTabs/TratamentoTopTab.png",
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: <Widget>[
                    Text("Autocuidados",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Se apresentar algum dos sintomas, você deve descansar, beber bastante líquido e comer alimentos nutritivos. Fique em um quarto separado dos outros membros da sua família e use um banheiro dedicado, se possível. Limpe e desinfete as superfícies tocadas com frequência.",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Todos devem manter um estilo de vida saudável em casa. Mantenha uma dieta saudável, tenha uma boa noite de sono, permaneça ativo e mantenha o contato social com quem você ama através do telefone ou do Internet. As crianças precisam de mais amor e atenção dos adultos durante este momento difícil. Mantenha a rotina e os horários regulares o máximo possível.",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                    SizedBox(
                      height: 10,
                    ),
                    Text("É normal sentir-se triste, estressado ou confuso durante uma crise. Conversar com as pessoas em quem você confia, como amigos e familiares, pode ajudar. Se você se sentir sobrecarregado, fale com um médico ou psicólogo.",style: TextStyle(color: Color.fromARGB(255, 158, 198, 176),fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
