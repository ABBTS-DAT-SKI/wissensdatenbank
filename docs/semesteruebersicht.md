# Semesterübersicht

Diese Übersicht zeigt pro Unterrichtsblock die zentralen Themen, die Lernziele und die wichtigsten Materialien.

Wenn du zum ersten Mal startest, richte zuerst deine Umgebung über [Python Installation](python_installation.md) ein, lade danach die Dateien über [Material Downloads](material_downloads.md) herunter und öffne erst dann das erste Notebook.

## Unterrichtsblöcke im Überblick

| Unterrichtsblock | Datum | Schwerpunkt |
| --- | --- | --- |
| 1 | SW1 | Modulstart, Organisation, Anwendungsfälle |
| 2 | SW2 | Einführung in Pandas, Datentypen, Datenformate |
| 3 | SW2 | Spaltenmanipulation und Feature Engineering |
| 4 | SW3 | Duplikate, fehlende Werte, Ausreisser, Time-Indexes |
| 5 | SW4 | Imputation, Joins, Pivot/Melt |
| 6 | SW5 | Datenschutz, univariate Statistik, Resampling |
| 7 | SW6 | Visualisierungen, bivariate Statistik, Korrelation |
| 8 | SW7 | Machine Learning Grundlagen, lineare Regression |
| 9 | SW8 | Weitere Regressionsmodelle, Train-Test-Split, Modellevaluation |
| 10 | SW10 | Schriftliche Prüfung, Abgabe Mini-Challenge |
| 11 | SW12 | Besprechung schriftliche Prüfung, Mini-Challenge, ev. Crash-Kurs generative/agentische KI |

### Unterrichtsblock 1 - Modulstart

**Datum:** Semesterwoche 1 (SW1)

**Themen:** Modulaufbau, Prüfung, Mini-Challenge, Anwendungsfälle von Data Science

**Lernziele**

- Anwendungsfälle von Data Science nennen.
- Den Ablauf des Moduls, der Prüfung und der Mini-Challenge kennen.
- Den Vorbereitungsauftrag für die nächste Woche selbständig erarbeiten.

**Materialien**

- Einführung im Unterricht; für diesen Termin gibt es kein separates Blockpaket.

### Unterrichtsblock 2 - Einführung in Pandas

**Datum:** Semesterwoche 2 (SW2)

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

**Datum:** Semesterwoche 2 (SW2)

**Themen:** Spaltenauswahl, Aggregationen, `row-slicing`, `iloc`, Umbenennen, Feature Engineering

**Lernziele**

- Spalten aus einem DataFrame gezielt auswählen.
- Grundlegende statistische Methoden auf Spalten anwenden.
- Mit `row-slicing` und `iloc` Zeilen selektieren.
- Spalten umbenennen.
- Neue Features durch Berechnungen erstellen.
- Einheiten innerhalb einer Spalte umwandeln.

**Materialien**

- [Spaltenmanipulation](data-engineering/column_manipulations.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 4 - Daten bereinigen und mit Zeitstempeln arbeiten

**Datum:** Semesterwoche 3 (SW3)

**Themen:** Duplikate, fehlende Werte, Ausreisser, Time-Indexes, Zeitzonen, UTC

**Lernziele**

- Doppelte Einträge in einem DataFrame erkennen und bereinigen.
- Fehlende Werte identifizieren und behandeln.
- Fehlende Werte in Zeitreihen identifizieren.
- Zeitzonen und Zeitumstellung verstehen.
- Zeitstempel in UTC umwandeln.

**Materialien**

- [Entfernen von Duplikaten](data-engineering/drop_duplicates.md)
- [Befüllen von fehlenden Werten](data-engineering/fillna.md)
- [Entfernen von Ausreissern](data-engineering/outliers.md)
- [Arbeiten mit Time-Indexes in Pandas](data-engineering/time_indexes.md)
- [Material Downloads](material_downloads.md)

### Unterrichtsblock 5 - Imputationen, Joins und Pivot/Melt

**Datum:** Semesterwoche 4 (SW4)

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

**Datum:** Semesterwoche 5 (SW5)

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

**Datum:** Semesterwoche 6 (SW6)

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

**Datum:** Semesterwoche 7 (SW7)

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

### Unterrichtsblock 9 - Weitere Regressionsmodelle und Modellevaluation

**Datum:** Semesterwoche 8 (SW8)

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

### Unterrichtsblock 10 - Schriftliche Prüfung, Abgabe Mini-Challenge
**Datum:** Semesterwoche 10 (SW10)

**Materialien**
- [Mini-Challenge](mini_challenge.md)
- [Startseite](index.md)
### Unterrichtsblock 11 - Besprechung schriftliche Prüfung, Mini-Challenge, ev. Crash-Kurs generative/agentische KI
**Datum:** Semesterwoche 12 (SW12)
**Themen:** Besprechung schriftliche Prüfung, Mini-Challenge, ev. Crash-Kurs generative/agentische KI

In diesem Unterrichtsblock werden die schriftliche Prüfung und die Mini-Challenge besprochen. Je nach verfügbarer Zeit gibt es zusätzlich einen Crash-Kurs zu generativer und agentischer KI.

## Wichtige Termine

- Mini-Challenge: Abgabe bis Ende Semesterwoche 10 (SW10).
- Schriftliche Prüfung: 2. Juni 2025.
