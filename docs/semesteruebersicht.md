# Semesterübersicht

Diese Übersicht zeigt pro Unterrichtsblock die zentralen Themen, die Lernziele und die wichtigsten Materialien.

Wenn du zum ersten Mal startest, richte zuerst deine Umgebung über [Python Installation](python_installation.md) ein, lade danach die Dateien über [Material Downloads](material_downloads.md) herunter und öffne erst dann das erste Notebook.

## Unterrichtsblöcke im Überblick

| Unterrichtsblock | Datum | Schwerpunkt |
| --- | --- | --- |
| 1 | 07.10.2026 | Modulstart, Organisation, Anwendungsfälle |
| 2 | 14.10.2026 | Einführung in Pandas, Datentypen, Datenformate |
| 3 | 21.10.2026 | Spaltenmanipulation und Feature Engineering |
| 4 | 28.10.2026 | Duplikate, fehlende Werte, Ausreisser, Time-Indexes |
| 5 | 04.11.2026 | Imputation, Joins, Pivot/Melt |
| 6 | 11.11.2026 | Datenschutz, univariate Statistik, Resampling |
| 7 | 18.11.2026 | Visualisierungen, bivariate Statistik, Korrelation |
| 8 | 25.11.2026 | Machine Learning Grundlagen, lineare Regression |
| – | 02.12.2026 | Schriftliche Prüfung, Abgabe Mini-Challenge |
| 9 | 09.12.2026 | Weitere Regressionsmodelle, Train-Test-Split, Modellevaluation |

Der Unterricht findet jeweils am Mittwoch von 13:00 bis 15:20 statt.

### Unterrichtsblock 1 - Modulstart

**Datum:** Mittwoch, 07.10.2026

**Themen:** Modulaufbau, Prüfung, Mini-Challenge, Anwendungsfälle von Data Science

**Lernziele**

- Anwendungsfälle von Data Science nennen.
- Den Ablauf des Moduls, der Prüfung und der Mini-Challenge kennen.
- Den Vorbereitungsauftrag für die nächste Woche selbständig erarbeiten.

**Materialien**

- Einführung im Unterricht; für diesen Termin gibt es kein separates Blockpaket.

### Unterrichtsblock 2 - Einführung in Pandas

**Datum:** Mittwoch, 14.10.2026

**Themen:** DataFrames, Datentypen, Datenformate, erste Datenanalyse mit Pandas

**Lernziele**

- Mit eigenen Worten erklären, was ein DataFrame ist.
- Daten in Pandas als DataFrame einlesen.
- Die Pandas-Dokumentation navigieren und nutzen.
- Datentypen von Spalten bestimmen und verändern.
- Verschiedene Datenformate in Pandas einlesen.

**Materialien**

