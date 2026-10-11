# 🎵 Personal Lavalink Server (v4)

আপনার পার্সোনাল ২৪/৭ Lavalink সার্ভারের সম্পূর্ণ সেটআপ।

---

## 🛠️ এটি কোন ল্যাঙ্গুয়েজে (Language) তৈরি?

1. **Lavalink সার্ভার মূল কোড:** **Java (Java 17 / Java 21)**
   - Lavalink মূলত Java-তে তৈরি একটি standalone অডিও নোড।
2. **কনফিগারেশন ফরম্যাট:** **YAML (`application.yml`)**
   - সার্ভারের পোর্ট, পাসওয়ার্ড, সোর্স এবং প্লাগিন সেটিংস YAML দিয়ে কনফিগার করা হয়।
3. **কনটেইনারাইজেশন:** **Docker (`Dockerfile`)**
   - ক্লাউড সার্ভারে ২৪/৭ সহজে হোস্ট করার জন্য Docker ব্যবহার করা হয়েছে।
4. **আপনার ডিসকর্ড বট কোন ল্যাঙ্গুয়েজে হতে পারে?**
   - আপনার ডিসকর্ড বট **যেকোনো ল্যাঙ্গুয়েজে** হতে পারে! যেমন:
     - **JavaScript / TypeScript (Node.js):** `lavalink-client`, `erela.js`, `poru`, `kazagumo`
     - **Python:** `wavelink`, `pomice`, `mafic`
     - **Java:** `lavaplayer`, `lavalink-client`
     - **Go / C# / Rust:** যেগুলোর Lavalink ক্লায়েন্ট লাইব্রেরি আছে।

---

## 🚀 ২৪/৭ ক্লাউডে ফ্রি হোস্টিং গাইড (Koyeb)

1. এই ফোল্ডারের ফাইলগুলো আপনার **GitHub** অ্যাকাউন্টে একটি রিপোজিটরিতে (যেমন: `personal-lavalink`) পুশ করুন।
2. [koyeb.com](https://www.koyeb.com)-এ সাইন আপ করুন।
3. **Create Service** -> **GitHub** নির্বাচন করে রিপোজিটরিটি বেছে নিন।
4. বিল্ডার হিসেবে **Dockerfile** সিলেক্ট হবে।
5. **Port** দিন `2333` এবং প্রোটোকল দিন `HTTP`।
6. **Deploy** বাটনে ক্লিক করুন। ২ মিনিটের মধ্যে আপনার পার্সোনাল সার্ভার লাইভ হয়ে যাবে!

---

## 💻 নিজের কম্পিউটারে টেস্ট করার উপায়

### অপশন ১: Docker দিয়ে (সুপারিশকৃত)
```bash
docker compose up -d
```

### অপশন ২: সরাসরি Java দিয়ে
1. [Lavalink v4 GitHub Releases](https://github.com/lavalink-devs/Lavalink/releases) থেকে `Lavalink.jar` ডাউনলোড করে এই ফোল্ডারে রাখুন।
2. আপনার পিসিতে **Java 17 বা Java 21** ইনস্টল করা থাকতে হবে।
3. কমান্ড চালান:
```bash
java -jar Lavalink.jar
```

---

## 🔑 বট কানেকশন ইনফো (Bot Connection Credentials)

- **Node Name / ID:** `AminX`
- **Host:** `আপনার ক্লাউড ডোমেন` (যেমন `personal-lavalink.koyeb.app`) অথবা লোকাল হলে `localhost`
- **Port:** `443` (যদি HTTPS/WSS হয়) অথবা `2333`
- **Password (Authorization):** `alamin500@11`
- **Secure:** `true` (ক্লাউড হোস্টিং হলে) / `false` (লোকালহোস্ট হলে)

### বটের কোডে কানেক্ট করার উদাহরণ:

#### JavaScript / TypeScript (Node.js):
```javascript
const nodes = [
  {
    name: "AminX",
    host: "your-subdomain.koyeb.app", // বা localhost
    port: 443,                       // লোকাল হলে 2333
    authorization: "alamin500@11",
    secure: true                     // লোকাল হলে false
  }
];
```

#### Python (wavelink / pomice):
```python
node = wavelink.Node(
    identifier="AminX",
    uri="https://your-subdomain.koyeb.app:443", # বা http://localhost:2333
    password="alamin500@11"
)
```

