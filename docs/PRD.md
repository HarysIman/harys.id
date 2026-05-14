# PRD — Blog Harys Imanulloh

> Fitur blog yang ditambahkan ke portofolio Rails yang sudah ada di harys.id

---

## 1. Problem

Harys tidak punya tempat yang dia miliki sendiri untuk berbagi tulisan. Platform sosmed terlalu noise, terlalu tergantung algoritma, dan tidak cocok untuk tulisan yang panjang dan personal. Blog di portofolio sendiri jadi solusi — tempat yang dia kontrol, yang bisa ditemukan orang yang memang nyari, bukan yang scrolling pasif.

---

## 2. Solusi Singkat

Blog personal di portofolio Harys untuk berbagi tulisan jujur seputar SEO, dunia digital, dan kehidupan — tanpa agenda, hanya berbagi.

---

## 3. Target User

Pembaca yang nyari sesuatu di Google dan kebetulan relate — teman-teman Harys, Gen Z hingga Millennial awal, yang masih percaya tulisan panjang dan ingin menemukan perspektif jujur soal SEO, kerja, dan hidup. Bukan audiens media sosial yang scrolling pasif. Mereka datang karena memang mau menemukan tulisan ini.

---

## 4. User Journey

**Pembaca:**
1. Cari sesuatu di Google → menemukan artikel Harys
2. Atau kepo dari bio sosmed Harys → masuk ke harys.id → klik Blog di navigasi
3. Baca artikel
4. Kalau relate → tinggalkan komentar

**Penulis (Harys):**
1. Buat kerangka tulisan
2. Tulis sampai selesai
3. Publish langsung — tidak perlu perfect dulu
4. Edit bertahap setelah live (baca → edit → baca → edit)

---

## 5. Must-Have Features (v1)

1. Tulis & publish artikel
2. Edit artikel setelah live
3. Kolom komentar (tanpa perlu akun)
4. SEO-friendly URL (slug per artikel)
5. Tanggal publish
6. Author + foto author
7. Gambar / foto di dalam artikel
8. Related artikel atau topik
9. Blog masuk di navigasi portofolio

---

## 6. Nice-to-Have (v2)

*Belum ditentukan — diisi saat v1 sudah live.*

---

## 7. Out-of-Scope (v1)

- Paywall / artikel berbayar
- Multiple author
- Newsletter / email subscription
- Like / reaction per artikel
- Sistem kategori kompleks / tag bertingkat
- Fitur search artikel

---

## 8. Success Criteria

- Blog live dan bisa diakses dari navigasi portofolio
- Harys bisa nulis dan edit artikel dengan nyaman
- Minimal 1 komentar dari pembaca nyata

---

## 9. Mockup / Flow

**Halaman yang dibutuhkan:**

- `/blog` — daftar semua artikel (index)
- `/blog/:slug` — halaman artikel lengkap + komentar di bawah
- `/admin` atau panel sederhana untuk nulis & edit

**Desain:**
- Ikuti desain sistem portofolio yang sudah ada
- Dark palette (`#0E0F12`), aksen vermillion (`#EF233C`)
- Typography: Big Shoulders Display + Manrope + JetBrains Mono
- Konsisten dengan layout portofolio — bukan tampilan terpisah
