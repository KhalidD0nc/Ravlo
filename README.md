# تطبيق iOS متعدد البيئات – تنظيم احترافي باستخدام Xcode Schemes

مشروع توضيحي يشرح كيف تبني تطبيق iOS يدعم أكثر من بيئة (Production, Dev, Pre...) مع ضبط الأيقونات والإعدادات تلقائيًا حسب السكيما.

---

## 🚀 لوقو التطبيق

<p align="center">
  <img src="screenshots/ravlo-logo.png" alt="Ravlo Main Logo" width="140"/>
</p>

---

## 🔄 فكرة السكيمات (Schemes) في المشروع

الصورة التالية توضح كيف ربطنا كل بيئة بسكيما خاصة في Xcode، بحيث تقدر تميز بين كل بيئة من أول نظرة:

<p align="center">
  <img src="screenshots/Schemas.png" alt="Xcode Schemas" width="350"/>
</p>

---

## 🖼️ أيقونات كل بيئة

<table>
  <tr>
    <td align="center">
      <b>بيئة المنتج (Production)</b><br>
      <img src="screenshots/Logo-prod.png" alt="Production Logo" width="130"/>
    </td>
    <td align="center">
      <b>بيئة التطوير (Dev)</b><br>
      <img src="screenshots/Logo-dev.png" alt="Dev Logo" width="130"/>
    </td>
  </tr>
</table>

---

## كيف ضبطنا البيئة؟

- لكل بيئة (Scheme) أيقونة منفصلة تلقائيًا.
- إعدادات مثل الـ API BaseURL تتغير مباشرة حسب السكيما.
- كل شيء مرتب في مجلدات Config وNetwork، والكود واضح وسهل التوسع.

---

## 📂 هيكل المشروع

```plaintext
.
├── Config/
│   ├── AppConfig.swift
│   └── Environment.swift
├── Network/
│   ├── RavloHttp.swift
│   ├── UserService.swift
│   ├── ProductService.swift
│   └── ReportService.swift
├── Assets.xcassets/
│   ├── AppIcon.appiconset
│   ├── AppIcon-dev.appiconset
├── screenshots/
│   ├── ravlo-logo.png
│   ├── Logo-prod.png
│   ├── Logo-dev.png
│   ├── Schemas.png
│   └── .gitkeep
└── README.md
