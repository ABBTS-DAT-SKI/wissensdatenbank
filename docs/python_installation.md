# Python Installation

Dieser Guide zeigt einen einfachen und stabilen Windows-Workflow für das ganze Semester.

## Empfohlener Semester-Standard

- Installiere Python von `python.org`.
- Hol das Material mit Git nach `C:\DAT-SKI\` (oder als ZIP-Dateien in denselben Ordner).
- Installiere die Modul-Packages mit `python -m pip install ...`.
- Wähle in VS Code immer die installierte Python-Version als Kernel aus.
- Falls ein Package im Notebook fehlt, installiere es direkt dort mit `%pip install ...`.

So vermeidest du die häufigsten Probleme mit Microsoft Store, falschen `pip`-Installationen und langen Windows-Pfaden.

## 1. Python auf Windows installieren

Installiere Python 3.13 von der offiziellen Webseite:

- [Python 3.13.16 auf python.org](https://www.python.org/downloads/release/python-31316/)
- Scrolle dort zu `Files` und lade `Windows installer (64-bit)` herunter.

> [!NOTE]
> Der grosse Download-Button auf der Startseite von python.org führt zur neusten Version mit dem `Python install manager`. Das funktioniert auch, sieht aber anders aus als in dieser Anleitung. Mit dem Link oben bekommst du genau den Installer, der hier beschrieben ist.

Wichtig im Installer:

- Aktiviere die Option `Add python.exe to PATH`.
- Die Standardinstallation für den aktuellen Benutzer reicht in der Regel aus.

Öffne anschliessend ein neues Terminal oder eine neue Eingabeaufforderung und prüfe die Installation:

```sh
python --version
```

Wenn eine Python-Version angezeigt wird, ist die Installation bereit.

> [!TIP]
> Für dieses Modul sind Python 3.12 bis 3.15 geeignet. Empfohlen ist Python 3.13. Wenn bereits eine dieser Versionen von python.org installiert ist, kannst du sie behalten.

> [!NOTE]
> Falls die Installation von `python.org` auf einem Arbeitslaptop blockiert wird, kannst du Microsoft Store als Fallback probieren:
> [Python im Microsoft Store](https://apps.microsoft.com/detail/9pnrbtzxmb4z)

## 2. Material holen

Dein Arbeitsordner ist `C:\DAT-SKI\`. Darin liegen `data/` und die Unterrichtsblock-Ordner direkt nebeneinander:

```text
C:\DAT-SKI\
|- data/
|- Unterrichtsblock-1/
`- Unterrichtsblock-2/
```

Vermeide tiefe Ordner wie `Desktop`, `Downloads` oder OneDrive. Wähle **eine** der beiden Varianten und bleib das ganze Semester dabei.

### Variante A: mit Git (empfohlen)

Öffne PowerShell (Startmenü → `PowerShell`) und prüfe, ob Git installiert ist:

```sh
git --version
```

