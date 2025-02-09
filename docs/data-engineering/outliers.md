# Entfernen von Ausreissern mit dem z-Score  

In Sensordaten können Ausreisser auftreten, z. B. durch fehlerhafte Messungen oder ungewöhnliche Ereignisse. Ein häufiger Ansatz, um solche Werte zu erkennen und zu entfernen, ist die Berechnung des z-Scores.  

**Was ist der z-Score?**  
Der z-Score gibt an, wie viele Standardabweichungen ein Datenpunkt vom Mittelwert entfernt ist. Werte mit einem z-Score über einem bestimmten Schwellenwert (z. B. `3`) gelten oft als Ausreisser.  

**Hinweis zu Sensordaten:**  
Das Entfernen von Ausreissern kann die Datenqualität verbessern, indem Extremwerte, die möglicherweise Fehler sind, beseitigt werden. Allerdings besteht die Gefahr, dass auch gültige, aber seltene Ereignisse entfernt werden, was zu einem Informationsverlust führen könnte.  

## Beispiel: Entfernen von Ausreissern aus Temperaturdaten  

```python
import pandas as pd
import numpy as np

# Beispiel-Sensordaten mit Ausreissern
data = {
    'Zeitstempel': ['2025-02-01 12:00', '2025-02-01 12:10', '2025-02-01 12:20', 
                    '2025-02-01 12:30', '2025-02-01 12:40'],
    'Temperatur': [22.5, 23.0, 100.0, 24.5, 25.0]  # 100.0 ist ein offensichtlicher Ausreisser
}
df = pd.DataFrame(data)
df['Zeitstempel'] = pd.to_datetime(df['Zeitstempel'])

print("Originale Sensordaten:")
print(df)

# Berechnung des z-Scores
mean_temp = df['Temperatur'].mean()
std_temp = df['Temperatur'].std()
df['z_score'] = (df['Temperatur'] - mean_temp) / std_temp

# Entfernen von Werten mit z-Score grösser als 3 oder kleiner als -3
df_cleaned = df[np.abs(df['z_score']) <= 3].drop(columns='z_score')

print("\nNach Entfernen der Ausreisser basierend auf dem z-Score:")
print(df_cleaned)
```

**Ausgabe:**  
```txt
Originale Sensordaten:
           Zeitstempel  Temperatur
0 2025-02-01 12:00        22.5
1 2025-02-01 12:10        23.0
2 2025-02-01 12:20       100.0
3 2025-02-01 12:30        24.5
4 2025-02-01 12:40        25.0

Nach Entfernen der Ausreisser basierend auf dem z-Score:
           Zeitstempel  Temperatur
0 2025-02-01 12:00        22.5
1 2025-02-01 12:10        23.0
3 2025-02-01 12:30        24.5
4 2025-02-01 12:40        25.0
```

## Erklärung zur Folge des Entfernens von Ausreissern  
Durch das Entfernen von Ausreissern können Sensordaten konsistenter und für maschinelles Lernen oder Zeitreihenanalysen besser nutzbar gemacht werden. Allerdings könnten echte, aber seltene Ereignisse (z. B. ein extremer Temperaturanstieg) ebenfalls entfernt werden. Daher sollte der Schwellenwert für den z-Score mit Bedacht gewählt und der Kontext der Daten berücksichtigt werden.