# Python Installation

Dieser Guide zeigt einen einfachen und stabilen Windows-Workflow für das ganze Semester.

## Empfohlener Semester-Standard

- Installiere Python von `python.org`.
- Lege einen kurzen Arbeitsordner an, zum Beispiel `C:\DAT-SKI\`.
- Installiere die Modul-Packages mit `python -m pip install ...`.
- Wähle in VS Code immer die installierte Python-Version als Kernel aus.
- Falls ein Package im Notebook fehlt, installiere es direkt dort mit `%pip install ...`.

So vermeidest du die häufigsten Probleme mit Microsoft Store, falschen `pip`-Installationen und langen Windows-Pfaden.

## 1. Python auf Windows installieren

Installiere Python 3.13 von der offiziellen Webseite:

- [Python Download auf python.org](https://www.python.org/downloads/windows/)

Wichtig im Installer:

- Aktiviere die Option `Add python.exe to PATH`.
- Die Standardinstallation für den aktuellen Benutzer reicht in der Regel aus.

Öffne anschliessend ein neues Terminal oder eine neue Eingabeaufforderung und prüfe die Installation:

```sh
python --version
```

Wenn eine Python-Version angezeigt wird, ist die Installation bereit.

> [!TIP]
> Für dieses Modul sind Python 3.12 und 3.13 geeignet. Empfohlen ist Python 3.13.

> [!NOTE]
> Falls die Installation von `python.org` auf einem Arbeitslaptop blockiert wird, kannst du Microsoft Store als Fallback probieren:
> [Python im Microsoft Store](https://apps.microsoft.com/detail/9pnrbtzxmb4z)

## 2. Arbeitsordner vorbereiten

Lege einen kurzen Oberordner an, zum Beispiel:

```text
C:\DAT-SKI\
```

Entpacke `data.zip` und die Unterrichtsblock-ZIP-Dateien vollständig in diesen Ordner. Vermeide unnötig tiefe Ordnerstrukturen wie `Desktop`, `Downloads` in OneDrive oder mehrfach verschachtelte ZIP-Ordner.

## 3. VS Code installieren

Installiere Visual Studio Code:

- [VS Code Download](https://code.visualstudio.com/download)

Öffne danach den Oberordner `C:\DAT-SKI\` in VS Code.

## 4. Modul-Packages installieren

Öffne in VS Code ein Terminal oder eine Eingabeaufforderung und installiere die wichtigsten Packages:

```sh
python -m pip install jupyter pandas openpyxl plotly matplotlib scikit-learn
```

Dieser Befehl ist robuster als ein direkter `pip`-Aufruf, weil er genau die Python-Version verwendet, die du mit `python` startest.

> [!TIP]
> Für Unterrichtsblock 2 reichen meist `jupyter` und `pandas`. Der obige Befehl deckt aber bereits die wichtigsten Packages für das Semester ab.

## 5. Erstes Notebook in VS Code öffnen

1. Lade `data.zip` und das Paket des aktuellen Unterrichtsblocks über [Material Downloads](material_downloads.md) herunter.
2. Entpacke beide ZIP-Dateien vollständig nach `C:\DAT-SKI\`.
3. Öffne `C:\DAT-SKI\` in VS Code.
4. Öffne links im Explorer das gewünschte Notebook, zum Beispiel `Unterrichtsblock-2/01_Einführung_Pandas.ipynb`.
5. Wenn beim ersten Öffnen ein Popup erscheint, installiere die vorgeschlagenen Erweiterungen und Abhängigkeiten wie `Python`, `Jupyter` und `ipykernel`.
6. Wähle oben rechts den Kernel aus, der zu deiner installierten Python-Version gehört. Falls mehrere Optionen erscheinen, nimm diejenige mit `Python 3.13` oder mit der Version, die du installiert hast.
7. Führe die erste Zelle mit dem Play-Button oder mit `Shift+Enter` aus.

## 6. Packages direkt im Notebook nachinstallieren

Wenn im Notebook trotz korrektem Kernel ein Fehler wie `ModuleNotFoundError: No module named 'pandas'` erscheint, installiere das fehlende Package direkt im Notebook:

```python
%pip install pandas
```

Für Excel-Dateien ist zum Beispiel oft zusätzlich `openpyxl` nötig:

```python
%pip install openpyxl
```

Starte nach der Installation den Kernel neu und führe die Zelle erneut aus.

## Was ist ein Jupyter Notebook?

Ein Jupyter Notebook ist eine Datei mit der Endung `.ipynb`. Sie enthält Text, Aufgaben, Python-Code und Ausgaben in einem Dokument. Du führst dabei nicht das ganze Dokument auf einmal aus, sondern immer einzelne Zellen nacheinander.

## Häufige Probleme

- `python` wird nicht erkannt: Schliesse das Terminal und öffne es erneut. Falls es weiterhin nicht funktioniert, starte Windows neu oder prüfe, ob Python wirklich von `python.org` installiert wurde.
- `../data/...` wird nicht gefunden: `data/` und die Unterrichtsblock-Ordner müssen direkt nebeneinander in `C:\DAT-SKI\` liegen.
- `import pandas` funktioniert trotz Installation nicht: Meist ist der falsche Kernel ausgewählt. Wähle oben rechts die installierte Python-Version aus und installiere das Package bei Bedarf mit `%pip install pandas` direkt im Notebook.
- Eine PowerShell-Anleitung verlangt `Activate.ps1` oder eine Aktivierung der Umgebung: Für dieses Modul brauchst du das nicht. Installiere Packages mit `python -m pip install ...` und wähle in VS Code direkt den passenden Kernel aus.
- Microsoft Store startet statt der installierten Python-Version: Installiere Python von `python.org` und öffne danach ein neues Terminal.
- Die Installation wird durch Berechtigungen, Antivirus oder Defender blockiert: Arbeite in einem einfachen Ordner wie `C:\DAT-SKI\` und nicht in geschützten oder stark verschachtelten Ordnern.
- Windows meldet sehr lange Pfade oder entpackt ZIP-Dateien nicht sauber: Verwende einen kurzen Pfad wie `C:\DAT-SKI\`.

## Weiterführende Anleitungen

- [Offizielle VS-Code-Anleitung für Notebooks](https://code.visualstudio.com/docs/datascience/jupyter-notebooks)
