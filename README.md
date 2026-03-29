# 🔫 landi_gun

**Super Realistic Gun System (Clean Version) for FiveM**

---

## 📌 Description

`landi_gun` is a lightweight FiveM script that enhances weapon realism while keeping full control smooth and responsive.

This version is **clean, optimized, and bug-free**, with no aggressive camera movement or gameplay issues.

---

## ✨ Features

* 🎯 Realistic recoil (does not break your aim)
* 🏃 Low-ready system (weapon lowers while running)
* 🎮 Full camera control (no camera lock)
* 🚗 Automatic first-person aim in vehicles
* 🔍 Smooth and light aim zoom
* 🎥 Subtle camera shake for realism
* ❌ No glitches / no bugs

---

## 📁 Installation

1. Create or download the folder:

```
landi_gun
```

2. Place it inside:

```
resources/
```

3. Add this to your `server.cfg`:

```
ensure landi_gun
```

4. Restart your server.

---

## ⚙️ Resource Structure

```
landi_gun/
├── fxmanifest.lua
└── client.lua
```

---

## 🎮 How It Works

* When **running** → weapon goes into low-ready position
* When **aiming** → camera slightly zooms in
* In **vehicles** → aiming switches to first person
* When **shooting** → realistic recoil + camera shake

---

## 🧠 Why Use This Script?

* Keeps your mouse and camera fully responsive
* No performance issues or bugs
* Simple and clean implementation
* Adds realism without ruining gameplay

---

## 🔧 Customization

You can adjust recoil here:

```lua
local recoilTable = {
```

* Increase values → stronger recoil
* Decrease values → lighter recoil

---

## ⚠️ Requirements

* FiveM server
* No framework required (Standalone)

---

## 👤 Author

**landi**

---

## 🚀 Status

✅ Stable
✅ Optimized
✅ Bug-free

---

## 💬 Support

If you want:

* more advanced realism
* custom animations
* pro version

feel free to expand or modify the script.

---

🔥 Enjoy realistic gameplay!
