# Lineare Regression

## Was ist Lineare Regression?

Die **lineare Regression** ist eine Methode, um den Zusammenhang zwischen einer abhängigen Variablen $y$ und einer unabhängigen Variablen $x$ zu modellieren. Das Ziel der linearen Regression ist es, eine **gerade Linie** zu finden, die die Datenpunkte bestmöglich beschreibt.

Die grundlegende Gleichung für eine Gerade in der linearen Regression lautet:

$$
y = mx + b
$$

* **$y$** ist die abhängige Variable (das, was wir vorhersagen wollen).
* **$x$** ist die unabhängige Variable (das Feature oder der Input).
* **$m$** ist die **Steigung** der Linie (wie stark $y$ sich verändert, wenn $x$ sich ändert).
* **$b$** ist der **y-Achsenabschnitt** (der Wert von $y$, wenn $x = 0$).

## Wie funktioniert Lineare Regression?

In der linearen Regression geht es darum, die Werte für $m$ (Steigung) und $b$ (y-Achsenabschnitt) so zu finden, dass die Gerade die Datenpunkte möglichst gut beschreibt. Dies geschieht durch die Optimierung des MSE (Mean Squared Error), bei dem der Fehler zwischen den tatsächlichen und den vorhergesagten Werten minimiert wird.

### Vorhersage mit der Linearen Regression

Nachdem die Parameter $m$ und $b$ durch das Training des Modells bestimmt wurden, können wir mit der Gleichung $y = mx + b$ Vorhersagen für neue Werte von $x$ treffen.

### Beispiel für Lineare Regression

Stellen wir uns vor, wir möchten den **Preis eines Hauses** basierend auf der **Wohnfläche** vorhersagen. Angenommen, wir haben die folgenden Daten:

| Wohnfläche (m²) | Preis (€) |
| --------------- | --------- |
| 50              | 150,000   |
| 75              | 200,000   |
| 100             | 250,000   |
| 125             | 300,000   |

Die lineare Regression würde eine Gerade $y = mx + b$ berechnen, bei der:

* $y$ der **Preis** des Hauses ist.
* $x$ die **Wohnfläche** des Hauses ist.
* $m$ die **Steigung** der Linie beschreibt (wie der Preis mit der Fläche wächst).
* $b$ der **y-Achsenabschnitt** ist (der Preis, wenn die Fläche 0 ist, was in der Praxis wenig Bedeutung hat, aber ein mathematischer Wert ist).

## Implementierung der Linearen Regression
Um eine lineare Regression in Python durchzuführen, können wir die Bibliothek `scikit-learn` verwenden. Hier ist ein einfaches Beispiel:

```python
from sklearn.linear_model import LinearRegression

model = LinearRegression()
X = data[['x']] # Bei mehreren Features: X = data[['x1', 'x2', ...]]
y = data['y']
model.fit(X, y) 
```

### Vorhersage mit dem trainierten Modell

In diesem Beispiel wird ein `LinearRegression`-Modell erstellt und mit den Daten `X` (unabhängige Variable) und `y` (abhängige Variable) trainiert. Nach dem Training können wir Vorhersagen treffen, indem wir die Methode `predict()` verwenden:

```python
predictions = model.predict(X) # Vorhersagen für die Trainingsdaten
```

Um eine Vorhersage für einen neuen Wert zu treffen, können wir die Methode `predict()` mit dem neuen Wert aufrufen:

```python
# Vorhersage für eine Fläche von 150 m²
print(model.predict([[150]]))
```

Oder für mehrere Werte:

```python
# Vorhersage für mehrere Flächen
print(model.predict([[150], [200], [250]]))
```

### Achsenabschnitt und Steigung

Den Achsenabschnitt und die Steigung können wir mit den Attributen `intercept_` und `coef_` des Modells abrufen:

```python
intercept = model.intercept_ # y-Achsenabschnitt
slope = model.coef_ # Steigung
print(f"y-Achsenabschnitt: {intercept}, Steigung: {slope}")
```

Die mathematische Gleichung der linearen Regression lautet dann:
$$
y = \text{slope} \cdot x + \text{intercept}
$$

### Visualisierung der Ergebnisse

Um die Ergebnisse der linearen Regression zu visualisieren, können wir die Bibliothek `matplotlib` verwenden. Hier ist ein einfaches Beispiel:

```python
import matplotlib.pyplot as plt

# Scatterplot der Datenpunkte
plt.scatter(data['x'], data['y'], color='blue')

# Vorhersage der y-Werte für die x-Werte (Unser Modell)
plt.plot(data['x'], model.predict(X), color='red') 

plt.show()
```