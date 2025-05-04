# Arbeiten mit Time-Indexes in Pandas

In diesem Dokument gehen wir auf die Grundlagen der Arbeit mit Zeitstempeln und Zeitindizes in Pandas ein. Dabei behandeln wir wichtige Themen wie das Finden fehlender Daten, das Sortieren von Indizes, das Arbeiten mit Zeitstempeln (z. B. Umwandlung in `datetime`), Zeitzonen und die Zeitumstellung (Sommerzeit).

## Erstellen eines DataFrames mit Zeitstempeln und fehlenden Daten

Zunächst erstellen wir einen einfachen DataFrame mit Zeitstempeln, einer Temperatur-Spalte und fehlenden Werten (`NA`). Dabei sorgen wir dafür, dass die Zeitstempel korrekt als `datetime` erkannt werden, was für spätere Zeitreihen-Operationen wichtig ist.

```python
import pandas as pd

# Erstellen des DataFrames mit Zeitstempeln und fehlenden Werten (NA)
data_unsorted = [22.5, 23.0, pd.NA, 24.0, 25.0]
dates_unsorted = ['2025-02-03', '2025-02-01', '2025-02-02', '2025-02-05', '2025-02-04']

# Erstellen des DataFrames ohne Index
df = pd.DataFrame(data_unsorted, columns=['Temperatur'])

# Umwandlung der Datumsangaben in datetime und Setzen des Index
df['Datum'] = pd.to_datetime(dates_unsorted)
df = df.set_index('Datum')

# Ausgabe des DataFrames
print(df)
```

**Ausgabe:**
```txt
           Temperatur
Datum
2025-02-03       22.5
2025-02-01       23.0
2025-02-02       <NA>
2025-02-05       24.0
2025-02-04       25.0
```

### Erklärung:
- Die Zeitstempel in der Liste `dates_unsorted` werden mit `pd.to_datetime()` in das `datetime`-Format konvertiert.
- Der DataFrame wird dann mit `set_index()` so verändert, dass die `Datum`-Spalte als Index verwendet wird.

## Index-Sortierung

Nach der Umwandlung der Zeitstempel in `datetime` möchten wir den Index so sortieren, dass die Zeitstempel in der richtigen Reihenfolge sind. Dafür verwenden wir `sort_index()`.

```python
# Sortieren des Indexes nach Datum
df = df.sort_index()

# Ausgabe des sortierten DataFrames
print(df)
```

**Ausgabe:**
```txt
           Temperatur
Datum
2025-02-01       23.0
2025-02-02       <NA>
2025-02-03       22.5
2025-02-04       25.0
2025-02-05       24.0
```

## Fehlende Daten finden

Fehlende Werte sind häufig in Zeitreihen und können durch verschiedene Faktoren wie Sensorfehler oder Datenlücken entstehen. In Pandas können Sie fehlende Werte leicht erkennen, indem Sie `isnull()` verwenden.

### Beispiel: Fehlende Daten finden

```python
# Ausgabe der Zeilen mit fehlenden Daten
print("Zeilen mit fehlenden Daten:")
print(df[df.isnull().values])
```

**Ausgabe:**
```txt
Zeilen mit fehlenden Daten:
           Temperatur
Datum
2025-02-02       <NA>
```

## Zeitzonen und Sommerzeit

Es ist wichtig, sicherzustellen, dass Zeitstempel mit der richtigen Zeitzone und unter Berücksichtigung der Sommerzeit (Daylight Saving Time) behandelt werden. Um dies zu erreichen, können Sie die `tz_localize()` und `tz_convert()` Funktionen in Pandas verwenden.

### Beispiel: Umgang mit Zeitzonen und Sommerzeit

In diesem Beispiel stellen wir sicher, dass die Zeitstempel korrekt lokalisiert und in eine andere Zeitzone konvertiert werden, dabei die Sommerzeit korrekt berücksichtigt wird.

```python
# Lokalisieren des DatetimeIndex in der Zeitzone Zürich
df.index = df.index.tz_localize('Europe/Zurich')

# Umwandeln der Zeitzone in UTC
df.index = df.index.tz_convert('UTC')

# Ausgabe des DataFrames mit Zeitzonenbehandlung
print(df)
```

**Ausgabe:**
```txt
                          Temperatur
Datum
2025-01-31 23:00:00+00:00       23.0
2025-02-01 23:00:00+00:00       <NA>
2025-02-02 23:00:00+00:00       22.5
2025-02-03 23:00:00+00:00       25.0
2025-02-04 23:00:00+00:00       24.0
```

**Erklärung:**

- Zunächst haben wir den `datetime`-Index in die Zeitzone `Europe/Zurich` lokalisiert.
- Anschliessend wurde der Index in die UTC-Zeitzone konvertiert.