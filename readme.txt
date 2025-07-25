Kayıt ve Giriş Sayfası:
Amaç: Kullanıcıların sisteme kayıt olması ve daha sonra giriş yapabilmesi.
Kayıt formunda Ad Soyad, E-posta, Kullanıcı Adı ve Şifre alanları yer alır. Şifre alanı kullanıcıya yıldız (●●●) şeklinde gösterilir.
Form verileri POST yöntemiyle sunucuya gönderilir ve şifre bilgisi, güvenlik amacıyla SHA-256 algoritması ile hash’lenerek veritabanına kaydedilir.
Giriş ekranında kullanıcı adı ve şifre ile kimlik doğrulama yapılır. Giriş bilgileri kontrol edilerek kullanıcı yetkisine göre yönlendirme yapılır.

Admin Giriş ve Yetkilendirme:
Amaç: Sadece admin yetkisine sahip kullanıcıların yönetim paneline erişimini sağlamak.
Giriş ekranında admin'e özel tanımlı kullanıcı adı ve şifre girildiğinde kullanıcı admin paneline yönlendirilir.
Standart kullanıcı girişi yapılırsa, kullanıcı arayüzü açılır.
Admin kontrolü, Controller üzerinde yapılan kontrol mekanizması ile gerçekleştirilir.

Kullanıcı Sayfası:
Amaç: Kullanıcının ürünleri görüntüleyebilmesi, iletişim formu gönderebilmesi ve temel sayfalara erişebilmesi.

Ürün Görüntüleme: Kullanıcılar giysi ürünlerini liste hâlinde görebilir. Her ürün için isim, açıklama ve fiyat bilgisi yer alır.

İletişim Sayfası:
Formda Ad Soyad, E-posta ve Mesaj alanları yer alır. Mesaj alanı için textarea kullanılmıştır.
Form, Gönder butonuna basıldığında POST yöntemiyle Controller’a iletilir ve işlenebilir.

Anasayfa: Tanıtım ve genel bilgiler için kullanıcıya sunulan basit sayfadır.

Admin Paneli:
Amaç: Ürün ve mesajların yönetimini sağlamak.

Ürün Yönetimi:
Admin kullanıcı, yeni ürün ekleyebilir, mevcut ürünleri düzenleyebilir veya silebilir.
Bu işlemler Controller üzerinden yapılır ve ürün bilgileri tablo olarak görüntülenebilir.

Mesaj Yönetimi:
Kullanıcıların iletişim sayfasından gönderdiği mesajlar burada listelenir.
Admin, mesajları görüntüleyebilir ve silebilir.

Not:
Proje, ASP.NET MVC mimarisi kullanılarak geliştirilmiştir.
Formlardan gelen veriler POST yöntemiyle Controller’lara iletilir ve işlenir.
Gerekli durumlarda doğrulama yapılır.
Veri kalıcılığı için veritabanı bağlantısı kullanılmıştır. Şifreleme işlemi için SHA-256 algoritması tercih edilmiştir.