# Überblick über Datentypen

Pandas bietet eine Vielzahl von Datentypen, die speziell für die Verarbeitung und Analyse von Daten optimiert sind. Die Wahl des richtigen Datentyps kann die Speicher- und Rechenleistung erheblich beeinflussen.

## 1. Numerische Datentypen

### Ganzzahlige Datentypen (Integer)
Pandas unterstützt verschiedene Integer-Typen mit unterschiedlicher Speichergrösse:

- **int8, int16, int32, int64**: Diese Typen speichern ganze Zahlen mit 8, 16, 32 oder 64 Bit. Je grösser die Bitanzahl, desto grössere Werte können gespeichert werden.
- Beispiel:
  ```python
  df["A"] = df["A"].astype("int32")
  ```
  Hier wird die Spalte "A" in den Integer-Typ mit 32 Bit umgewandelt, was Speicherplatz sparen kann, wenn keine grösseren Werte benötigt werden.

### Gleitkommazahlen (Float)
Für Dezimalzahlen stehen folgende Datentypen zur Verfügung:

- **float16, float32, float64**: Diese Typen repräsentieren Gleitkommazahlen mit 16, 32 oder 64 Bit. Höhere Bitwerte bieten eine höhere Genauigkeit, verbrauchen jedoch mehr Speicher.
- Beispiel:
  ```python
  df["B"] = df["B"].astype("float64")
  ```
  In diesem Beispiel wird die Spalte "B" in den Standard-Gleitkommatyp mit 64 Bit konvertiert.

## 2. Boolesche Werte
Der boolesche Datentyp speichert Wahrheitswerte:

- **bool**: Kann nur die Werte `True` oder `False` annehmen.
- Beispiel:
  ```python
  df["C"] = df["C"].astype("bool")
  ```
  Damit wird die Spalte "C" in den Datentyp `bool` umgewandelt, wodurch nur zwei mögliche Werte gespeichert werden können.

## 3. Zeichenketten (Strings)
Pandas speichert Zeichenketten standardmässig als `object`, bietet aber auch eine optimierte Variante:

- **object**: Allgemeiner Typ für gemischte Daten, meist für Strings verwendet.
- **string**: Ein effizienterer String-Datentyp, eingeführt in neueren Pandas-Versionen.
- Beispiel:
  ```python
  df["D"] = df["D"].astype("string")
  ```
  Hier wird die Spalte "D" explizit in den neuen `string`-Typ umgewandelt, um Speicherplatz zu sparen und die Verarbeitung zu beschleunigen.

## 4. Kategorische Daten
Der `category`-Datentyp eignet sich für Spalten mit wiederkehrenden Werten:

- **category**: Spart Speicherplatz, indem wiederholte Werte als numerische Kategorien gespeichert werden.
- Beispiel:
  ```python
  df["E"] = df["E"].astype("category")
  ```
  Diese Umwandlung ist nützlich für Spalten mit wenigen einzigartigen Werten, wie zum Beispiel Geschlechter oder Produktkategorien.

## 5. Zeitbezogene Datentypen

### Datums- und Zeitstempel
Für die Arbeit mit Zeitstempeln gibt es den Datentyp:

- **datetime64[ns]**: Speichert Datums- und Uhrzeitangaben mit Nanosekunden-Präzision.
- Beispiel:
  ```python
  df["F"] = pd.to_datetime(df["F"])
  ```
  Hier wird sichergestellt, dass die Spalte "F" korrekt als Zeitstempel interpretiert wird.

### Zeitdifferenzen
Pandas ermöglicht auch die Berechnung von Zeitspannen:

- **timedelta64[ns]**: Speichert die Differenz zwischen zwei Zeitstempeln.
- Beispiel:
  ```python
  df["G"] = df["H"] - df["I"]
  ```
  In diesem Fall wird die Differenz zwischen den Spalten "H" und "I" berechnet und in einer neuen Spalte "G" gespeichert.