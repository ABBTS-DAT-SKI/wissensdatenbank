# Daten und Aufgaben herunterladen

## Mit Git (empfohlen)

Alle Aufgaben, Demos, Folien, Daten und nach jedem Unterricht auch die Lösungen liegen im Repository [ABBTS-DAT-SKI/material](https://github.com/ABBTS-DAT-SKI/material).

Einmal einrichten: in PyCharm **Clone Repository** mit der URL `https://github.com/ABBTS-DAT-SKI/material.git` (Ordner: Vorschlag von PyCharm, nicht in OneDrive). Die Schritte mit Screenshots stehen unter [Setup → Material in PyCharm holen](python_installation.md#4-material-in-pycharm-holen).

Vor jedem Unterricht holst du die neuen Dateien: in PyCharm oben links auf den Branch **main** klicken und **Update Project** wählen (`Ctrl+T`), siehe [Setup → Jede Woche](python_installation.md#jede-woche-neues-material-holen). Im Terminal geht es auch mit:

```bash
git pull
```

- Bearbeite die Notebooks direkt. Eine veröffentlichte Datei ändert sich nie mehr, deshalb überschreibt `git pull` deine Arbeit nicht.
- Die Folien liegen als PDF im Ordner des Unterrichtsblocks, die Lösungen erscheinen nach dem Unterricht in `Unterrichtsblock-N/Loesungen/`.
- Gib eigenen Dateien einen eigenen Namen, zum Beispiel `meine_notizen.ipynb`.
- Entpacke keine ZIP-Dateien in diesen Ordner, sonst bricht `git pull` ab.

## Ohne Git: ZIP-Dateien

Lade für jeden Unterrichtsblock immer zwei ZIP-Dateien herunter:

1. `data.zip`
2. das Blockpaket, zum Beispiel `Unterrichtsblock-2.zip`

### Downloads

- [data.zip](downloads/data.zip)
- [Unterrichtsblock-1.zip](downloads/Unterrichtsblock-1.zip) (Setup-Check)
- [Unterrichtsblock-2.zip](downloads/Unterrichtsblock-2.zip)
- [Unterrichtsblock-3.zip](downloads/Unterrichtsblock-3.zip)
- [Unterrichtsblock-4.zip](downloads/Unterrichtsblock-4.zip)
- [Unterrichtsblock-5.zip](downloads/Unterrichtsblock-5.zip)
- [Unterrichtsblock-6.zip](downloads/Unterrichtsblock-6.zip)
- [Unterrichtsblock-7.zip](downloads/Unterrichtsblock-7.zip)
- [Unterrichtsblock-8.zip](downloads/Unterrichtsblock-8.zip)
- [Unterrichtsblock-9.zip](downloads/Unterrichtsblock-9.zip)
- [Unterrichtsblock-10.zip](downloads/Unterrichtsblock-10.zip)

Spick für die Prüfung (ein A4-Blatt, beidseitig bedruckt): [DAT-SKI_Spick.pdf](downloads/DAT-SKI_Spick.pdf)

Prüfung SS2026 als Referenz (ohne Lösungen; keine Garantie, dass deine Prüfung gleich aufgebaut oder gleich schwierig ist): [DAT-SKI_Pruefung_SS2026.pdf](downloads/DAT-SKI_Pruefung_SS2026.pdf)

### Zielstruktur nach dem Entpacken

Entpacke beide ZIP-Dateien in denselben Oberordner, am besten in einen kurzen Pfad wie `C:\DAT-SKI\`:

```text
C:\DAT-SKI\
|- data/
`- Unterrichtsblock-2/
```

Wenn du mehrere Unterrichtsblöcke herunterlädst, liegen die Blockordner alle neben `data/`:

```text
C:\DAT-SKI\
|- data/
|- Unterrichtsblock-2/
|- Unterrichtsblock-3/
`- Unterrichtsblock-4/
```

Die Notebooks erwarten die Daten immer relativ zum Blockordner unter `../data/`.

### Nach dem Entpacken

1. Öffne die Notebook-Datei nicht direkt aus dem ZIP, sondern entpacke immer zuerst beide ZIP-Dateien vollständig.
2. Öffne danach den Oberordner, zum Beispiel `C:\DAT-SKI\`, in PyCharm (oder VS Code).
3. Öffne im gewünschten Unterrichtsblock das passende Notebook (`.ipynb`).
4. Wähle oben rechts den Python-Interpreter aus, wie unter [Setup → Setup-Check ausführen](python_installation.md#7-setup-prufen) beschrieben.
5. Führe die Zellen mit dem Play-Button oder mit `Shift+Enter` aus.

## Häufige Fehler

- `data/` liegt im falschen Ordner, zum Beispiel innerhalb von `Unterrichtsblock-2/`.
- Der Blockordner wurde doppelt entpackt, zum Beispiel `DAT-SKI/Unterrichtsblock-2/Unterrichtsblock-2/`.
- Beim Einlesen erscheint ein Fehler mit `../data/...`. In diesem Fall stimmt die Ordnerstruktur fast immer nicht.
- Die Dateien wurden in einen sehr tiefen oder geschützten Ordner entpackt. Ein kurzer Pfad wie `C:\DAT-SKI\` funktioniert meist zuverlässiger.
