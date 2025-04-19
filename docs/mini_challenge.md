# Mini-Challenge  
In dieser Mini-Challenge können Sie Ihr Wissen anwenden, um reale Sensordaten zu untersuchen und wichtige Zusammenhänge zwischen Variablen zu modellieren.

Ziel ist es, einen Datensatz auszuwählen, diesen gründlich zu bereinigen, die Datenanalyse durchzuführen und anschliessend mithilfe eines ML-Modells eine Vorhersage oder Beziehung zwischen zwei Variablen zu quantifizieren und zu visualisieren. Der Fokus liegt auf der praktischen Umsetzung des gelernten Stoffes und der kritischen Auseinandersetzung mit den Daten.

## Vorgehen  
Wählen Sie einen Sensordatensatz aus, der in mehreren Dateien vorliegt. Sie können Daten aus einem früheren Modul oder aus öffentlich zugänglichen Quellen wie Kaggle nutzen. Klären Sie Ihre Auswahl mit den Dozenten ab, um sicherzustellen, dass der Datensatz geeignet ist.

Hier einige Beispielsdatensätze:

- [Smart Building System](https://www.kaggle.com/datasets/ranakrc/smart-building-system)
- [CU-BEMS, smart building energy and IAQ data](https://www.kaggle.com/datasets/claytonmiller/cubems-smart-building-energy-and-iaq-data)
- [ASHRAE Global Occupant Behavior Database](https://ashraeobdatabase.com/)

Bereinigen Sie die Daten gründlich, indem Sie unvollständige, fehlerhafte oder inkonsistente Daten behandeln. Vor der Analyse müssen alle Dateien in eine einzige Datei zusammengeführt werden, um eine einheitliche und umfassende Datengrundlage zu erhalten.

Untersuchen Sie den Datensatz explorativ und beschreiben Sie auffällige Muster, Anomalien oder fehlende Werte. Erstellen Sie Visualisierungen, die Ihnen helfen, die Daten besser zu verstehen.

Identifizieren Sie zwei Variablen, deren Zusammenspiel Sie analysieren möchten, und wählen Sie ein geeignetes ML-Modell, um eine Korrelation zu beschreiben. Eine lineare Regression eignet sich beispielsweise gut, um Zusammenhänge zwischen zwei kontinuierlichen Variablen zu visualisieren. Fassen Sie die Ergebnisse zusammen und interpretieren Sie, was die Modellierung über die Beziehung der Variablen aussagt.

> [!WARNING]  
> Dies ist eine Einzelarbeit. Besprechen Sie jedoch die genauen Auftragsdetails mit den Dozenten, um sicherzustellen, dass Ihre Herangehensweise sinnvoll ist. Wählen Sie eine Fragestellung, die eine ausgewogene Balance zwischen Herausforderung und Machbarkeit bietet.

> [!TIP]  
> Die Nutzung von ChatGPT oder anderen KI-Tools ist erlaubt und für Wissensfragen sogar deutlich empfohlen. Jedoch sollte die Nutzung in einem Mass stattfinden, dass Sie verstehen, was gemacht wird und warum gewisse Entscheidungen getroffen werden. In der Abschlussprüfung können Fragen zur Mini-Challenge gestellt werden, die dies testen.

## Abgabe  
Die Ergebnisse dokumentieren Sie in einem Bericht, der maximal 8 Seiten umfasst. Der Bericht sollte eine klare Struktur haben und die folgenden Punkte abdecken:  

- Beschreibung des Datensatzes und der Zielsetzung  
- Vorgehen bei der Datenanalyse und -bereinigung  
- Beschreibung der Modellierung und Interpretation der Ergebnisse  

Die Abgabe des Berichts erfolgt als PDF bis spätestens 01.06.2025.

## Bewertungsraster

### 1. **Datenauswahl und Zieldefinition (10%)**

| Punktebereich   | Beschreibung                                                                                                                            |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **5–10 Punkte** | Der Datensatz ist gut gewählt und passt hervorragend zur Zielsetzung der Aufgabe. Das Ziel der Analyse ist klar formuliert.             |
| **3–4 Punkte**  | Der Datensatz ist grösstenteils geeignet, aber es gibt kleinere Unsicherheiten bei der Zieldefinition oder der Auswahl des Datensatzes. |
| **1–2 Punkte**  | Der Datensatz passt nicht gut zur Aufgabe oder das Ziel ist unklar formuliert.                                                          |
| **0 Punkte**    | Kein geeigneter Datensatz ausgewählt oder das Ziel ist nicht definiert.                                                                 |

### 2. **Datenbereinigung (30%)**

| Punktebereich    | Beschreibung                                                                                                                                                               |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **20–30 Punkte** | Die Daten wurden zusammengeführt und gründlich/systematisch bereinigt. Alle relevanten Probleme (fehlende Werte, Inkonsistenzen, Ausreisser) wurden angemessen adressiert. |
| **10–19 Punkte** | Die Datenbereinigung wurde grösstenteils durchgeführt, jedoch gibt es kleinere Mängel.                                                                                     |
| **5–9 Punkte**   | Die Datenbereinigung ist oberflächlich und viele Probleme wurden nicht adressiert.                                                                                         |
| **0 Punkte**     | Es wurde keine oder eine unzureichende Datenbereinigung durchgeführt.                                                                                                      |

### 3. **Datenanalyse und Visualisierung (20%)**

| Punktebereich    | Beschreibung                                                                                                                                                     |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **15–20 Punkte** | Die explorative Datenanalyse ist fundiert und umfassend. Alle wichtigen Aspekte des Datensatzes wurden untersucht und aussagekräftige Visualisierungen erstellt. |
| **10–14 Punkte** | Die Datenanalyse ist grösstenteils fundiert, aber einige Aspekte oder Muster wurden möglicherweise übersehen.                                                    |
| **5–9 Punkte**   | Die Analyse ist oberflächlich, und die Visualisierungen sind nicht sehr aussagekräftig.                                                                          |
| **0–4 Punkte**   | Es wurden keine aussagekräftigen Visualisierungen oder Analysen durchgeführt.                                                                                    |

### 4. **Modellierung und Interpretation (20%)**

| Punktebereich    | Beschreibung                                                                                                                                                            |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **15–20 Punkte** | Ein geeignetes Modell wurde ausgewählt, und die Ergebnisse sind klar interpretiert. Die Wahl des Modells ist gut begründet, und die Interpretation ist nachvollziehbar. |
| **10–14 Punkte** | Ein angemessenes Modell wurde verwendet, aber die Interpretation der Ergebnisse ist unklar oder nicht vollständig.                                                      |
| **5–9 Punkte**   | Das Modell ist unpassend oder es fehlt eine klare Begründung. Die Ergebnisse sind schwer zu interpretieren.                                                             |
| **0–4 Punkte**   | Es wurde kein Modell angewendet oder die Interpretation der Ergebnisse ist unverständlich.                                                                              |

### 5. **Bericht (20%)**

| Punktebereich    | Beschreibung                                                                                                                                                           |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **15–20 Punkte** | Der Bericht ist klar strukturiert, übersichtlich und gut dokumentiert. Alle Schritte der Analyse sind nachvollziehbar. Die Dokumentation ist verständlich und präzise. |
| **10–14 Punkte** | Der Bericht ist grösstenteils strukturiert, aber es fehlen teilweise Details oder er könnte klarer formuliert werden.                                                  |
| **5–9 Punkte**   | Der Bericht hat strukturelle Mängel und wichtige Aspekte sind unzureichend dokumentiert.                                                                               |
| **0–4 Punkte**   | Der Bericht ist unstrukturiert oder unvollständig. Wichtige Informationen fehlen.                                                                                      |