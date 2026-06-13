# 🥗 NutriAI - Smart Family Meal Planner & AI Health Assistant

NutriAI is a premium, client-side web application designed to help Pakistani families plan their daily meals, track health parameters, log calorie budgets, and consult a smart Urdu-English (Hinglish) bilingual AI chatbot tailored to specific chronic conditions (e.g., Diabetes, Hypertension, Weight Management).

---

## ✨ Key Features

1. **📋 Dynamic Weekly Meal Planner:**
   - Database of **104+ unique recipes** covering Pakistani cuisine (Biryani, Nihari, Karahi, Daal, Parathas) and healthy alternatives.
   - Smart shuffle algorithm with a variety safeguard of **at least 7 unique meals** to ensure zero duplicate meals in a 7-day plan.
   - Detailed nutritional info: macros (Carbs, Protein, Fats), calorie budgets, prep time, step-by-step instructions, and ingredients.

2. **💬 Urdu-English Bilingual AI Assistant (Chat):**
   - Interacts in friendly, warm **Hinglish** (Urdu + English mix).
   - Tailored to active profiles (taking medical condition, age, weight targets, and glucose levels into account).
   - **Dual-Mode Execution:** Uses smart OpenRouter AI model routing or falls back to a comprehensive local database when offline/unconfigured.

3. **👥 Family Profiles Manager:**
   - Track parameters for multiple family members.
   - Easily add new profiles with weight goals (Fat loss/Muscle gain), and delete them securely with immediate storage cleanup.

4. **📊 Analytics & Health Reports:**
   - Visual dashboard for glucose monitors, sodium limits, water logging, and calorie budgeting.

---

## 🚀 How to Run the Project

You can run this project in two ways:

### Method 1: Using a Local Server (Recommended)
Running through a local server is recommended to avoid browser CORS blocks when loading configuration files and sending AI chat requests.

#### Option A: Node.js (npx)
If you have Node.js installed, open terminal/command prompt in the project folder and run:
```bash
npx serve
```
Then open [http://localhost:3000](http://localhost:3000) in your browser.

#### Option B: VS Code Live Server
1. Open the project folder in **Visual Studio Code**.
2. Click **Go Live** at the bottom-right corner (requires the *Live Server* extension).

#### Option C: Python
If you have Python installed, open terminal/command prompt in the project folder and run:
```bash
python -m http.server 8000
```
Then open [http://localhost:8000](http://localhost:8000) in your browser.

---

### Method 2: Open Directly in Browser (File Protocol)
You can simply double-click the `index.html` file in your file explorer to launch the application instantly. 
> ⚠️ **Note:** When using this method, the browser may block reading local configurations. In this case, configure your API Key using the **Settings** modal inside the application.

---

## 🔑 How to Setup AI Chatbot (OpenRouter Key)

To use the smart AI Chatbot instead of the local database fallback, you need a free OpenRouter API key:

### Method A: Using Settings Modal (Easiest)
1. Launch the app in your browser.
2. Click on **⚙️ Settings** in the sidebar.
3. Paste your OpenRouter API Key (e.g., `sk-or-v1-...`) and click **Save Settings**.

### Method B: Using `.env` file (For local development)
1. Copy the `.env.example` file and rename it to `.env`.
2. Open `.env` and paste your key:
   ```env
   OPENROUTER_API_KEY=your_actual_key_here
   ```
3. Restart your local server.

---

## 🛠️ Technology Stack
- **Frontend:** HTML5, CSS3 (Vanilla Custom Themes, Glassmorphism, Micro-animations)
- **Logic:** Vanilla ES6+ JavaScript
- **State & Storage:** Web LocalStorage API
- **AI Engine:** OpenRouter API Integration (`openrouter/free` model routing)
