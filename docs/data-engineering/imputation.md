# Imputation in Pandas

Fehlende Werte in Datensätzen sind ein häufiges Problem in der Datenanalyse. Sie können durch Messfehler, nicht beantwortete Fragen in Umfragen oder technische Probleme entstehen. Die Imputation (Ersetzung) fehlender Werte kann durch verschieden komplexe Methoden erfolgen (wie Durchschnitt oder lineare Interpolation).

## Grundlegende Imputationsmethoden


Die einfachste Form der Imputation ist das Ersetzen fehlender Werte durch einen konstanten Wert. Diese ist in [Entfernen von Ausreissern](../fillna) schon beschrieben.

## Fortgeschrittene Imputationsmethoden

Für Zeitreihendaten bietet Pandas verschiedene Interpolationsmethoden an. Mit einer linearen Interpolation werden die Daten zwischen den nächsten existierenden Werten durch eine gerade Linie interpoliert. 

```python
import pandas as pd

data = {
    'Zeitstempel': ['2025-02-01 08:00', '2025-02-01 09:00', '2025-02-01 10:00', 
                    '2025-02-01 11:00', '2025-02-01 12:00', '2025-02-01 13:00'],
    'Temperatur': [21.5, 22.0, None, None, 24.5, 25.0]
}

df = pd.DataFrame(data)
df['Zeitstempel'] = pd.to_datetime(df['Zeitstempel'])
df = df.set_index('Zeitstempel')

print("Originale Zeitreihendaten mit fehlenden Werten:")
print(df)

# Lineare Interpolation
df_linear = df.interpolate(method='linear')

print("\nDataFrame nach linearer Interpolation:")
print(df_linear)
```

**Ausgabe:**
```txt
Originale Zeitreihendaten mit fehlenden Werten:
                     Temperatur
Zeitstempel                    
2025-02-01 08:00:00        21.5
2025-02-01 09:00:00        22.0
2025-02-01 10:00:00         NaN
2025-02-01 11:00:00         NaN
2025-02-01 12:00:00        24.5
2025-02-01 13:00:00        25.0

DataFrame nach linearer Interpolation:
                     Temperatur
Zeitstempel                    
2025-02-01 08:00:00   21.500000
2025-02-01 09:00:00   22.000000
2025-02-01 10:00:00   22.833333
2025-02-01 11:00:00   23.666667
2025-02-01 12:00:00   24.500000
2025-02-01 13:00:00   25.000000
```