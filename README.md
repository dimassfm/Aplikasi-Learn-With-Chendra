# chendra

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Security and Configuration

### API Keys and Sensitive Data

This project uses various API keys and sensitive configuration data. To maintain security:

1. **Never commit sensitive data to version control**
2. Copy `.env.example` to `.env` and fill in your actual API keys
3. The `.gitignore` file is configured to exclude sensitive files

### Protected Files

The following files contain sensitive data and are excluded from version control:
- `google-services.json` - Google Firebase configuration
- `GoogleService-Info.plist` - iOS Firebase configuration  
- `.env` files - Environment variables and API keys
- `keystore.properties` - Android signing keys
- `api_keys.dart` - Dart files containing API keys

### Setup Instructions

1. Get your Google API keys from [Google Cloud Console](https://console.cloud.google.com/)
2. Download your `google-services.json` from Firebase Console
3. Copy `.env.example` to `.env` and add your actual API keys
4. Configure your IDE to load environment variables from `.env`

**⚠️ Important**: Never share or commit files containing real API keys or credentials!
