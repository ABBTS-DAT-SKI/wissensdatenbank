# Datensatzbeispiele für die Mini-Challenge

Diese Seite ergänzt den Auftrag in `mini_challenge.md` und enthält die ausführlicheren Hinweise zur Datenauswahl. Nutze sie als Orientierung für geeignete Datensatztypen, typische Fragestellungen und den Schnellcheck vor dem Check-in.

## Woran du einen geeigneten Datensatz erkennst

- Es handelt sich um reale Sensor- oder Gebäudeleitsystemdaten.
- Der Datensatz besteht aus mindestens zwei zusammengehörigen Rohdateien oder Teildateien, die du selbst zu einem gemeinsamen DataFrame zusammenführst.
- Der Datensatz hat einen klaren Zeitreihencharakter und enthält mindestens eine Zeitvariable wie einen `timestamp`, ein Datum oder eine Uhrzeit.
- Nach dem Zusammenführen enthält der Datensatz genügend Beobachtungen für Bereinigung, Visualisierung und Modellierung sowie mehrere sinnvolle Variablen.
- Mindestens eine Variable ist eine kontinuierliche Messvariable, zum Beispiel Temperatur, Feuchtigkeit, CO2 oder Leistung.
- Aus dem Datensatz lässt sich eine klare Fragestellung und ein nachvollziehbares Analyseziel ableiten.

## Typischerweise geeignete Datensätze

| Datensatztyp | Typische Dateien | Mögliche Fragestellungen |
| --- | --- | --- |
| Raum-Sensordaten | `co2.csv`, `temperature.csv`, `humidity.csv`, `light.csv`, `pir.csv` | Wie hängen CO2 und Präsenz zusammen? Wie verändert sich der Raumkomfort im Tagesverlauf? |
| Gebäudedaten über zwei Jahre | `2018Floor2.csv`, `2019Floor2.csv` | Wie hängt Temperatur mit AC-Leistung oder Energieverbrauch zusammen? Welche Unterschiede gibt es zwischen den Jahren? |
| Mehrere Stockwerke eines Gebäudes | `2018Floor1.csv` bis `2018Floor7.csv` | Welche Stockwerke haben ähnliche Lastprofile? Wann treten Peak-Loads auf? |
| Zwei Räume im Vergleich | z.B. `RoomA/humidity.csv` und `RoomB/humidity.csv` oder mehrere Sensor-Dateien pro Raum | Unterscheiden sich zwei Räume in Luftqualität, Feuchtigkeit oder Nutzungsmustern? |

## Gute Merkmale bei der Datenauswahl

- Es gibt mindestens zwei zusammengehörige Rohdateien.
- Die Dateien haben einen gemeinsamen Zeitbezug und lassen sich sauber zusammenführen.
- Nach dem Merge bleiben mehrere sinnvolle Variablen übrig.
- Mindestens eine Variable ist kontinuierlich, zum Beispiel Temperatur, CO2, Feuchtigkeit oder Leistung.
- Aus den Daten lässt sich eine konkrete und realistische Frage formulieren.

## Mögliche öffentliche Quellen

- [Smart Building System](https://www.kaggle.com/datasets/ranakrc/smart-building-system)
- [CU-BEMS, smart building energy and IAQ data](https://www.kaggle.com/datasets/claytonmiller/cubems-smart-building-energy-and-iaq-data)
- [ASHRAE Global Occupant Behavior Database](https://ashraeobdatabase.com/)

## Nicht geeignet ohne Rücksprache

- eine einzelne bereits fertig zusammengeführte CSV-Datei
- reine Verwaltungs-, Umfrage- oder Statistikdaten ohne Sensorbezug
- Datensätze ohne Zeitvariable
- Datensätze mit nur einer sinnvollen Messvariable
- Datensätze, aus denen sich keine klare Modellierungsfrage ableiten lässt

## Schnellcheck vor dem Check-in

Wenn du alle Fragen mit `Ja` beantworten kannst, ist dein Datensatz meistens geeignet:

- Sind es echte Sensor- oder Gebäudeleitsystemdaten?
- Habe ich mindestens zwei zusammengehörige Dateien?
- Führe ich die Dateien selbst zu einem gemeinsamen DataFrame zusammen?
- Gibt es eine Zeitvariable?
- Gibt es genügend Daten und mehrere sinnvolle Variablen?
- Gibt es mindestens eine kontinuierliche Messvariable?
- Kann ich daraus eine klare Fragestellung für Analyse und Modellierung ableiten?
