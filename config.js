/**
 * NutriAI - App Configuration
 * ============================
 * STEP 1: Get your FREE Gemini API key:
 *   → Go to: https://aistudio.google.com/app/apikey
 *   → Sign in with Google account
 *   → Click "Create API Key"
 *   → Copy and paste below
 *
 * STEP 2: Replace 'your_gemini_api_key_here' with your actual key
 */
const NUTRI_CONFIG = {
  // ← PASTE YOUR OPENROUTER API KEY HERE ↓
  OPENROUTER_API_KEY: 'your_openrouter_api_key_here',

  // AI Model via OpenRouter (e.g. openrouter/free, google/gemini-2.5-pro)
  MODEL_NAME: 'openrouter/free',
  AI_TEMPERATURE: 0.8,
  AI_MAX_TOKENS: 800,

  // App Settings
  APP_NAME: 'NutriAI',
  APP_VERSION: '1.0.0',
  RAMADAN_MODE: true,
  DEFAULT_LANGUAGE: 'en-ur', // English + Urdu mix

  // Default User Profile (used in AI system prompt)
  USER_PROFILE: {
    name: 'Ahmed Khan',
    age: 62,
    condition: 'Diabetes Control (Type 2)',
    weight: 78.4,
    targetWeight: 75.0,
    glucose: '124 mg/dL',
    sodium: '1.2g / 2.3g',
    water: '1.8L / 3L',
    location: 'Pakistan',
  },
};
