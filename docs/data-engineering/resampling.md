# Resampling von Zeitreihen

## Einführung und Konzepte

### Was ist Resampling?

Resampling ist die Transformation einer Zeitreihe von einer zeitlichen Auflösung zu einer anderen. Es ermöglicht die Anpassung der Datengranularität für verschiedene Analysezwecke.

### Downsampling vs. Upsampling

- **Downsampling**: Reduzierung der Frequenz durch Zusammenführung von Datenpunkten
  ```python
  # Beispiel: Von Stunden zu Tagen
  df.resample('D').mean()  # Tagesdurchschnitt aus Stundenwerten
  ```

- **Upsampling**: Erhöhung der Frequenz durch Generierung neuer Datenpunkte
  ```python
  # Beispiel: Von Tagen zu Stunden
  df.resample('H').ffill()  # Füllt fehlende Stunden mit letztem Tageswert
  ```

### Grundlegende Methoden-Übersicht

- `resample()`: Basismethode für Frequenzwechsel
- `asfreq()`: Direkter Frequenzwechsel ohne Aggregation
- Aggregationsmethoden: Für Downsampling
- Interpolationsmethoden: Für Upsampling

**Typischer Workflow:**
```python
# 1. Resampling-Objekt erstellen
resampler = df.resample('D')

# 2. Aggregation oder Interpolation anwenden
daily_avg = resampler.mean()  # Für Downsampling
daily_filled = resampler.ffill()  # Für Upsampling
```

## `resample()` - Die Basis-Methode

### Grundlegende Funktionsweise

`resample()` erstellt ein Resampling-Objekt, dem weitere Operationen folgen müssen. Es definiert:

- Die Zielfrequenz
- Die Gruppierung der Datenpunkte
- Die Basis für nachfolgende Aggregation oder Interpolation

**Wichtig:** `resample()` führt noch keine Transformation durch, sondern bereitet sie nur vor!

```python
# Nur Gruppierung, keine Daten
groups = df.resample('W')

# Daten werden erst bei Anwendung einer Aggregation sichtbar
weekly_mean = groups.mean()
```

### Frequenznotation und Parameter

**Hauptfrequenzen:**
  - `'h'` – stündlich
  - `'min'` – minütlich
  - `'s'` – sekundlich
  - `'D'` – täglich
  - `'B'` – Werktage
  - `'W'` – wöchentlich
  - `'ME'` – monatlich
  - `'QE'` – vierteljährlich
  - `'YE'` – jährlich

**Zusätzliche Parameter:**

- **Zusammengesetzte Frequenzen:** `'2h'`, `'5min'`, `'3W'`, etc.
  ```python
  # Alle 2 Stunden
  df.resample('2h').mean()
  
  # Alle 15 Minuten
  df.resample('15min').mean()
  
  # Alle 6 Monate
  df.resample('6ME').sum()
  ```

- **Ausgangsbasis:**
  ```python
  # Monat mit Endwert als repräsentativ
  df.resample('ME', label='right').mean()
  ```

### Warum resample() allein nicht reicht

Das Resample-Objekt enthält keine Daten, sondern definiert nur die Gruppierung. Es muss eine nachfolgende Operation angewendet werden:

- Aggregation für Downsampling
- Interpolation oder Fill für Upsampling

**Häufiger Fehler:**
```python
# FALSCH: Ergebnis hat keine Werte
result = df.resample('D')  

# RICHTIG: Aggregation oder Füllung notwendig
result = df.resample('D').mean()
```

## Downsampling: Von hoch zu niedrig

### Konzept

Downsampling kombiniert mehrere Datenpunkte zu einem, basierend auf der gewählten Aggregationsmethode. Die Wahl der Methode bestimmt, wie die Information erhalten bleibt.

**Beispiel-Szenario:**
```python
# Temperaturmessungen im Minutentakt zu Stundenwerten
temp_hourly = temp_minute.resample('H').mean()

# Verkaufstransaktionen zu Tagesumsätzen
daily_sales = transactions.resample('D').sum()
```

### Aggregationsmethoden im Detail

#### Statistische Aggregationen

1. **`mean()`** - Arithmetischer Mittelwert

   - Berechnet den Durchschnitt aller Werte
   - Glättet Ausreisser und Variationen
   
   ```python
   # Durchschnittliche Temperatur pro Tag
   daily_avg_temp = hourly_temp.resample('D').mean()
   ```

2. **`sum()`** - Summation

   - Addiert alle Werte innerhalb des Zeitfensters
   - Erhält die Gesamtmenge
   
   ```python
   # Gesamter Regenfall pro Monat
   monthly_rainfall = daily_rainfall.resample('ME').sum()
   ```

3. **`max()`** - Maximum

   - Behält den höchsten Wert
   - Wichtig für Spitzenwerte
   
   ```python
   # Maximale Temperatur pro Monat
   monthly_max_temp = daily_temp.resample('ME').max()
   ```

4. **`min()`** - Minimum

   - Behält den niedrigsten Wert
   - Kritisch für Grenzwertüberwachung
   
   ```python
   # Niedrigste Luftfeuchtigkeit pro Monat
   monthly_min_humidity = hourly_humidity.resample('ME').min()
   ```

5. **`count()`** - Anzahl

   - Zählt gültige Werte (nicht NaN)
   - Für Datenqualitätsprüfung
   
   ```python
   # Anzahl der Messungen pro Tag
   daily_measurements = hourly_data.resample('D').count()
   ```

