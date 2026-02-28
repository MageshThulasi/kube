# kube
All things Kubernetes!

# CKA Practice CLI
A simple CLI wrapper script to manage CKA practice labs.

The `cka` script allows you to run setup, validation, solution scripts, or display questions for a specific lab.

---

## 📁 Project Structure

```
cka
cka-practice/
  ├── 1/
  │    ├── setup.sh
  │    ├── validate.sh
  │    ├── question.sh
  │    └── solution.sh
  ├── 2/
  │    └── ...
```

Each lab directory must contain the relevant scripts.

---

## ⚙️ Make the Script Executable

Before using the CLI:

```bash
chmod +x cka
```

---

## 🚀 Usage

```bash
./cka <action> <lab-number>
```

If installed globally:

```bash
cka <action> <lab-number>
```

---

## 📌 Available Actions

### 🔹 Setup a Lab

Runs the lab setup script.

```bash
cka setup 1
```

Invokes:

```
./cka-practice/1/setup.sh
```

---

### 🔹 Validate a Lab

Runs the validation script.

```bash
cka validate 1
```

Invokes:

```
./cka-practice/1/validate.sh
```

---

### 🔹 View a Question

Displays the lab question.

```bash
cka question 1
```

Displays contents of:

```
./cka-practice/1/question.sh
```

---

### 🔹 View Solution

Runs the solution script.

```bash
cka solution 1
```

Invokes:

```
./cka-practice/1/solution.sh
```

---

## ❌ Invalid Usage

If incorrect parameters are provided, the script will display:

```
Usage:
  cka setup <lab-number>
  cka validate <lab-number>
  cka question <lab-number>
  cka solution <lab-number>
```

---

## 🛠 Optional: Install Globally

To run `cka` from anywhere:

```bash
sudo mv cka /usr/local/bin/
```

Then use:

```bash
cka setup 1
```

---

## ✅ Example Workflow

```bash
cka setup 1
cka question 1
# solve the lab
cka validate 1
cka solution 1
```

---

If you'd like, I can also generate a more polished README with badges and formatting suitable for publishing on GitHub.

