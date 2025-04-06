# Spaltenmanipulation

Die Arbeit mit Daten in Pandas dreht sich oft um das Manipulieren von Spalten in DataFrames. Dieser Leitfaden zeigt dir die wichtigsten Techniken, um Spalten auszuwählen, zu erstellen, zu verändern und zu analysieren. Mit diesen Grundlagen wirst du in der Lage sein, Daten effektiv zu transformieren und aussagekräftige Informationen zu gewinnen.

## Schnellübersicht: Pandas "Cheat Sheet"

| Operation                       | Syntax                                                    | Beschreibung                           |
|---------------------------------|-----------------------------------------------------------|----------------------------------------|
| Spalte auswählen                | `df['Spalte']` oder `df.Spalte`                           | Einzelne Spalte als Series             |
| Mehrere Spalten                 | `df[['Spalte1', 'Spalte2']]`                              | Mehrere Spalten als DataFrame          |
| Neue Spalte erstellen           | `df['Neue_Spalte'] = Wert`                                | Fügt eine neue Spalte hinzu            |
| Bedingte Spalte                 | `df.loc[df['Spalte'] > Wert, 'Neue_Spalte'] = Wert`       | Fügt Werte basierend auf Bedingung ein |
| Spalte umbenennen               | `df.rename(columns={'Alt': 'Neu'})`                       | Benennt Spalten um                     |
| Spalte löschen                  | `df.drop('Spalte', axis=1)`                               | Entfernt eine Spalte                   |
| Datentyp umwandeln              | `df['Spalte'].astype(Typ)`                                | Konvertiert Spalte in anderen Typ      |
| Bedingte Transformation (where) | `df['Spalte'].where(Bedingung, Ersatz)`                   | Ersetzt Werte wo Bedingung FALSCH ist  |
| Bedingte Transformation (mask)  | `df['Spalte'].mask(Bedingung, Ersatz)`                    | Ersetzt Werte wo Bedingung WAHR ist    |
| Rundung                         | `df['Spalte'].round(Dezimalstellen)`                      | Rundet Werte auf Dezimalstellen        |
| Zeilen filtern (einfach)        | `df[df['Spalte'] > Wert]`                                 | Filtert Zeilen nach Bedingung          |
| Zeilen filtern (mehrfach)       | `df[(Bedingung1) & (Bedingung2)]`                         | Filtert mit UND-Verknüpfung            |
| Zeilen filtern (Liste)          | `df[df['Spalte'].isin([Wert1, Wert2])]`                   | Filtert Zeilen nach Werteliste         |
| Statistische Analyse            | `df['Spalte'].describe()`                                 | Berechnet statistische Kennzahlen      |
| Gruppierung                     | `df.groupby('Gruppe')['Spalte'].agg()`                    | Gruppiert und aggregiert Daten         |
| Mehrere Aggregationen           | `df.groupby('Gruppe').agg({'Sp1': 'mean', 'Sp2': 'max'})` | Verschiedene Aggregationen pro Spalte  |
| Position auswählen (iloc)       | `df.iloc[Zeile, Spalte]`                                  | Zugriff basierend auf Position         |
| Zeilenbereich                   | `df.iloc[Start:Ende]`                                     | Wählt Zeilenbereich aus                |
| Zellen-Bereich                  | `df.iloc[ZeilenStart:Ende, SpaltenStart:Ende]`            | Wählt Rechteck aus Zellen aus          |


## 1. Spalten auswählen und anzeigen

Der erste Schritt bei der Datenanalyse ist oft, bestimmte Spalten auszuwählen. Pandas bietet verschiedene Möglichkeiten, auf Spalten zuzugreifen - von einzelnen Spalten bis hin zu komplexen Teilmengen. Dies ist grundlegend für alle weiteren Operationen, da du zunächst auswählen musst, mit welchen Daten du arbeiten möchtest.

### Einzelne Spalten auswählen

