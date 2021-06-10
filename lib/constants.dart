import 'dart:ui';
import 'package:flutter/material.dart';


    const primaryColor = Color.fromARGB(255,108,99,255);
    const primaryLightColor = Color.fromARGB(255, 179, 175, 255);

    const String title = "Hnote";
    const Color defaultTagColor = primaryColor;

    enum tagColors{
        RED,
        GREEN,
        BLUE
    }

    extension TagColorsExtension on tagColors{
        Color get tagColor{
            switch(this){
                case tagColors.RED: return Colors.red;
                case tagColors.GREEN: return Colors.green;
                case tagColors.BLUE: return Colors.blue;
                default: return Colors.pinkAccent;
            }
        }
    }

//------------------------------------------------
// Text Editor settings
//------------------------------------------------
    /// Normal texts font size
    const double TFontSize = 16.0;
    /// Quote fonts size
    const double QFontSize = 16.0;
    /// Header 1 fonts size
    const double H1FontSize = 24.0;

//------------------------------------------------
// PL - lng
//------------------------------------------------
    const String newNotebookTitle = "Nowy zeszyt";
    const String newNotebookDesc = "Nowo stworzony zeszyt";

    const String newNoteTitle = "Nowa notatka";
    const String addNewNotebook = "Nowy";
    