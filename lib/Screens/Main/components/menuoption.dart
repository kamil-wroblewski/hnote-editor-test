import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  // widget w którym nic sie nie zmienia
  final String
      text; // pole klasy przechowujace tekst który sie wyswietli na ekranie
  final IconData icon; // ikonka do wyswietlenia
  const MenuOption({
    Key key,
    this.text,
    this.icon, // konstruktor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // metoda która sie wykonuje
    return Column(
      // zwraca kolumne

      children: <Widget>[
        // która ma dzieci, które sa widgetami
        GestureDetector(
          // w kolumnie mamy wykrywacz gestów
          onTap: () {}, // tu sie dodaje co sie ma stac kiedy klikniemy wiersz
          child: Row(
            // wykrywacz gestów ma dziecko które jest wierszem
            children: <Widget>[
              // natomiast wiersz ma dzieci które sa widgetami, widget to wiersz kolumna, wszystko na zielono to widget
              Icon(
                // pierwszym dzieckiem wiersza jest ikona
                icon, // tutaj jest powiedziane jaka ikona, którą przekazujemy przez wywołanie w konstruktorze
                color: Colors.white, // kolor ikony
              ),
              SizedBox(
                width: 20,
              ), //kolejne dziecko wiersza, odstep pomiedzy ikona a tekstem
              Text(
                // kolejne dziecko wiersza - tekst
                text, // tutaj przekazany z konstruktora jaki tekst ma byc
                style: TextStyle(
                  // widget jest klasa, i text ma swoje pole typu TextStyle o nazwie style, i tutaj wywołujemy cos takiego jakby TextStyle style = new TextStyle()
                  fontSize:
                      20, // pole klasy TextStyle okrreslajace wielkosc czcionki
                  color: Colors
                      .white, // pole klasy TextStyle okrreslajace kolor czcionki
                  fontWeight: FontWeight
                      .bold, // pole klasy TextStyle okrreslajace grubosc czcionki
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          // odstep pod napisem, dziecko kolumny
          height: 5, // o wysokosci 5 px
        ),
      ],
    );
  }
}
