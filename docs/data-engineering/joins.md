# Joins in Pandas

In der Praxis liegen Daten häufig in verschiedenen Tabellen oder Datenquellen vor. Joins sind notwendig, um diese verschiedenen Datenquellen sinnvoll zu kombinieren.

## Grundlegende Join-Typen

### Inner Join

Der Inner Join kombiniert nur die Zeilen, die in beiden DataFrames übereinstimmende (Zeit-)Schlüssel haben.

```python
import pandas as pd

# Erstellen von Beispiel-DataFrames mit Zeitreihendaten
dates_temp = pd.date_range('2025-01-01', '2025-01-07') # freq = 15min
temp_values = [22.0, 20.7, 19.7, 20.5, 19.5, 20.7, 19.0]
df_temp = pd.DataFrame({'Temperature': temp_values}, index=dates_temp)
df_temp.index.name = 'Date'

dates_co2 = pd.date_range('2025-01-03', '2025-01-09')
co2_values = [502.7, 487.3, 456.6, 453.5, 508.9, 772.1, 745.8]
df_co2 = pd.DataFrame({'CO2': co2_values}, index=dates_co2)
df_co2.index.name = 'Date'

print("Temperature Data:")
print(df_temp)
print("\nCO2 Data:")
print(df_co2)

# Inner Join - nur übereinstimmende Daten
df_inner = df_temp.join(df_co2, how='inner')
print("\nInner Join Ergebnis:")
print(df_inner)
```


**Ausgabe:**
```txt
Temperature Data:
            Temperature
Date                   
2025-01-01         22.0
2025-01-02         20.7
2025-01-03         19.7
2025-01-04         20.5
2025-01-05         19.5
2025-01-06         20.7
2025-01-07         19.0

CO2 Data:
              CO2
Date             
2025-01-03  502.7
2025-01-04  487.3
2025-01-05  456.6
2025-01-06  453.5
2025-01-07  508.9
2025-01-08  772.1
2025-01-09  745.8

Inner Join Ergebnis:
            Temperature    CO2
Date                          
2025-01-03         19.7  502.7
2025-01-04         20.5  487.3
2025-01-05         19.5  456.6
2025-01-06         20.7  453.5
2025-01-07         19.0  508.9
```

### Left Join

Der Left Join behält alle Zeilen aus dem linken DataFrame und fügt passende Daten aus dem rechten DataFrame hinzu.

```python
df_left = df_temp.join(df_co2, how='left')
print("\nLeft Join Ergebnis:")
print(df_left)
```

```txt
Left Join Ergebnis:
            Temperature    CO2
Date                          
2025-01-01         22.0    NaN
2025-01-02         20.7    NaN
2025-01-03         19.7  502.7
2025-01-04         20.5  487.3
2025-01-05         19.5  456.6
2025-01-06         20.7  453.5
2025-01-07         19.0  508.9
```


### Right Join

Der Right Join behält alle Zeilen aus dem rechten DataFrame und fügt passende Daten aus dem linken DataFrame hinzu.

```python
df_right = df_temp.join(df_co2, how='right')
print("\nRight Join Ergebnis:")
print(df_right)
```

```txt
Right Join Ergebnis:
            Temperature    CO2
Date                          
2025-01-03         19.7  502.7
2025-01-04         20.5  487.3
2025-01-05         19.5  456.6
2025-01-06         20.7  453.5
2025-01-07         19.0  508.9
2025-01-08          NaN  772.1
2025-01-09          NaN  745.8
```


### Outer Join

Der Outer Join (Full Outer Join) behält alle Zeilen aus beiden DataFrames.

```python
df_outer = df_temp.join(df_co2, how='outer')
print("\nOuter Join Ergebnis:")
print(df_outer)
```

```txt
Outer Join Ergebnis:
            Temperature    CO2
Date                          
2025-01-01         22.0    NaN
2025-01-02         20.7    NaN
2025-01-03         19.7  502.7
2025-01-04         20.5  487.3
2025-01-05         19.5  456.6
2025-01-06         20.7  453.5
2025-01-07         19.0  508.9
2025-01-08          NaN  772.1
2025-01-09          NaN  745.8
```

## Join mit einem generierten Zeitindex

Es kann nützlich sein, das eigene Datenframe mit einem neuen generierten Zeitindex zu joinen, um herauszufinden an welchen Tagen es fehlende Werte gibt. Dies ist besonders nützlich bei grossen Datenframes, da man dort schnell die Übersicht verliert. Dies wird erreicht indem eine neue Date-Range erstellt mit dem Start und Endwert des aktuellen Datenframes und diese beide dann wie gewohnt joined werden.


```python
import pandas as pd

# Erstellen von Beispiel-DataFrames mit Zeitreihendaten
dates_temp = pd.date_range('2025-01-01', '2025-01-07')
temp_values = [22.0, 20.7, 19.7, 20.5, 19.5, 20.7, 19.0]
df_temp = pd.DataFrame({'Temperature': temp_values}, index=dates_temp)
df_temp.index.name = 'Date'

# Fehlender Wert hinzufügen
df_temp = df_temp[df_temp.index != pd.to_datetime('2025-01-05')]

# Neues Datenframe mit künstlichem Zeitindex erstellen
time_idx = pd.date_range(start=df_temp.index.min(), end=df_temp.index.max(), freq='1D')
time_df = pd.DataFrame(index=time_idx)

full_df = df_temp.join(time_df, how="outer")

print(full_df)

# Nur Zeilen mit fehlenden Werten ausgeben
print(full_df[full_df.isna().any(axis=1)])
```

**Ausgabe (Datenframe mit sichtbaren fehlenden Werten):**
```txt
            Temperature
2025-01-01         22.0
2025-01-02         20.7
2025-01-03         19.7
2025-01-04         20.5
2025-01-05          NaN
2025-01-06         20.7
2025-01-07         19.0
```

**Ausgabe (nur fehlende Werte):**
```txt
            Temperature
2025-01-05          NaN
```
