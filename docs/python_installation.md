# Python Installation

Python ist eine der beliebtesten Programmiersprachen der Welt. Sie wird in vielen Bereichen eingesetzt, darunter Webentwicklung, Datenanalyse, künstliche Intelligenz und vieles mehr. Python ist bekannt für seine einfache Syntax und seine Vielseitigkeit, was es zu einer grossartigen Sprache für Anfänger und Fortgeschrittene macht.

Dieser Guide zeigt dir, wie du Python, VS Code und Jupyter für dieses Modul einrichtest. Die Schritte unten beziehen sich bewusst auf einen einfachen Standard-Workflow mit VS Code.

## Installation auf Windows

Lade die Python Version 3.13 vom Microsoft Store herunter:

- [Python 3.13](https://apps.microsoft.com/detail/9pnrbtzxmb4z)

Öffne anschliessend das Terminal oder die Eingabeaufforderung und prüfe die Installation:

```sh
python --version
```

Wenn eine Python-Version angezeigt wird, ist die Installation bereit.

## VS Code installieren

Installiere Visual Studio Code:

- [VS Code Download](https://code.visualstudio.com/download)

Wenn du später eine Notebook-Datei (`.ipynb`) in VS Code öffnest, wirst du in der Regel automatisch gefragt, ob die Erweiterungen `Python` und `Jupyter` installiert werden sollen. Bestätige diese Installation.

## Packages
> [!NOTE]
> Ein Package in Python ist eine Sammlung von Modulen, die bestimmte Funktionen und Werkzeuge enthalten. Ein Modul ist einfach eine Datei, die Python-Code enthält, und ein Package organisiert mehrere dieser Module in einer Struktur, die es einfacher macht, wiederverwendbare Codeblöcke zu verwalten.

Um neue Packages zu installieren, nutze pip. Pip ist ein Paketmanager für Python, der es dir ermöglicht, Packages aus dem Python Package Index (PyPI) zu installieren und zu verwalten.

Um ein Package zu installieren, öffne das Terminal (auf Windows heisst es "Eingabeaufforderung") und führe folgenden Befehl aus:
```sh
python -m pip install <PACKAGE1> <PACKAGE2> <PACKAGE3> ...
```

Für dieses Modul funktioniert der folgende Befehl als guter Start:

```sh
python -m pip install jupyter pandas openpyxl plotly matplotlib scikit-learn
```

> [!TIP]  
> Für Unterrichtsblock 2 reichen meist `jupyter` und `pandas`. Der obige Befehl deckt aber bereits die wichtigsten Packages für das Semester ab.

## Was ist ein Jupyter Notebook?

Ein Jupyter Notebook ist eine Datei mit der Endung `.ipynb`. Sie enthält Text, Aufgaben, Python-Code und Ausgaben in einem Dokument. Du führst dabei nicht das ganze Dokument auf einmal aus, sondern immer einzelne Zellen nacheinander.

## Erstes Notebook in VS Code öffnen

1. Lade `data.zip` und das Paket des aktuellen Unterrichtsblocks über [Material Downloads](material_downloads.md) herunter.
2. Entpacke beide ZIP-Dateien vollständig in denselben Oberordner, zum Beispiel `DAT-SKI/`.
3. Öffne diesen Oberordner in VS Code.
4. Öffne im Explorer links das gewünschte Notebook, zum Beispiel `Unterrichtsblock-2/01_Einführung_Pandas.ipynb`.
5. Wähle oben rechts einen Python-Kernel aus. Nimm den Interpreter, in dem du die Packages installiert hast.
6. Führe die erste Zelle mit dem Play-Button oder mit `Shift+Enter` aus.

## Häufige Probleme

- `python` wird nicht erkannt: Schliesse das Terminal und öffne es erneut. Falls es weiterhin nicht funktioniert, stelle sicher, dass Python im Pfad hinterlegt ist (vgl. mit der [Anleitung von Microsoft](https://learn.microsoft.com/de-ch/windows/dev-environment/python?tabs=manual)).
- `../data/...` wird nicht gefunden: `data/` und der Unterrichtsblock-Ordner müssen nebeneinander liegen.
- Das Notebook lässt sich öffnen, aber nicht ausführen: Installiere in VS Code die Erweiterungen `Python` und `Jupyter` und wähle oben rechts einen Kernel aus.

## Weiterführende Anleitungen

- [Offizielle VS-Code-Anleitung für Notebooks](https://code.visualstudio.com/docs/datascience/jupyter-notebooks)
