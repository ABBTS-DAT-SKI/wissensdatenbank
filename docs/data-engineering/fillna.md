# Befüllen von fehlenden Werten

In der Arbeit mit Sensordaten treten oft Lücken in den Datensätzen auf, da Sensoren gelegentlich keine Messwerte liefern können. Diese fehlenden Werte (`NaN`) müssen häufig bereinigt werden, um eine korrekte Analyse und Modellierung zu ermöglichen. Die Methode `fillna` von pandas bietet eine effektive Möglichkeit, solche Lücken zu schliessen, indem fehlende Werte durch feste Werte, statistische Kennzahlen (z. B. Mittelwert) oder eine Füllstrategie wie Vorwärts- oder Rückwärtsfüllung ersetzt werden.

Für Sensordaten ist diese Methode besonders nützlich, um:
- Zeitreihen zu glätten und kontinuierliche Daten sicherzustellen.
- Fehlende Werte auf Basis historischer Daten sinnvoll zu ersetzen.
- Daten für maschinelles Lernen oder weitere Analysen vorzubereiten.

**Hauptparameter für Sensordaten:**
- **value**: Feste Werte, z. B. `0`, falls ein Sensorfehler oder ein erwartetes physikalisches Verhalten dies nahelegt.
- **method**: Vorwärtsfüllung (`method='ffill'`) oder Rückwärtsfüllung (`method='bfill'`), um Messlücken basierend auf benachbarten Werten zu schliessen.

## Beispiel 1: Vorwärtsfüllung bei kontinuierlichen Sensordaten  
Ein Anwendungsfall, bei dem Vorwärtsfüllung sinnvoll ist, ist die Messung von Temperatur- oder Feuchtigkeitswerten, bei denen der letzte gemessene Wert bis zur nächsten Messung gültig bleibt.

```python
import pandas as pd

# Beispiel für Sensordaten mit fehlenden Werten
data = {
    'Temperatur': [22.5, 23.0, None, 24.5, 25.0],
    'Feuchtigkeit': [55.0, None, 60.0, None, 65.0]
}
timestamps = ['2025-02-01 12:00', '2025-02-01 12:10', '2025-02-01 12:20', '2025-02-01 12:30', '2025-02-01 12:40']
df = pd.DataFrame(data, index=pd.to_datetime(timestamps))

print("Originale Sensordaten:")
print(df)

# Fehlende Werte durch Vorwärtsfüllung schliessen
df_filled = df.fillna(method='ffill')

print("\nNach Vorwärtsfüllung der fehlenden Werte:")
print(df_filled)
```

**Ausgabe:**
```txt
Originale Sensordaten:
                     Temperatur  Feuchtigkeit
2025-02-01 12:00        22.5         55.0
2025-02-01 12:10        23.0          NaN
2025-02-01 12:20         NaN         60.0
2025-02-01 12:30        24.5          NaN
2025-02-01 12:40        25.0         65.0

Nach Vorwärtsfüllung der fehlenden Werte:
                     Temperatur  Feuchtigkeit
2025-02-01 12:00        22.5         55.0
2025-02-01 12:10        23.0         55.0
2025-02-01 12:20        23.0         60.0
2025-02-01 12:30        24.5         60.0
2025-02-01 12:40        25.0         65.0
```

## Beispiel 2: Füllen mit `0` bei Solarpanel-Daten  
In manchen Fällen ist es sinnvoll, fehlende Werte mit `0` zu ersetzen, da sie ein erwartetes physikalisches Verhalten widerspiegeln. Zum Beispiel produziert ein Solarpanel in der Nacht keinen Strom, weshalb `NaN`-Werte durch `0` ersetzt werden können.

```python
import pandas as pd

# Beispiel für Sensordaten zur Stromproduktion von Solarpanels
data = {
    'Solarstrom (kW)': [None, 0.0, 5.0, 10.0, None, None, 0.0, None]
}
timestamps = [
    '2025-02-01 00:00', '2025-02-01 06:00', '2025-02-01 10:00', 
    '2025-02-01 12:00', '2025-02-01 16:00', '2025-02-01 18:00', 
    '2025-02-01 20:00', '2025-02-01 23:59'
]
df = pd.DataFrame(data, index=pd.to_datetime(timestamps))

print("Originale Sensordaten:")
print(df)

# Fehlende Werte durch 0 ersetzen, da nachts keine Stromproduktion stattfindet
df_filled = df.fillna(value=0)

print("\nNach Füllen der fehlenden Werte mit 0:")
print(df_filled)
```

**Ausgabe:**
```txt
Originale Sensordaten:
                     Solarstrom (kW)
2025-02-01 00:00                NaN
2025-02-01 06:00                0.0
2025-02-01 10:00                5.0
2025-02-01 12:00               10.0
2025-02-01 16:00                NaN
2025-02-01 18:00                NaN
2025-02-01 20:00                0.0
2025-02-01 23:59                NaN

Nach Füllen der fehlenden Werte mit 0:
                     Solarstrom (kW)
2025-02-01 00:00                0.0
2025-02-01 06:00                0.0
2025-02-01 10:00                5.0
2025-02-01 12:00               10.0
2025-02-01 16:00                0.0
2025-02-01 18:00                0.0
2025-02-01 20:00                0.0
2025-02-01 23:59                0.0
```

In diesem Beispiel wurden `NaN`-Werte durch `0` ersetzt, da nachts keine Stromproduktion stattfindet. Diese Vorgehensweise hilft, die Daten logisch korrekt und für Analysen konsistent zu halten.