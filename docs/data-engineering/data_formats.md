# Einführung in Datenformate und deren Einlesen in Pandas

Pandas unterstützt eine Vielzahl von Datenformaten. In diesem Abschnitt zeigen wir, wie man verschiedene Formate einliest, welche Encoding-Probleme auftreten können und wie man sie handhabt.

## Was ist Encoding?

Encoding (Zeichenkodierung) bestimmt, wie Buchstaben und Sonderzeichen als Bytes im Computer gespeichert werden. Die häufigsten Encodings sind:

- **UTF-8**: Moderner Standard, der alle internationalen Zeichen unterstützt
- **ISO-8859-1** (auch Latin-1): Älteres Encoding für westeuropäische Sprachen
- **ASCII**: Einfaches Encoding für englische Zeichen ohne Umlaute

Falsche Encodings führen zu Problemen wie `UnicodeDecodeError` oder unlesbaren Zeichen (z.B. `Ã¤` statt `ä`).

## Einlesen verschiedener Dateiformate

Pandas bietet einheitliche Funktionen zum Einlesen verschiedener Dateiformate:

```python
# CSV-Dateien einlesen
df = pd.read_csv("daten.csv", encoding="utf-8")

# Excel-Dateien einlesen
df = pd.read_excel("daten.xlsx", sheet_name="Tabelle1")

# JSON-Dateien einlesen
df = pd.read_json("daten.json", encoding="utf-8")

# Parquet-Dateien einlesen
df = pd.read_parquet("daten.parquet")
```

Bei Encoding-Problemen kann ein alternatives Encoding verwendet werden:
```python
# Alternative Encodings bei Problemen mit CSV oder JSON
df = pd.read_csv("daten.csv", encoding="ISO-8859-1")
df = pd.read_json("daten.json", encoding="ISO-8859-1")
```

## Daten in verschiedenen Formaten speichern

Pandas ermöglicht es auch, DataFrames in verschiedenen Formaten zu speichern:

```python
# CSV-Datei speichern
df.to_csv("ausgabe.csv", index=False)

# Excel-Datei speichern
df.to_excel("ausgabe.xlsx", index=False)

# JSON-Datei speichern
df.to_json("ausgabe.json", orient="records", lines=True)

# Parquet-Datei speichern
df.to_parquet("ausgabe.parquet")
```

## Praktische Tipps zum Umgang mit Encodings

- **Dateien ansehen**: Nur die ersten Zeilen einlesen mit `nrows=5`
- **Trennzeichen anpassen**: Bei CSV mit `sep=";"` oder `delimiter="\t"`
- **Encodingprobleme umgehen**: Wenn unbekannt, teste zuerst `utf-8`, dann `ISO-8859-1`
- **Fehlende Werte**: Mit `na_values=["NA", "-", "?"]` definieren

```python
# Praktisches Beispiel mit mehreren Parametern
df = pd.read_csv("daten.csv", 
                encoding="utf-8",
                sep=";",
                decimal=",",
                na_values=["NA", "n.a."],
                nrows=1000)
```