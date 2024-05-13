# Grammavale

Ce dépôt content une réimplémentation partielle des règles de [Grammalecte](https://grammalecte.net)
pour [Vale-compatible](https://github.com/errata-ai/vale), ainsi que d'autres règles de grammaire/conjugaison/…

## Régles implémentées

- Orthographie coherente de mots à orthographes multiples (clé/clef)
- Erreurs courantes (cauchemard -> cauchemar)
- Pléonasmes ("applaudir des deux mains")
- Erreurs de ponctuation ("oh!" -> "oh !")
- Traits d'union ("ci devant" -> "ci-devant)

## Comment s'en servir ?

Il suffit d'ajouter ce *package* a votre ficher de configuration vale, comme
indiqué ci-dessous, puis de lancer `vale sync`.

```ini
StylesPath = styles
MinAlertLevel = suggestion

Packages = Valefr

[*]
BasedOnStyles = Vale, Valefr
```
