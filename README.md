# مشروع iOS متعدد البيئات – تنظيم احترافي باستخدام Xcode Schemes

مشروع عملي يوضح كيف تقدر تدير أكثر من بيئة (Production, Dev...) في تطبيق iOS واحد، مع تغيير تلقائي للأيقونة والإعدادات الأساسية حسب السكيما المختارة.

---

## 🔄 صورة توضح الفكرة

<table>
  <tr>
    <td align="center">
      <b>البيئة الإنتاجية (Production)</b><br>
      <img src="screenshots/Logo-prod.png" alt="Production Logo" width="150"/>
    </td>
    <td align="center">
      <b>بيئة التطوير (Dev)</b><br>
      <img src="screenshots/Logo-dev.png" alt="Dev Logo" width="150"/>
    </td>
  </tr>
</table>

---

## 🛠️ كيف تم التنظيم؟

- كل بيئة لها **App Icon** خاصة (تتغير أوتوماتيك بمجرد تغير السكيما).
- جميع الإعدادات (مثل `baseURL` وغيره) تتبدل ديناميكيًا حسب الـ Scheme من غير تعديل الكود.
- اعتمدنا بنية واضحة وسهلة لأي فريق أو مطور يدخل المشروع.

---

## 📦 هيكل المشروع

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
│   ├── Logo-prod.png
│   ├── Logo-dev.png
│   ├── Schemas.png
│   ├── ravlo-logo.png
│   └── .gitkeep
└── README.md
