# NAFAPRO — Flutter Android

Application de gestion commerciale pour petites entreprises.

## Prérequis
- Flutter stable (3.x récent)
- Android SDK / Android Build Tools
- Java 17

## Lancer en local
```bash
flutter pub get
flutter run
```

## Configuration Supabase
Créer les secrets GitHub `SUPABASE_URL` et `SUPABASE_ANON_KEY`.
En local :
```bash
flutter run \
  --dart-define=SUPABASE_URL=https://YOUR_PROJECT.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=YOUR_ANON_KEY
```

Ne jamais placer une clé `service_role` dans l'application mobile.

## Build APK via GitHub Actions
1. Créer un dépôt GitHub et pousser ce projet sur la branche `main`.
2. Dans Settings > Secrets and variables > Actions, ajouter les deux secrets Supabase.
3. Ouvrir l'onglet Actions.
4. Lancer `Build NAFAPRO Android APK` avec Run workflow, ou pousser un commit.
5. Ouvrir l'exécution réussie et télécharger `nafapro-android-release` dans Artifacts.

## État du projet
Cette première livraison est le socle Flutter compilable : navigation, tableau de bord visuel,
écrans clients/stocks/compte, configuration Supabase et pipeline APK. Les écrans de gestion
et la monétisation ne sont pas encore connectés à un backend réel. Ils seront implémentés et
testés dans les phases suivantes.