In Pandas können Spalten auf zwei Arten ausgewählt werden. Die erste Methode mit eckigen Klammern funktioniert immer, während die Punktnotation nur bei einfachen Spaltennamen ohne Sonderzeichen oder Leerzeichen funktioniert.

```python
# Methode 1: Mit eckigen Klammern - die universellere Methode
temperatur = sensordaten['Temperatur']
print(f"Typ: {type(temperatur)}")  # <class 'pandas.core.series.Series'>

# Methode 2: Mit Punktnotation - kürzer, aber nur bei einfachen Spaltennamen
temperatur = sensordaten.Temperatur  # Gleiches Ergebnis
```

Eine einzelne Spalte wird als Pandas Series zurückgegeben - ein eindimensionales Array mit Index.

### Mehrere Spalten auswählen

Wenn du mit mehreren Spalten gleichzeitig arbeiten möchtest, benötigst du doppelte eckige Klammern. Dies ist einer der häufigsten Fehler bei Pandas-Anfängern - vergiss die doppelten Klammern nicht!

```python
# WICHTIG: Doppelte eckige Klammern für mehrere Spalten!
temp_feuchte = sensordaten[['Temperatur', 'Luftfeuchtigkeit']]
print(f"Typ: {type(temp_feuchte)}")  # <class 'pandas.core.frame.DataFrame'>
```

> **Tipp für Anfänger**: Der Unterschied zwischen `df['Spalte']` (Series) und `df[['Spalte']]` (DataFrame) ist wichtig und führt oft zu Verwirrung. Mit doppelten Klammern erhältst du immer einen DataFrame, auch wenn du nur eine Spalte auswählst.

## 2. Spalten erstellen und transformieren

Oft reichen die vorhandenen Spalten in deinem Datensatz nicht aus, um alle Fragen zu beantworten. Das Erstellen neuer Spalten, auch "Feature Engineering" genannt, ist eine zentrale Fähigkeit in der Datenanalyse. Hier lernst du, wie du aus bestehenden Daten neue Informationen generieren kannst, um tiefere Einblicke zu gewinnen.

### Neue Spalten hinzufügen

Das Erstellen neuer Spalten ist in Pandas besonders einfach - du weist einfach Werte zu einem neuen Spaltennamen zu. Dies können konstante Werte, berechnete Werte oder bedingte Werte sein.

```python
# Neue Spalte mit konstantem Wert - nützlich für Kategorisierung oder Kennzeichnung
sensordaten['Messstation'] = 'Station-1'

# Neue Spalte durch Berechnung - hier am Beispiel einer Einheitenumrechnung
sensordaten['Temperatur_F'] = sensordaten['Temperatur'] * 9/5 + 32  # Umrechnung in Fahrenheit

# Bedingte Spalte - kategorisiert Werte basierend auf Schwellenwerten
sensordaten['Temp_Kategorie'] = 'Normal'  # Standardwert für alle Zeilen
sensordaten.loc[sensordaten['Temperatur'] > 25, 'Temp_Kategorie'] = 'Warm'  # Überschreibt bei hohen Werten
sensordaten.loc[sensordaten['Temperatur'] < 20, 'Temp_Kategorie'] = 'Kühl'  # Überschreibt bei niedrigen Werten
```

Die `.loc`-Methode ist besonders mächtig, da sie nur die Zeilen ändert, die der Bedingung entsprechen.

### Spalten umbenennen

```python
# Eine einzelne Spalte umbenennen
sensordaten = sensordaten.rename(columns={'Temperatur': 'Temp'})

# Mehrere Spalten umbenennen
sensordaten = sensordaten.rename(columns={
    'Luftfeuchtigkeit': 'Feuchtigkeit',
    'CO2': 'co2'
})

# Alle Spaltennamen in Kleinbuchstaben
sensordaten.columns = sensordaten.columns.str.lower()
```

### Spalten löschen

```python
# Eine Spalte löschen
sensordaten = sensordaten.drop('temperatur_f', axis=1)  # axis=1 für Spalten!

# Mehrere Spalten löschen
sensordaten = sensordaten.drop(['messstation', 'temp_kategorie'], axis=1)
```