6. **`std()`** - Standardabweichung

   - Misst die Streuung innerhalb des Zeitfensters
   - Indikator für Variabilität
   
   ```python
   # Temperaturvariabilität pro Woche
   weekly_temp_std = daily_temp.resample('W').std()
   ```

7. **`median()`** - Median

   - Mittlerer Wert bei Sortierung
   - Robust gegen Ausreisser
   
   ```python
   # Medianpreis pro Monat (weniger anfällig für extreme Werte)
   monthly_median_price = daily_prices.resample('ME').median()
   ```

#### Temporale Aggregationen

1. **`first()`** - Erster Wert

   - Nimmt den ersten gültigen Wert
   - Repräsentiert Zeitfensterbeginn
   
   ```python
   # Eröffnungskurs am Beginn jeder Woche
   weekly_open = daily_prices.resample('W').first()
   ```

2. **`last()`** - Letzter Wert

   - Nimmt den letzten gültigen Wert
   - Repräsentiert Zeitfensterende
   
   ```python
   # Schlusskurs am Ende jeder Woche
   weekly_close = daily_prices.resample('W').last()
   ```

#### Benutzerdefinierte Aggregationen

**Mit `agg()` für spaltenweise Aggregation:**
```python
# Verschiedene Aggregationen pro Spalte
df.resample('H').agg({
    'temperatur': 'mean',      # Durchschnitt für Temperatur
    'luftfeuchtigkeit': 'mean',# Durchschnitt für Luftfeuchtigkeit
    'niederschlag': 'sum',     # Summe für Niederschlag
    'windgeschwindigkeit': ['mean', 'max'] # Mehrfache Aggregationen
})

# Mehrfache Aggregationen für alle Spalten
df.resample('D').agg(['mean', 'std', 'count'])
```

## Upsampling: Von niedrig zu hoch

### Konzept

Upsampling generiert neue Zeitindizes zwischen existierenden Datenpunkten. Die Werte müssen explizit gefüllt oder interpoliert werden.

**Wichtig:** Upsampling "erfindet" keine neuen Daten, sondern schätzt sie basierend auf vorhandenen Informationen!

### `asfreq()` - Methode

**Grundfunktion:**

- Erzeugt neue Zeitindizes mit der Zielfrequenz
- Füllt Werte initial mit NaN
- Keine automatische Datengenerierung

**Anwendung:**
```python
# Grundlegendes Upsampling (alle neuen Werte = NaN)
hourly_empty = daily_data.resample('H').asfreq()

# Mit Forward Fill - letzte Werte werden vorwärts gefüllt
hourly_filled = daily_data.resample('H').asfreq(method='ffill')

# Downsampling mit asfreq (nimmt letzten Wert)
daily_end = hourly_data.resample('D').asfreq(how='end')
```

### Fill-Methoden

#### Forward/Backward Fill

1. **`ffill()` - Forward Fill**

   - Propagiert letzten bekannten Wert vorwärts
   - Bis zum nächsten gültigen Datenpunkt
   
   ```python
   # Beispiel: Preise "halten" zwischen Handelstagen
   daily_prices = weekly_prices.resample('D').ffill()
   ```

2. **`bfill()` - Backward Fill**

   - Propagiert nächsten bekannten Wert rückwärts
   - Für Füllungen in Richtung Vergangenheit
   
   ```python
   # Beispiel: Vorausschau auf nächsten bekannten Wert
   filled_backwards = monthly_data.resample('D').bfill()
   ```

#### Spezifische Füllwerte

**`fillna()` mit Konstanten:**
```python
# Alle neuen Werte mit 0 füllen
hourly_data = daily_data.resample('H').asfreq().fillna(0)

# Verschiedene Füllwerte pro Spalte
hourly_data = daily_data.resample('H').asfreq()
hourly_data['temperature'].fillna(20)  # Standardtemperatur
hourly_data['humidity'].fillna(method='ffill')  # Forward Fill für Feuchtigkeit
```

### Interpolationsmethoden

#### Mathematische Interpolationstypen

1. **Lineare Interpolation (`linear`)**

   - Gerade Linien zwischen Punkten
   - Standard für stetige Daten
   
   ```python
   # Gleichmässige Verteilung zwischen Messpunkten
   hourly_linear = daily_temp.resample('H').interpolate(method='linear')
   ```

2. **Zeitbasierte Interpolation (`time`)**

   - Gewichtet nach zeitlichen Abständen
   - Für ungleichmässige Zeitintervalle
   
   ```python
   # Berücksichtigt tatsächliche Zeitabstände
   interpolated = irregular_data.resample('H').interpolate(method='time')
   ```

3. **Nächster Nachbar (`nearest`)**

   - Kein Übergang, Stufenfunktion
   - Für diskrete Werte
   
   ```python
   # Diskrete Werte wie Kategorien
   category_hourly = daily_category.resample('H').interpolate(method='nearest')
   ```

4. **Polynomische Interpolation (`polynomial`)**

   - Polynome n-ter Ordnung
   - Parameter `order` bestimmt Grad
   
   ```python
   # Glatte Kurven für natürliche Phänomene
   smooth_curve = daily_data.resample('H').interpolate(method='polynomial', order=3)
   ```
