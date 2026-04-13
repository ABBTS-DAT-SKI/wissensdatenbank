# Daten und Aufgaben herunterladen

Lade für jeden Unterrichtsblock immer zwei ZIP-Dateien herunter:

1. `data.zip`
2. das Blockpaket, zum Beispiel `Unterrichtsblock-2.zip`

## Downloads

- [data.zip](downloads/data.zip)
- [Unterrichtsblock-2.zip](downloads/Unterrichtsblock-2.zip)
- [Unterrichtsblock-3.zip](downloads/Unterrichtsblock-3.zip)
- [Unterrichtsblock-4.zip](downloads/Unterrichtsblock-4.zip)
- [Unterrichtsblock-5.zip](downloads/Unterrichtsblock-5.zip)
- [Unterrichtsblock-6.zip](downloads/Unterrichtsblock-6.zip)
- [Unterrichtsblock-7.zip](downloads/Unterrichtsblock-7.zip)
- [Unterrichtsblock-8.zip](downloads/Unterrichtsblock-8.zip)
- [Unterrichtsblock-9.zip](downloads/Unterrichtsblock-9.zip)

## Zielstruktur nach dem Entpacken

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

## Nach dem Entpacken

1. Öffne die Notebook-Datei nicht direkt aus dem ZIP, sondern entpacke immer zuerst beide ZIP-Dateien vollständig.
2. Öffne danach den Oberordner, zum Beispiel `C:\DAT-SKI\`, in VS Code.
3. Öffne im gewünschten Unterrichtsblock das passende Notebook (`.ipynb`).
4. Wähle oben rechts den Python-Kernel aus. Falls mehrere Optionen erscheinen, nimm die installierte Python-Version, zum Beispiel `Python 3.13`.
5. Führe die Zellen mit dem Play-Button oder mit `Shift+Enter` aus.

## Häufige Fehler

- `data/` liegt im falschen Ordner, zum Beispiel innerhalb von `Unterrichtsblock-2/`.
- Der Blockordner wurde doppelt entpackt, zum Beispiel `DAT-SKI/Unterrichtsblock-2/Unterrichtsblock-2/`.
- Beim Einlesen erscheint ein Fehler mit `../data/...`. In diesem Fall stimmt die Ordnerstruktur fast immer nicht.
- Die Dateien wurden in einen sehr tiefen oder geschützten Ordner entpackt. Ein kurzer Pfad wie `C:\DAT-SKI\` funktioniert meist zuverlässiger.
