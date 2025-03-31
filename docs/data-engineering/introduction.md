# Einführung in Pandas

Pandas ist eine leistungsstarke Bibliothek für die Datenanalyse in Python. Sie bietet effiziente Werkzeuge zur Verarbeitung, Filterung und Aggregation von Daten.

## 1. Installation und Import

Falls Pandas noch nicht installiert ist, kann es mit folgendem Befehl installiert werden:
```bash
pip install pandas
```

Der Import erfolgt standardmässig so:
```python
import pandas as pd
```

## 2. Einlesen von Daten

### CSV-Datei einlesen
Eine der häufigsten Methoden zum Einlesen von Daten ist das Laden einer CSV-Datei:
```python
df = pd.read_csv("daten.csv")
```

### Excel-Datei einlesen
Falls die Daten in einer Excel-Datei gespeichert sind:
```python
df = pd.read_excel("daten.xlsx")
```

## 3. Anzeige von Daten

### Die ersten Zeilen anzeigen
Um einen schnellen Überblick über die ersten fünf Zeilen des DataFrames zu erhalten:
```python
df.head()
```

### Die letzten Zeilen anzeigen
Falls die letzten Zeilen betrachtet werden sollen:
```python
df.tail()
```

### Grundlegende Informationen über den DataFrame
Um eine Übersicht über Spalten, Datentypen und fehlende Werte zu bekommen:
```python
df.info()
```

### Statistische Kennzahlen anzeigen
Für eine schnelle statistische Analyse numerischer Spalten:
```python
df.describe()
```

## 4. Daten filtern

### Zeilen basierend auf einer Bedingung auswählen
Um nur Zeilen anzuzeigen, bei denen eine bestimmte Spalte einen bestimmten Wert hat:
```python
df[df["Spalte"] == "Wert"]
```

### Mehrere Bedingungen kombinieren
```python
df[(df["Alter"] > 30) & (df["Stadt"] == "Zürich")]
```

### Filtern mit der `query`-Funktion
Die `query`-Methode ermöglicht eine elegante und lesbare Filterung des DataFrames:
```python
df.query("Alter > 30 and Stadt == 'Zürich'")
```
Diese Methode eignet sich besonders für komplexe Filterabfragen und verbessert die Lesbarkeit des Codes.

## 5. Aggregationen auf Spalten

### Berechnungen auf eine einzelne Spalte anwenden
Summe aller Werte einer Spalte:
```python
df["Umsatz"].sum()
```

Durchschnittswert einer Spalte:
```python
df["Preis"].mean()
```