Erscheint eine Fehlermeldung, installiere [Git for Windows](https://git-scm.com/downloads/win) mit den Standardeinstellungen und öffne danach PowerShell neu. Hole dann das Material:

```sh
git clone https://github.com/ABBTS-DAT-SKI/material.git C:\DAT-SKI
```

Neue Aufgaben und Lösungen holst du vor jedem Unterricht mit:

```sh
cd C:\DAT-SKI
git pull
```

Mehr dazu unter [Material Downloads](material_downloads.md).

### Variante B: ZIP-Dateien

Lade `data.zip` und die Unterrichtsblock-ZIP-Dateien über [Material Downloads](material_downloads.md) herunter und entpacke sie vollständig nach `C:\DAT-SKI\`.

> [!WARNING]
> Mische die Varianten nicht. Entpackst du ZIP-Dateien in einen Git-Ordner, bricht `git pull` später ab.

## 3. VS Code installieren

Installiere Visual Studio Code:

- [VS Code Download](https://code.visualstudio.com/download)

Öffne danach den Oberordner `C:\DAT-SKI\` in VS Code.

## 4. Modul-Packages installieren

Öffne in VS Code über das Menü `Terminal` → `New Terminal` ein Terminal. Es erscheint unten im Fenster. Gib dort diesen Befehl ein und bestätige mit `Enter`:

```sh
python -m pip install jupyter pandas plotly nbformat matplotlib scikit-learn
```

Dieser Befehl ist robuster als ein direkter `pip`-Aufruf, weil er genau die Python-Version verwendet, die du mit `python` startest.

Die Installation kann einige Minuten dauern, besonders wenn der Virenscanner jede Datei prüft. Warte, bis wieder eine leere Eingabezeile erscheint, und schliesse das Terminal vorher nicht.

> [!IMPORTANT]
> Es gibt zwei Orte für Installationsbefehle. Verwechsle sie nicht:
>
> - **Terminal** (unten in VS Code): `python -m pip install ...`
> - **Notebook-Zelle** (im `.ipynb`): `%pip install ...` mit Prozentzeichen, als Codezelle ausführen
>
> Fehlt in einer Notebook-Zelle das Prozentzeichen vor `pip`, erscheint ein `SyntaxError`.

> [!TIP]
> Für Unterrichtsblock 2 reichen meist `jupyter` und `pandas`. Der obige Befehl deckt aber bereits die wichtigsten Packages für das Semester ab.

## 5. Erstes Notebook in VS Code öffnen

1. Hol das Material des aktuellen Unterrichtsblocks (Abschnitt 2): `git pull` oder die ZIP-Dateien.
2. Öffne `C:\DAT-SKI\` in VS Code.
3. Öffne links im Explorer das gewünschte Notebook, zum Beispiel `Unterrichtsblock-2/01-Einführung_Pandas.ipynb`.
4. Wenn beim ersten Öffnen ein Popup erscheint, installiere die vorgeschlagenen Erweiterungen und Abhängigkeiten wie `Python`, `Jupyter` und `ipykernel`.
5. Wähle oben rechts den Kernel aus, der zu deiner installierten Python-Version gehört. Falls mehrere Optionen erscheinen, nimm diejenige mit `Python 3.13` oder mit der Version, die du installiert hast.
6. Führe die erste Zelle mit dem Play-Button oder mit `Shift+Enter` aus.

## 6. Packages direkt im Notebook nachinstallieren

Wenn im Notebook trotz korrektem Kernel ein Fehler wie `ModuleNotFoundError: No module named 'pandas'` erscheint, installiere das fehlende Package direkt im Notebook:

```python
%pip install pandas
```

Für interaktive Plots ist zum Beispiel zusätzlich `nbformat` nötig:

```python
%pip install nbformat
```

Starte nach der Installation den Kernel neu und führe die Zelle erneut aus.

## 7. Setup prüfen

Im Ordner `Unterrichtsblock-1` liegt das Notebook `01-Setup_Check.ipynb`. Es installiert alle Packages für das Semester und prüft deine Python-Version, die Packages und die Ordnerstruktur.

1. Hol das Material wie in Abschnitt 2 beschrieben (Git oder `data.zip` und `Unterrichtsblock-1.zip`).
2. Öffne `Unterrichtsblock-1/01-Setup_Check.ipynb` in VS Code.
3. Wähle oben rechts den Kernel mit deiner Python-Version aus.
4. Klicke oben auf `Run All`.
5. Ganz unten muss **Alles bereit** stehen. Sonst zeigt das Notebook für jedes Problem eine Lösung an.

Wenn du nicht weiterkommst, mach einen Screenshot der Ausgabe und bring ihn in den Unterricht mit.

## Was ist ein Jupyter Notebook?

Ein Jupyter Notebook ist eine Datei mit der Endung `.ipynb`. Sie enthält Text, Aufgaben, Python-Code und Ausgaben in einem Dokument. Du führst dabei nicht das ganze Dokument auf einmal aus, sondern immer einzelne Zellen nacheinander.

## Häufige Probleme

- `python` wird nicht erkannt: Schliesse das Terminal und öffne es erneut. Falls es weiterhin nicht funktioniert, starte Windows neu oder prüfe, ob Python wirklich von `python.org` installiert wurde.
- `pip` oder `py` wird nicht erkannt: Verwende immer `python -m pip install ...`. Den Befehl `py` brauchst du in diesem Modul nicht.
- `SyntaxError` bei `pip install` in einer Notebook-Zelle: In Notebook-Zellen schreibst du `%pip install ...` mit Prozentzeichen.
- `../data/...` wird nicht gefunden: `data/` und die Unterrichtsblock-Ordner müssen direkt nebeneinander in `C:\DAT-SKI\` liegen.
- `import pandas` funktioniert trotz Installation nicht: Meist ist der falsche Kernel ausgewählt. Wähle oben rechts die installierte Python-Version aus und installiere das Package bei Bedarf mit `%pip install pandas` direkt im Notebook.
- Eine PowerShell-Anleitung verlangt `Activate.ps1` oder eine Aktivierung der Umgebung: Für dieses Modul brauchst du das nicht. Installiere Packages mit `python -m pip install ...` und wähle in VS Code direkt den passenden Kernel aus.
- Microsoft Store startet statt der installierten Python-Version: Installiere Python von `python.org` und öffne danach ein neues Terminal.
- Die Installation wird durch Berechtigungen, Antivirus oder Defender blockiert: Arbeite in einem einfachen Ordner wie `C:\DAT-SKI\` und nicht in geschützten oder stark verschachtelten Ordnern.
- Windows meldet sehr lange Pfade oder entpackt ZIP-Dateien nicht sauber: Verwende einen kurzen Pfad wie `C:\DAT-SKI\`.
- `git` wird nicht erkannt: Installiere [Git for Windows](https://git-scm.com/downloads/win) und öffne das Terminal neu.
- `git clone` meldet `destination path 'C:\DAT-SKI' already exists and is not an empty directory`: Benenne den alten Ordner um, zum Beispiel in `C:\DAT-SKI-alt`, und klone erneut.
- `git pull` bricht ab mit `untracked working tree files would be overwritten`: Eine eigene Datei hat denselben Namen wie eine neue Datei aus dem Repository, oft nach dem Entpacken einer ZIP-Datei in den Git-Ordner. Benenne deine Datei um und führe `git pull` erneut aus.

## Weiterführende Anleitungen

- [Offizielle VS-Code-Anleitung für Notebooks](https://code.visualstudio.com/docs/datascience/jupyter-notebooks)
