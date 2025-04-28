# Pivot und Melt in Pandas

Daten können in zwei grundlegenden Formaten vorliegen:

- **Langes Format**: Jede Beobachtung hat eine eigene Zeile. Hat es zu einem bestimmten Zeitpunkt mehrere Sensormesswerte, so stehen diese in jeweils einer neuen Zeile.
- **Breites Format**: Verschiedene Sensoren sind in Spalten organisiert. Jeder Sensor hat also seine eigene Spalte. Der Zeitstempel jeder Zeile gibt es nur einmal.

Pivot- und Melt-Operationen sind notwendig, um:

- Daten für verschiedene Analysen in das richtige Format zu bringen
- Zeitreihendaten für Visualisierungen zu strukturieren
- Pivot-Tabellen für Berichte zu erstellen
- Daten für Machine Learning Modelle zu formatieren
- Zwischen verschiedenen Datenformaten zu konvertieren


## Wann eignet sich welches Format?

Das breite Datenformat ist für die meisten Anwendungsfälle gut geeignet. Das breite Datenformat eignet sich aber besonders für Machine Learrning Tasks.

Das lange Datenformat eignet sich vor allem dann, wenn es sich um Event-Daten handelt, wie zum Beispiel ein Lichtschalter. Da müssen dann nicht z.B. alle 5 Minuten eine neue Zeile erstellt werden, sondern nur wenn sich der Wert verändert. Folgendes Beispiel soll dies veranschaulichen:

**Langes Datenformat**
```txt
                                    state
timestamp           sensor               
2025-04-28 10:00:00 Lichtschalter1      1
2025-04-28 11:00:00 Lichtschalter1      0
2025-04-28 17:00:00 Lichtschalter2      1
2025-04-28 23:00:00 Lichtschalter2      0
```

**Breites Datenformat**
```txt
timestamp            Lichtschalter1  Lichtschalter2
2025-04-28 00:00:00             0.0             0.0
2025-04-28 01:00:00             0.0             0.0
2025-04-28 02:00:00             0.0             0.0
2025-04-28 03:00:00             0.0             0.0
2025-04-28 04:00:00             0.0             0.0
2025-04-28 05:00:00             0.0             0.0
2025-04-28 06:00:00             0.0             0.0
2025-04-28 07:00:00             0.0             0.0
2025-04-28 08:00:00             0.0             0.0
2025-04-28 09:00:00             0.0             0.0
2025-04-28 10:00:00             1.0             0.0
2025-04-28 11:00:00             0.0             0.0
2025-04-28 12:00:00             0.0             0.0
2025-04-28 13:00:00             0.0             0.0
2025-04-28 14:00:00             0.0             0.0
2025-04-28 15:00:00             0.0             0.0
2025-04-28 16:00:00             0.0             0.0
2025-04-28 17:00:00             0.0             1.0
2025-04-28 18:00:00             0.0             1.0
2025-04-28 19:00:00             0.0             1.0
2025-04-28 20:00:00             0.0             1.0
2025-04-28 21:00:00             0.0             1.0
2025-04-28 22:00:00             0.0             1.0
2025-04-28 23:00:00             0.0             0.0
2025-04-29 00:00:00             0.0             0.0
```

## Pivot-Operationen

Die `pivot()`-Funktion ermöglicht es, Daten von einem langen in ein breites Format zu transformieren. Bei der `pivot()`-Operation muss angegeben werden, welche Spalte den Index bildet (meistens der Zeitstempel). Welche Spalten den Namen der Messreihe beinhalten und welche Spalte die effektiven Werte beinhaltet.

```python
import pandas as pd

# Erstellen eines Beispiel-DataFrames mit Sensordaten
df = pd.DataFrame({
    'Zeitstempel': pd.date_range('2025-02-01', periods=4, freq='h'),
    'Sensor': ['Sensor1', 'Sensor2', 'Sensor1', 'Sensor2'],
    'Temperatur': [22.5, 23.0, 24.0, 21.5]
})

# Pivot-Operation
df_pivot = df.pivot(
    index='Zeitstempel',
    columns='Sensor',
    values='Temperatur'
)

print("Pivot-Ergebnis (breites Datenformat):")
print(df_pivot)
```

**Asugabe:**
```txt
Pivot-Ergebnis (breites Datenformat):
Sensor               Sensor1  Sensor2
Zeitstempel                          
2025-02-01 00:00:00     22.5      NaN
2025-02-01 01:00:00      NaN     23.0
2025-02-01 02:00:00     24.0      NaN
2025-02-01 03:00:00      NaN     21.5

```


## Melt-Operationen

### Grundlegendes Melt

Die `melt()`-Funktion transformiert Daten von einem breiten in ein langes Format.
Hier müssen mit `value_vars` Die Spalten identifiziert werden, welche eine Messreihe darstellen. Des Weiteren muss ein neuer Name für die Spalte angegeben werden, die die Namen der Messreihen beinhaltet (`var_name`). Sowie für die Spalte, die den tatsächlichen Wert beinhaltet (`value_name`). 

```python
# Erstellen eines breiten DataFrames
df_wide = pd.DataFrame({
    'Zeitstempel': pd.date_range('2025-02-01', periods=2, freq='h'),
    'Sensor1_Temperatur': [22.5, 23.0],
    'Sensor2_Temperatur': [23.0, 24.0],
    'Sensor1_CO2': [450, 460],
    'Sensor2_CO2': [500, 510]
})

# Melt-Operation
df_melt = pd.melt(
    df_wide,
    id_vars=['Zeitstempel'],
    value_vars=['Sensor1_Temperatur', 'Sensor2_Temperatur', 'Sensor1_CO2', 'Sensor2_CO2'],
    var_name='Sensor_Messwert',
    value_name='Wert'
)

print("\nMelt-Ergebnis (langes Datenformat):")
print(df_melt)
```


**Asugabe:**
```txt
Melt-Ergebnis (langes Datenformat):
          Zeitstempel     Sensor_Messwert   Wert
0 2025-02-01 00:00:00  Sensor1_Temperatur   22.5
1 2025-02-01 01:00:00  Sensor1_Temperatur   23.0
2 2025-02-01 00:00:00  Sensor2_Temperatur   23.0
3 2025-02-01 01:00:00  Sensor2_Temperatur   24.0
4 2025-02-01 00:00:00         Sensor1_CO2  450.0
5 2025-02-01 01:00:00         Sensor1_CO2  460.0
6 2025-02-01 00:00:00         Sensor2_CO2  500.0
7 2025-02-01 01:00:00         Sensor2_CO2  510.0
```

## Zusammenfassung

**Melt vs. Pivot**:

   - `melt()`: Breit zu lang
   - `pivot()`: Lang zu breit