- [Python Installation](python_installation.md)
- [Einführung in Pandas](data-engineering/introduction.md)
- [Überblick über Datentypen](data-engineering/data_types.md)
- [Datenformate](data-engineering/data_formats.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 3 - Spalten in Pandas manipulieren

**Datum:** Mittwoch, 21.10.2026

**Themen:** Spaltenauswahl, Aggregationen, `row-slicing`, Umbenennen, Feature Engineering

**Lernziele**

- Spalten aus einem DataFrame gezielt auswählen.
- Grundlegende statistische Methoden auf Spalten anwenden.
- Mit `row-slicing` Zeilen selektieren.
- Spalten umbenennen.
- Neue Features durch Berechnungen erstellen.
- Einheiten innerhalb einer Spalte umwandeln.

**Materialien**

- [Spaltenmanipulation](data-engineering/column_manipulations.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 4 - Daten bereinigen und mit Zeitstempeln arbeiten

**Datum:** Mittwoch, 28.10.2026

**Themen:** Duplikate, fehlende Werte, Time-Indexes, Zeitzonen, UTC

**Lernziele**

- Doppelte Einträge in einem DataFrame erkennen und bereinigen.
- Fehlende Werte identifizieren und behandeln.
- Zeitzonen und Zeitumstellung verstehen.
- Zeitstempel in UTC umwandeln.

**Materialien**

- [Entfernen von Duplikaten](data-engineering/drop_duplicates.md)
- [Befüllen von fehlenden Werten](data-engineering/fillna.md)
- [Arbeiten mit Time-Indexes in Pandas](data-engineering/time_indexes.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 5 - Imputationen, Joins und Pivot/Melt

**Datum:** Mittwoch, 04.11.2026

**Themen:** Imputation, lineare Interpolation, horizontale Joins, Daten umformen

**Lernziele**

- Fehlende Werte imputieren.
- Lineare Interpolation anwenden.
- Zwei Datensätze über die Zeitachse zusammenfügen.
- Einen breiten Datensatz in einen langen Datensatz konvertieren und umgekehrt.

**Materialien**

- [Imputation in Pandas](data-engineering/imputation.md)
- [Joins in Pandas](data-engineering/joins.md)
- [Pivot und Melt in Pandas](data-engineering/pivot_melt.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 6 - Datenschutz, univariate Statistik und Resampling

**Datum:** Mittwoch, 11.11.2026

**Themen:** Datenschutz, DSGVO, explorative Datenanalyse, deskriptive Statistik, Upsampling, Downsampling

**Lernziele**

- Den Sinn von Datenschutz erklären.
- Zentrale Grundlagen der DSGVO einordnen.
- Explorative Datenanalysen mit deskriptiven Statistiken durchführen.
- Zeitreihen mit Upsampling und Downsampling resamplen.

**Materialien**

- [Datenschutz und DSGVO](data-protection/data_protection.md)
- [Univariate Statistiken](statistics/univariate_statistics.md)
- [Resampling von Zeitreihen](data-engineering/resampling.md)
- [Entfernen von Ausreissern](data-engineering/outliers.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 7 - Visualisierungen und bivariate Statistik

**Datum:** Mittwoch, 18.11.2026

**Themen:** Zeitreihenplots, Histogramme, Barplots, Scatterplots, Korrelation

**Lernziele**

- Zeitreihen in einem Linienplot visualisieren.
- Verteilungen mithilfe eines Histogramms visualisieren.
- Zwei Variablen in einem Barplot und einem Scatterplot visualisieren.
- Den Zusammenhang zwischen zwei Variablen quantifizieren.
- Korrelationskoeffizienten interpretieren.

**Materialien**

- [Visualisierungen](statistics/visualization.md)
- [Korrelation](statistics/correlation.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 8 - Einführung in Machine Learning

**Datum:** Mittwoch, 25.11.2026

**Themen:** Begriffe des Machine Learning, Modelle, Regression, lineare Regression, Residuen

**Lernziele**

- Beschreiben, was Machine Learning ist.
- Beschreiben, was ein Modell ist.
- Beschreiben, was eine Regression ist.
- Eine lineare Regression beschreiben.
- Eine lineare Regression durchführen.
- Eine lineare Regression analysieren.
- Eine lineare Regression bewerten.

**Materialien**

- [Grundlagen des Machine Learning](machine-learning/basics.md)
- [Lineare Regression](machine-learning/linear_regression.md)
- [Residuenanalyse](machine-learning/residual_analysis.md)
- [Material Downloads](material_downloads.md)

### Schriftliche Prüfung

**Datum:** Mittwoch, 02.12.2026

**Materialien**

- [Mini-Challenge](mini_challenge.md)
- [Offizieller Spick](downloads/DAT-SKI_Spick.pdf)
- [Prüfung FS2026](downloads/DAT-SKI_Pruefung_FS2026.pdf) als Referenz (ohne Lösungen)

Die Prüfung FS2026 zeigt dir Aufgabentypen und Format. Es gibt keine Garantie, dass deine Prüfung gleich aufgebaut, gleich schwierig oder zu denselben Themen ist. Geprüft wird der ganze Stoff aus dem Unterricht.

### Unterrichtsblock 9 - Weitere Regressionsmodelle und Modellevaluation

**Datum:** Mittwoch, 09.12.2026

**Themen:** Ausreisser, k-Nearest-Neighbors, Decision Trees, Underfitting, Overfitting, Train-Test-Split

**Lernziele**

- Die Auswirkungen von Ausreissern beschreiben.
- Einen k-Nearest-Neighbors-Regressor beschreiben und nutzen.
- Einen Decision-Tree-Regressor beschreiben und nutzen.
- Underfitting und Overfitting beschreiben.
- Den Sinn hinter einem Train-Test-Split beschreiben.

**Materialien**

- [Grundlagen des Machine Learning](machine-learning/basics.md)
- [Lineare Regression](machine-learning/linear_regression.md)
- [Weitere Regressionen](machine-learning/other_regression_models.md)
- [Modellevaluation](machine-learning/model_evaluation.md)
- [Material Downloads](material_downloads.md)

## Wichtige Termine

- Mini-Challenge: Abgabe in der Woche der schriftlichen Prüfung.
- Schriftliche Prüfung: Mittwoch, 2. Dezember 2026.
- Erlaubtes Hilfsmittel an der Prüfung: ein Spick, maximal ein A4-Blatt beidseitig. Den [offiziellen Spick](downloads/DAT-SKI_Spick.pdf) kannst du direkt ausdrucken oder als Vorlage für einen eigenen verwenden.
- Zur Vorbereitung: [Prüfung FS2026](downloads/DAT-SKI_Pruefung_FS2026.pdf) als Referenz. Deine Prüfung kann anders aufgebaut und anders schwierig sein.
