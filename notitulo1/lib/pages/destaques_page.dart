import 'package:flutter/material.dart';
import 'package:notitulo1/domain/pacote_turistico.dart';
import 'package:notitulo1/pages/propaganda_page.dart';
import 'package:notitulo1/widget/pacote_turistico_card.dart';

class DestaquesPage extends StatefulWidget {
  const DestaquesPage({Key? key}) : super(key: key);

  @override
  State<DestaquesPage> createState() => _DestaquesPageState();
}

class _DestaquesPageState extends State<DestaquesPage> {
  PacoteTuristico pacote1 = PacoteTuristico(
    imagem:
    'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Cancún 2022/2023',
    transporte: 'Aéreo - Hotel All inclusive',
    cidade: 'CANCÚN, MEX',
    validade: 'De 10 ago 2021 até 30 set 2022',
    desconto: 45,
    numDiarias: 5,
    numPessoas: 2,
    numParcelas: 6,
    precoAntigo: 6819,
    precoAtual: 2819,
  );
  PacoteTuristico pacote2 = PacoteTuristico(
    imagem: 'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 10 jan 2022 até 31 dez 2023',
    desconto: 45,
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.35,
        ),
        children: [

          const SizedBox(height: 16),
          CardPacoteTuristico(pacoteTuristico: pacote1),
          CardPacoteTuristico(pacoteTuristico: pacote2),

          Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Tops destinos mais buscados',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Corre que tá rolando muita promoção',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: onPressedButton,
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFF8FF04),
                        ),
                        child: const Text(
                          'EU QUERO!',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Image.network(
                  'https://manancialtur.com.br/wp-content/uploads/2020/02/Homem-pulando-com-mala.png',
                  height: 150,
                  width: 100,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const PropagandaPage();
        },
      ),
    );
  }
}



