# Univariate Statistiken
Die Funktion `df.describe()` in Pandas berechnet automatisch eine Reihe von statistischen Kennzahlen für numerische Spalten in einem DataFrame. Diese Kennzahlen geben Ihnen einen ersten Überblick über die Verteilung Ihrer Daten.

## Welche Kennzahlen liefert `describe()`?
Standardmässig berechnet `describe()` acht statistische Masse für jede numerische Spalte:

1. **count**: Anzahl der nicht-null Werte
2. **mean**: Arithmetisches Mittel (Durchschnitt)
3. **std**: Standardabweichung (Streuungsmass)
4. **min**: Minimaler Wert
5. **25%**: 1. Quartil (25. Perzentil)
6. **50%**: Median (2. Quartil, 50. Perzentil)
7. **75%**: 3. Quartil (75. Perzentil)
8. **max**: Maximaler Wert

### Count (Anzahl)
Die Anzahl der gültigen (nicht-null) Werte in der Spalte. Wichtig zur Erkennung fehlender Daten und zur Einschätzung der Datenbasis.

### Mean (Mittelwert)
Das arithmetische Mittel - die Summe aller Werte geteilt durch ihre Anzahl. Sehr empfindlich gegenüber extremen Werten (Ausreissern). Bei stark asymmetrischen Verteilungen kann der Mittelwert irreführend sein.

### Min und Max
Die kleinsten und grössten Werte in den Daten. Zusammen definieren sie die Spannweite (Range). Sehr empfindlich für Ausreisser und Dateneingabefehler.

### Quartile und Median
Die Quartile teilen die Daten in vier gleich grosse Teile, nachdem sie der Grösse nach sortiert wurden:

- **25% (1. Quartil/Q1)**: Ein Viertel der Daten hat Werte kleiner oder gleich diesem Wert
- **50% (2. Quartil/Q2 = Median)**: Die Hälfte der Daten liegt unter diesem Wert, die andere Hälfte darüber
- **75% (3. Quartil/Q3)**: Drei Viertel der Daten haben Werte kleiner oder gleich diesem Wert

### Die Normalverteilung und die Standardabweichung

Die Normalverteilung ist eine glockenförmige Kurve, in der sich die meisten Werte in der Mitte (dem Durchschnitt) sammeln und die Häufigkeit nach aussen hin abnimmt. Die Kurve ist symmetrisch - links und rechts vom Durchschnitt ist das Muster gleich.

![Normalverteilung](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Standard_deviation_diagram.svg/2880px-Standard_deviation_diagram.svg.png)

Die Standardabweichung bestimmt dabei die "Breite" dieser Glocke. Sie gibt an, wie stark die Werte um den Durchschnitt streuen:

- Eine **kleine Standardabweichung** erzeugt eine schmale, hohe Glocke: Die Werte liegen eng beieinander
- Eine **grosse Standardabweichung** erzeugt eine breite, flache Glocke: Die Werte sind weit verstreut

**Die wichtigste Eigenschaft dieser Kombination:**
In einer Normalverteilung liegen:

- 68% aller Werte innerhalb von 1 Standardabweichung um den Mittelwert
- 95% innerhalb von 2 Standardabweichungen
- 99,7% innerhalb von 3 Standardabweichungen