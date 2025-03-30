# Python Installation

Python ist eine der beliebtesten Programmiersprachen der Welt. Sie wird in vielen Bereichen eingesetzt, darunter Webentwicklung, Datenanalyse, künstliche Intelligenz und vieles mehr. Python ist bekannt für seine einfache Syntax und seine Vielseitigkeit, was es zu einer grossartigen Sprache für Anfänger und Fortgeschrittene macht.

In diesem Guide zeigen wir dir, wie du Python auf deinem Computer installierst und einrichtest, um mit dem Programmieren zu beginnen.

## Installation auf Windows

Lade die Python Version 3.12 vom Microsoft Store herunter:

- [Python 3.12](https://www.microsoft.com/store/productId/9NCVDN91XZQP)

## Packages
> [!NOTE]
> Ein Package in Python ist eine Sammlung von Modulen, die bestimmte Funktionen und Werkzeuge enthalten. Ein Modul ist einfach eine Datei, die Python-Code enthält, und ein Package organisiert mehrere dieser Module in einer Struktur, die es einfacher macht, wiederverwendbare Codeblöcke zu verwalten.

Um neue Packages zu installieren, nutze pip. Pip ist ein Paketmanager für Python, der es dir ermöglicht, Packages aus dem Python Package Index (PyPI) zu installieren und zu verwalten.

Um ein Package zu installieren, öffne das Terminal (auf Windows heisst es "Eingabeaufforderung") und führe folgenden Befehl aus:
```sh
pip install <PACKAGE1> <PACKAGE2> <PACKAGE3> ...
```

Beispiel: Um das pandas-Package zu installieren, führe folgende Befehle aus:
```sh
pip install pandas
```

Es könnte sein, dass bei neueren Python-Versionen diese Befehle zu einem Fehler führen. Probiere in diesem Fall dies aus:
```sh
pip install pandas --break-system-packages
```