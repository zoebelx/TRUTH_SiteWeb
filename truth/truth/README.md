# TRUTH — site du projet

Site statique (HTML/CSS/JS, sans dépendance) reconstruit à partir de https://jdegraeve001.wixsite.com/truth.

## Images
Les images viennent du site Wix d'origine. Pour les avoir en local (et ne plus dépendre de Wix) :

```bash
./download-assets.sh
```

Si une image locale manque, la page tente automatiquement le CDN Wix.

## Mise en ligne sur GitHub Pages
1. Créer un dépôt GitHub (ex. `truth`) et y pousser ces fichiers.
2. Settings → Pages → Source : *Deploy from a branch* → branche `main`, dossier `/ (root)`.
3. Le site sera disponible sur `https://<utilisateur>.github.io/truth/`.