## 3. Datentypen und Transformationen

Die richtigen Datentypen sind entscheidend für effiziente Analysen und korrekte Ergebnisse. In diesem Abschnitt lernst du, wie du Datentypen ändern und Spalteninhalte durch mathematische oder bedingte Operationen transformieren kannst. Diese Techniken helfen dir, Daten für spezifische Analysen vorzubereiten und Messwerte in andere Einheiten umzurechnen.

### Typen umwandeln

Datentypen beeinflussen sowohl den Speicherverbrauch als auch die Funktionsweise von Operationen. Die Umwandlung von Datentypen ist eine wichtige Technik, um Daten richtig zu interpretieren und effizient zu speichern.

```python
# Integer-Umwandlung - nützlich für ganzzahlige Werte und Speicheroptimierung
# Hier erst runden, dann in Integer umwandeln
sensordaten['co2'] = sensordaten['co2'].round().astype(int)

# Kategorie-Typ - sehr speichereffizient für Spalten mit wiederholten Textwerten
# z.B. für "Warm", "Normal", "Kühl", die sich oft wiederholen
sensordaten['temp_kategorie'] = sensordaten['temp_kategorie'].astype('category')

# Datentypen anzeigen - nützlich zur Überprüfung
print(sensordaten.dtypes)
```

Mit der richtigen Typenwahl kannst du nicht nur Speicher sparen, sondern auch spezifische Funktionen nutzen, die nur für bestimmte Datentypen verfügbar sind.

### Mathematische Operationen

```python
# Grundlegende Mathematik
sensordaten['temp_korrigiert'] = sensordaten['temp'] + 0.5
sensordaten['temp_normalisiert'] = sensordaten['temp'] / sensordaten['temp'].max()

# Rundungsfunktionen
sensordaten['temp_gerundet'] = sensordaten['temp'].round(1)  # Eine Dezimalstelle
```

### Bedingte Transformation

```python
# where: Behält Werte bei TRUE, ersetzt bei FALSE
sensordaten['co2_gefiltert'] = sensordaten['co2'].where(sensordaten['co2'] < 500, 500)

# mask: Ersetzt Werte bei TRUE, behält bei FALSE (Gegenteil von where)
sensordaten['temp_begrenzt'] = sensordaten['temp'].mask(sensordaten['temp'] > 25, 25)
```

## 4. Statistik und Aggregation

Das Berechnen statistischer Kennzahlen ist ein zentraler Bestandteil der Datenanalyse. Pandas bietet leistungsstarke Funktionen, um einzelne Spalten oder gruppierte Daten zu analysieren. Diese Methoden helfen dir, grundlegende Fragen zu beantworten wie "Was ist der Durchschnittswert?" oder "Wie unterscheiden sich die Werte zwischen verschiedenen Gruppen?".

### Einfache Statistiken

Pandas bietet zahlreiche Methoden für statistische Berechnungen. Diese helfen dir, schnell einen Überblick über deine Daten zu gewinnen und wichtige Kennzahlen zu bestimmen.

```python
# Einzelne Statistiken - nützlich für gezielte Fragestellungen
print(f"Mittlere Temperatur: {sensordaten['temp'].mean():.1f}°C")
print(f"Minimale Temperatur: {sensordaten['temp'].min():.1f}°C") 
print(f"Maximale Temperatur: {sensordaten['temp'].max():.1f}°C")

# Weitere nützliche Statistiken
print(f"Median-Temperatur: {sensordaten['temp'].median():.1f}°C")  # Robust gegen Ausreißer
print(f"Standardabweichung: {sensordaten['temp'].std():.1f}°C")    # Streuung der Werte

# Alle Statistiken auf einmal mit describe()
stats = sensordaten['temp'].describe()
print(stats)
```

Die `describe()`-Methode ist besonders praktisch, da sie einen umfassenden Überblick mit Mittelwert, Standardabweichung, Minimum, Maximum und Quantilen liefert.

