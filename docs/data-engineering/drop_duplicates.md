# Entfernen von Duplikaten
In der Arbeit mit Sensordaten können durch fehlerhafte Erfassung oder doppelte Übertragung Duplikate entstehen. Die Methode `drop_duplicates` von pandas ermöglicht es, solche Duplikate effizient zu entfernen und so die Daten konsistenter zu gestalten.  

**Hauptparameter für Sensordaten:** 
 
- **subset**: Gibt die Spalten an, auf deren Basis Duplikate geprüft werden sollen, z. B. Zeitstempel oder Sensormessungen.  
- **keep**: Bestimmt, welches Duplikat beibehalten wird (`'first'`, `'last'` oder `False` für keines).  

## Beispiel 1: Duplikate basierend auf Zeitstempeln entfernen  
Doppelte Einträge in Sensordaten können vorkommen, z. B. wenn ein Sensor denselben Wert mehrfach sendet.  

```python
import pandas as pd

# Beispiel-Sensordaten mit Duplikaten
data = {
    'Zeitstempel': ['2025-02-01 12:00', '2025-02-01 12:10', '2025-02-01 12:10', '2025-02-01 12:20'],
    'Temperatur': [22.5, 23.0, 23.0, 24.5]
}
df = pd.DataFrame(data)
df['Zeitstempel'] = pd.to_datetime(df['Zeitstempel'])

print("Originale Sensordaten:")
print(df)

# Duplikate basierend auf dem Zeitstempel entfernen
df_cleaned = df.drop_duplicates(subset='Zeitstempel', keep='first')

print("\nNach Entfernen der Duplikate basierend auf dem Zeitstempel:")
print(df_cleaned)
```

**Ausgabe:**  
```txt
Originale Sensordaten:
          Zeitstempel  Temperatur
0 2025-02-01 12:00:00        22.5
1 2025-02-01 12:10:00        23.0
2 2025-02-01 12:10:00        23.0
3 2025-02-01 12:20:00        24.5

Nach Entfernen der Duplikate basierend auf dem Zeitstempel:
          Zeitstempel  Temperatur
0 2025-02-01 12:00:00        22.5
1 2025-02-01 12:10:00        23.0
3 2025-02-01 12:20:00        24.5
```

## Beispiel 2: Duplikate vollständig entfernen  
Wenn Sensoren fehlerhafte oder doppelte Einträge senden, können diese komplett entfernt werden, um eine genaue Analyse sicherzustellen.  

```python
# Alle doppelten Einträge entfernen (keine Einträge behalten)
df_cleaned = df.drop_duplicates(keep=False)

print("\nNach vollständigem Entfernen der Duplikate:")
print(df_cleaned)
```

**Ausgabe:**  
```txt
Nach vollständigem Entfernen der Duplikate:
          Zeitstempel  Temperatur
0 2025-02-01 12:00:00        22.5
3 2025-02-01 12:20:00        24.5
```