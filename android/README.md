# Configuration Android

Le workflow GitHub Actions génère le projet Android avec `flutter create --platforms=android`
si le dossier natif n'existe pas, puis compile l'APK.

Permissions prévues à ajouter uniquement au besoin :
- INTERNET : appels Supabase, paiement et publicité.
- POST_NOTIFICATIONS : uniquement si les notifications locales/push sont activées.
- CAMERA / READ_MEDIA_IMAGES : uniquement si l'utilisateur choisit de scanner ou importer des images.

Ne pas demander des permissions Android sans fonctionnalité qui les justifie.