### Gruppierte Statistiken

```python
# Angenommen, wir fügen eine Kategoriespalte hinzu
sensordaten['tageszeit'] = pd.cut(
    sensordaten.index.hour,
    bins=[0, 12, 24],
    labels=['Vormittag', 'Nachmittag'],
    right=False
)

# Gruppieren und Mittelwert
nach_tageszeit = sensordaten.groupby('tageszeit')['temp'].mean()
print(nach_tageszeit)

# Mehrere Aggregationen gleichzeitig
tageszeit_stats = sensordaten.groupby('tageszeit').agg({
    'temp': ['mean', 'min', 'max'],
    'co2': 'mean'
})
print(tageszeit_stats)
```

## 5. Zeilen auswählen (Row-Slicing)

Neben der Spaltenmanipulation ist die Auswahl bestimmter Zeilen eine wichtige Technik in Pandas. Mit Row-Slicing kannst du Teilmengen deiner Daten basierend auf Positionen oder Bedingungen extrahieren. Diese Methoden sind unverzichtbar, um gezielt mit relevanten Daten zu arbeiten und unnötige Informationen auszuschließen.

### Zeilen mit iloc auswählen (positionsbasiert)

Die `iloc`-Methode ist ein leistungsstarkes Werkzeug zum Zugriff auf Daten basierend auf ihrer numerischen Position. Dies ist besonders nützlich, wenn du mit bestimmten Zeilen und Spalten unabhängig von ihren Labels arbeiten möchtest.

```python
# Erste Zeile (Index 0) - gibt eine Series zurück
erste_zeile = sensordaten.iloc[0]
print(erste_zeile)

# Die ersten 3 Zeilen (Index 0, 1, 2) - gibt einen DataFrame zurück
erste_drei = sensordaten.iloc[0:3]  # Ende ist exklusiv!
print(erste_drei)

# Bestimmte Zellen: Zeile 0, Spalte 1 - gibt einen einzelnen Wert zurück
zelle = sensordaten.iloc[0, 1]  # Erste Zeile, zweite Spalte
print(zelle)

# Bereich von Zellen: Zeilen 0-2, Spalten 0-1 - gibt einen DataFrame zurück
bereich = sensordaten.iloc[0:3, 0:2]  # Die ersten 3 Zeilen, die ersten 2 Spalten
print(bereich)
```

Bei `iloc` ist zu beachten, dass die Indizierung bei 0 beginnt und der Endindex nicht eingeschlossen ist (wie in Python üblich).

### Zeilen filtern mit Bedingungen

Das Filtern von Zeilen basierend auf Bedingungen ist eine der häufigsten Operationen in der Datenanalyse. Pandas macht es einfach, komplexe Filterbedingungen zu formulieren und anzuwenden.

```python
# Einfache Filterbedingung - wählt nur Zeilen aus, wo die Bedingung erfüllt ist
hohe_temp = sensordaten[sensordaten['temp'] > 25]  # Nur hohe Temperaturen
print(hohe_temp)

# Mehrere Bedingungen kombinieren mit logischen Operatoren (& für UND, | für ODER)
# WICHTIG: Klammern um jede Bedingung setzen!
warm_und_trocken = sensordaten[(sensordaten['temp'] > 25) & (sensordaten['feuchtigkeit'] < 40)]
print(warm_und_trocken)

# ODER-Verknüpfung
warm_oder_trocken = sensordaten[(sensordaten['temp'] > 25) | (sensordaten['feuchtigkeit'] < 40)]
print(warm_oder_trocken)

# Filtern basierend auf einer Liste von Werten mit isin()
bestimmte_kategorien = sensordaten[sensordaten['temp_kategorie'].isin(['Warm', 'Kühl'])]
print(bestimmte_kategorien)
```

Die Klammern um jede Teilbedingung sind bei komplexen Filtern wichtig, da sonst Python-Operatorpräzedenzen zu unerwarteten Ergebnissen führen können.