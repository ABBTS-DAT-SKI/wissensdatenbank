# Daten und Aufgaben holen

Alle Aufgaben, Demos, Folien, Daten und nach jedem Unterricht auch die Lösungen liegen im Repository [ABBTS-DAT-SKI/material](https://github.com/ABBTS-DAT-SKI/material).

Einmal einrichten: in PyCharm **Clone Repository** mit der URL `https://github.com/ABBTS-DAT-SKI/material.git` (Ordner: Vorschlag von PyCharm, nicht in OneDrive). Die Schritte mit Screenshots stehen unter [Setup → Material in PyCharm holen](python_installation.md#4-material-in-pycharm-holen).

Vor jedem Unterricht holst du die neuen Dateien: in PyCharm oben links auf den Branch **main** klicken und **Update Project** wählen (`Ctrl+T`), siehe [Setup → Jede Woche](python_installation.md#jede-woche-neues-material-holen). Im Terminal geht es auch mit:

```bash
git pull
```

- Bearbeite die Notebooks direkt. Eine veröffentlichte Datei ändert sich nie mehr, deshalb überschreibt `git pull` deine Arbeit nicht.
- Die Folien liegen als PDF im Ordner des Unterrichtsblocks, die Lösungen erscheinen nach dem Unterricht in `Unterrichtsblock-N/Loesungen/`.
- Gib eigenen Dateien einen eigenen Namen, zum Beispiel `meine_notizen.ipynb`.
- Die Notebooks erwarten die Daten relativ zum Blockordner unter `../data/`. Klone deshalb immer das ganze Repository.

## Prüfung

Spick für die Prüfung (ein A4-Blatt, beidseitig bedruckt): [DAT-SKI_Spick.pdf](downloads/DAT-SKI_Spick.pdf)

Prüfung SS2026 als Referenz (ohne Lösungen; keine Garantie, dass deine Prüfung gleich aufgebaut oder gleich schwierig ist): [DAT-SKI_Pruefung_SS2026.pdf](downloads/DAT-SKI_Pruefung_SS2026.pdf)
