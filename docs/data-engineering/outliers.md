# Entfernen von Ausreissern mit dem z-Score  

In Sensordaten können Ausreisser auftreten, z. B. durch fehlerhafte Messungen oder ungewöhnliche Ereignisse. Ein häufiger Ansatz, um solche Werte zu erkennen und zu entfernen, ist die Berechnung des z-Scores.  

## Was ist der z-Score?  

Der **z-Score** ist ein Wert, der dir hilft zu verstehen, wie weit ein bestimmter Wert vom **Durchschnitt** der anderen Werte entfernt ist. Um dies zu berechnen, verwenden wir die **Standardabweichung**, ein Maß dafür, wie stark die Werte normalerweise vom Durchschnitt abweichen.

Die Formel für den z-Score lautet:

\[
z = \frac{X - \mu}{\sigma}
\]

Dabei ist:

- **\(X\)**: Der Wert, den du untersuchen möchtest (z. B. eine gemessene Temperatur).
- **\(\mu\)**: Der **Durchschnitt** der Werte (also der Mittelwert, den du aus allen Messungen berechnest).
- **\(\sigma\)**: Die **Standardabweichung**, die angibt, wie stark sich die Werte **vom Durchschnitt** unterscheiden. Eine hohe Standardabweichung bedeutet, dass die Werte weit verstreut sind, eine niedrige bedeutet, dass sie dicht beieinander liegen.

## Was ist die Standardabweichung?  

Die **Standardabweichung** ist ein Maß dafür, wie weit die einzelnen Werte im Durchschnitt vom Mittelwert entfernt sind. Wenn alle Werte in etwa gleich dem Durchschnitt sind, ist die Standardabweichung klein. Wenn die Werte stark variieren, ist die Standardabweichung groß.

## Was bedeutet der z-Score?  

Der z-Score zeigt uns, wie weit ein Wert vom Durchschnitt entfernt ist, und gibt dabei auch eine Vorstellung davon, wie **normal** oder **ungewöhnlich** dieser Wert im Vergleich zu den anderen ist. Hier einige Beispiele:

- **z-Score = 0**: Der Wert liegt **genau im Durchschnitt**. Das bedeutet, dass der Wert keinen Abstand zum Mittelwert hat.
- **z-Score = +1**: Der Wert liegt **1 Standardabweichung über** dem Durchschnitt. Etwa **68%** der Werte in einer normal verteilten Menge liegen innerhalb von 1 Standardabweichung vom Durchschnitt.
- **z-Score = -2**: Der Wert liegt **2 Standardabweichungen unter** dem Durchschnitt. Ungefähr **95%** der Werte liegen innerhalb von 2 Standardabweichungen vom Durchschnitt.
- **z-Score = +3**: Der Wert liegt **3 Standardabweichungen über** dem Durchschnitt. Nur etwa **99.7%** der Werte einer normalen Verteilung liegen innerhalb von 3 Standardabweichungen vom Durchschnitt.

## Warum ist der z-Score nützlich?  

Der z-Score hilft uns zu erkennen, ob ein Wert **normal** oder **ungewöhnlich** ist. Ein hoher z-Score (z. B. > 3) oder ein sehr niedriger z-Score (z. B. < -3) deutet darauf hin, dass der Wert **weit vom Durchschnitt** entfernt liegt und daher als **Ausreißer** betrachtet werden könnte. Solche Werte kommen in einer normalen Verteilung nur selten vor.

## Ein einfaches Beispiel:  

Stell dir vor, du misst die Temperatur an verschiedenen Tagen und bekommst Werte wie:
- 20°C, 22°C, 21°C, 100°C, 23°C

Der Durchschnitt dieser Temperaturen liegt bei **22°C**. Wenn wir die **Standardabweichung** berechnen und den z-Score für die Temperatur von **100°C** berechnen, werden wir feststellen, dass dieser Wert **weit vom Durchschnitt** entfernt ist. Der z-Score für 100°C wird sehr hoch sein, was darauf hinweist, dass dieser Wert ein **Ausreißer** ist. In einer normalen Verteilung würden Werte wie 100°C nur in **weniger als 0,3%** der Fälle vorkommen (mehr als 3 Standardabweichungen vom Durchschnitt entfernt).

## Hinweis zu Sensordaten:  

Das Entfernen von Ausreissern kann die Datenqualität verbessern, indem Extremwerte, die möglicherweise Fehler sind, beseitigt werden. Allerdings besteht die Gefahr, dass auch gültige, aber seltene Ereignisse entfernt werden, was zu einem Informationsverlust führen könnte.  

## Beispiel: Entfernen von Ausreissern aus Temperaturdaten  

```python
import pandas as pd

# Beispiel-Sensordaten mit Ausreissern (noch mehr Werte)
data = {
    'Zeitstempel': ['2025-02-01 12:00', '2025-02-01 12:10', '2025-02-01 12:20', 
                    '2025-02-01 12:30', '2025-02-01 12:40', '2025-02-01 12:50', 
                    '2025-02-01 13:00', '2025-02-01 13:10', '2025-02-01 13:20', 
                    '2025-02-01 13:30', '2025-02-01 13:40', '2025-02-01 13:50', 
                    '2025-02-01 14:00', '2025-02-01 14:10', '2025-02-01 14:20'],
    'Temperatur': [22.5, 23.0, 100.0, 24.5, 25.0, 23.5, 24.0, 22.0, 24.5, 23.0, 
                   23.8, 24.2, 22.5, 23.1, 24.3]  # 100.0 bleibt der Ausreisser
}
df = pd.DataFrame(data)
df['Zeitstempel'] = pd.to_datetime(df['Zeitstempel'])

print("Originale Sensordaten:")
print(df)

# Berechnung des Mittelwerts und der Standardabweichung
mean_temp = df['Temperatur'].mean()
std_temp = df['Temperatur'].std()

# Berechnung des z-Scores
df['z_score'] = (df['Temperatur'] - mean_temp) / std_temp

# Entfernen von Werten mit z-Score größer als 3 oder kleiner als -3
df_cleaned = df[df['z_score'].abs() <= 3]

# Entfernen der Spalte 'z_score'
df_cleaned = df_cleaned.drop(columns=['z_score'])

print("\nNach Entfernen der Ausreißer:")
print(df_cleaned)
```

**Ausgabe:**  
```txt
Originale Sensordaten:
           Zeitstempel  Temperatur
0 2025-02-01 12:00        22.5
1 2025-02-01 12:10        23.0
2 2025-02-01 12:20      1000.0
3 2025-02-01 12:30        24.5
4 2025-02-01 12:40        25.0
                           ...

Nach Entfernen der Ausreisser basierend auf dem z-Score:
           Zeitstempel  Temperatur
0 2025-02-01 12:00        22.5
1 2025-02-01 12:10        23.0
3 2025-02-01 12:30        24.5
4 2025-02-01 12:40        25.0
                           ...
```

## Erklärung zur Folge des Entfernens von Ausreissern  

Durch das Entfernen von Ausreissern können Sensordaten konsistenter und für maschinelles Lernen oder Zeitreihenanalysen besser nutzbar gemacht werden. Allerdings könnten echte, aber seltene Ereignisse (z. B. ein extremer Temperaturanstieg) ebenfalls entfernt werden. Daher sollte der Schwellenwert für den z-Score mit Bedacht gewählt und der Kontext der Daten berücksichtigt werden.