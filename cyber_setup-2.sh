#!/bin/bash
set -e

mkdir -p 'android/app/src/main'
cat > 'android/app/src/main/AndroidManifest.xml' <<'EOF_FILE_1'
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <uses-permission android:name="android.permission.INTERNET"/>
    <application
        android:label="Agaa Cyber"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:launchMode="singleTop"
            android:taskAffinity=""
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
    <queries>
        <intent>
            <action android:name="android.intent.action.VIEW"/>
            <data android:scheme="https"/>
        </intent>
        <intent>
            <action android:name="android.intent.action.PROCESS_TEXT"/>
            <data android:mimeType="text/plain"/>
        </intent>
    </queries>
</manifest>
EOF_FILE_1
mkdir -p 'android/app/src/main/kotlin/com/agaa/agaa_cyber'
cat > 'android/app/src/main/kotlin/com/agaa/agaa_cyber/MainActivity.kt' <<'EOF_FILE_2'
package com.agaa.agaa_cyber

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity()
EOF_FILE_2
mkdir -p 'android/app/src/main/res/mipmap-hdpi'
base64 -d > 'android/app/src/main/res/mipmap-hdpi/ic_launcher.png' <<'EOF_FILE_3'
iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAACfElEQVR4nO3czU3DQBAF4GeLAhAS
HDghGqAIKqALREGILqiAItIAyimHIEXpAA7IENY7O7u258fsvgsHG+L9NDOObOMOhTm/vvgs/R1P
Oe4OXcn+WTuvHYVKDlZyh/8KEyYF1VMbasEB0muNAtWEM4Ra8wioRpwhsbX33A61JTToqQ0159SC
HNIt3+mBVj2xDCatgpg0ICZda690WgUxaUBM3AHdvj1aH8KfuJhBKZT3+xfFIxnHDGhKpVhgqQLl
oOw3W1zd3bD7aWGJA3Eo+802ud0aSwRoLkoqHNjSWIsBpVDmgKSigXU2+y9EIgXCfU5OO5bG3fcg
b2lATBoQkwbEZJVAH0+vap+1OqABRwtpVUAhigbSqoDCXD4/iH/GaoDCatHAAVYCpDmUw7gHiuFo
VQ/gHMgaBzACmtoy2jiAAVDu9xiroRxGBIi67JD7PWZKhUlc6gAEKyh2wLEqyEHjqkcKBxBusVyk
IR6GcpjFgKjLmzlIVEvl4FDVs9S16UUraM5BTRnK0jiAQIvFDq601XKigQMonuZLkCyHchgRoCnz
KPxJJYUjcQNR9M4qda9M4sah1N1V0RYrqaScaOMACjNoKSQLHEBpSM9FssIBFM9iUxdjiQM4uB6U
qiLN0zkVVaCl5pHmk2bqFZSLZN1aQ0xajEPyggMYP+Va8iCn1dOupkM6d9GWjwKbn8W4xVs/J20O
5D0ugKgqsa4ewAkQMMbwgAMAfem7LCQzoHjBOe4OXQe0/1mlctwdOjct5jU9UP7KmBoymLQKYvID
1KroN6cWPbWh1oQGoxarGSm29ugMqhGJWjM5pGtCSq21veSNSXGVrB2rtDO+AAEJBkaaIN8UAAAA
AElFTkSuQmCC
EOF_FILE_3
mkdir -p 'android/app/src/main/res/mipmap-mdpi'
base64 -d > 'android/app/src/main/res/mipmap-mdpi/ic_launcher.png' <<'EOF_FILE_4'
iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABo0lEQVR4nO2ZwU3EMBBFfywKQEhw
4IRogCKogC7QFoToggooggYQpz2AtNoO4IIla3Zmktjfib3KP9pZ+/2ZsWNvBji6vL369fqX0nF/
GKw+taMVcCnNSJANrcIDOlsYe6A1ScZgdbSslDXIhl4UmU/WQG8aeox+qu4zsBkY0/37c9Xxq6wB
D/rz8ZU6F82ABf398YWbhzu1j2GmyIAHbYltZrYBDdoD9sQwc5E1M/KhrTEsM2PattG1tYqBn90b
bazFDUR4lonVSuj65YkyzqIGmKUTtZiBFJ4VfWCFEmLCA2QDVonEdjY8UGBAvjmt3WVK3ee+hYHC
DKQTp9HVzFjRL4EHMk+j8kAnz0Uy6l7pSANzT6VZGZCTSIiptV4KDxSU0FQTU0sn9z5QdRutVfep
igyMZUGT9kzJ1bI4A3NMsOEBUgnlZEL7XY5oa2DMBGvRSlEXsWWiFjxwBn9sbXdiTVaU2dEHKmZA
wtaAByqXUISuBQ/8fyfu9SvNcX8YzmMRe5/yW1VkDrKhB6WswepoVZLxZA20bEJjc2Fb2Z28oP4B
1UGsbe3+F+oAAAAASUVORK5CYII=
EOF_FILE_4
mkdir -p 'android/app/src/main/res/mipmap-xhdpi'
base64 -d > 'android/app/src/main/res/mipmap-xhdpi/ic_launcher.png' <<'EOF_FILE_5'
iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAADT0lEQVR4nO2dQU4cMRBFf484AIqU
LLKKuACH4AS5RcSBotyCE3AILhCxYgES4gbJyqOmx3aX7bKryl1vw4Kmaf6rKvcwnpkFDFx///KP
4zzW+Hh5X1rPUX2Co4aeolZG8Q958HlKRZAP9uDLoIo4UQ7y8MuhZpa15MHzkOuGZAd4+HzksowK
8PD5SWVKWgOcflwI8OrvRyzb094BDi/bjH0ECXMW4NU/jnXW3gHCnACvfglC5t4BwrgAYRYfP7J4
BwjjAoRxAcKYF3Dz+Ev6EpowuQjnQv9792fglbRjQkBLlWsXolYANfTXp2d8u/1BOlajDDUCSqr8
9ek5+T2qDECHEFEBXKGnsCBjqIDSWV4TeooSGcA4Id0F9K7yGjTJuOp2ZiKjQk/9zlIZ3IgIkAg9
hbQM84+EreMChHEBwrgAYVyAMIcS8Hb/IH0JFxxGQAhfm4TDCFjzdv+gRsQhBMTC/vr7p8CVXDK9
AM3hA5ML0DJmckwtIIam6gcmFqB99ASmFGAlfGBCARbm/prpBMTQWv2AYgE1lWxp9ARUCqj5t4HF
8AGFArZBUiRYm/trRATknnuNVW1NwKXVL/XkvFgHcEngGD2SOyNER1CrBOvhAwME7G1qqpUwau73
3iE3bGvi3g653F4hatjc1T9ie+KwEdTyx1CCtRg+oOg2dC+QXMDW5v6aoQJa1gOA54EVJfyRW9WH
dwCXhO1XCtrCBwRfoNGyKNegMXxAcA1o7QRupF4hI7oIj5Kg5Y4nhvhdUG8JmsMHFAigUCtB0+1m
ChUCKFVYGqbWRXeLCgEAbxhWwgcUCQB41gNL4QPKBAD9F2VN4QMKBQD1ErTf8cRQKQAol2AxfECx
AAohdAu3mynUvFtKCo53xNJa/YCBDmgNT3P4gAEBQH2I2sMHjAgAysO0ED5gSABAD9VK+IAxAcB+
uJbCBwwKmA2TAlJVbq36AeDE8ZGsEmzDthj+x8v7YrIDAiF0i+EHFsA/wkSKcwdYHUOWCZmbHkEz
cBbgXTCOddbeAcJ8EuBd0J9txhcd4BL6EcvWR5AwUQHeBfykMk12gEvgI5clKWR/pFwHpYhJa4B3
QznUzIqD9W7IU1qs1ZXtIj5TOyVYRstRZXCM5v+3EVa6NF9p1QAAAABJRU5ErkJggg==
EOF_FILE_5
mkdir -p 'android/app/src/main/res/mipmap-xxhdpi'
base64 -d > 'android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png' <<'EOF_FILE_6'
iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAAExklEQVR4nO3czY0UMRRF4dsjAkBI
sGCFSIAgiIAs0ASEyIIICIIEEKtZgDSaDGABNVT3lKttP9tl+52z7x/aH8+unlad1Kjnr1/8bvVa
JD3c3Z9avE61FwFMX9UCVfRJQTNGJTEVeSLgjFkJSKYnAM4cWSDd5D4QPPNkWcssQOCZr9w1TRpd
wPFRypYWPYHA46eUtY4CBB5/xa75VUDg8VvM2u8CAg9dM5B9GU8k7QBi+tDSnoVNQOChy0ImngAC
D4XassEZiEydAWL60LUujTCByNQjIKYPxba2wgQiUwAiUzcS2xelt5hhApEpAJEpAJGpE+cfssQE
IlMAIlMAIlMAIlMAutLbrx+Pfgtdx1XYRntovr//3PCd9B+A/pUzacDkHFDJ7ckrJneAWpxpPGFy
AciC5ue3H3r17k3242fHNC0gK5pQYDpvKkC10IQC0wSActHkgNnLK6YhAfWCJpQnTMMA6h3NXrmg
RsDUNaCR0YSaDVN3gHLQ9AxmrxkwPTv6DeQ2Kpp163+D5dx0ZEMBmgFNqFEx8XMOMgUgMgUgMgUg
MgUgMgUgMgUgMgUgMgUgMgWgRv26/XL0W6gSgBq04JkREYAqd4nm1+2XqSAB6KBmQQSgiu0hefnp
Q8N3Ui8AVcoDHglAVZple4oJQI2bafpIACqel61rCUAF84ZHAlCxPJ171gGoQbNOHwlARfK4dS0B
yJhnPBKATHk996wDUKU8TB8JQNl537qW3AAqud2A538uAJX8QRd4zhsKUM5NB7Z+0JVbi0PzSDdW
kAYDJKV9wKEFrwGhxPQZDY80ICAp/oPeW9RURLW3rhHxSIMCktoi4twTblhAKVkQce7Zb2hAKR98
ye0s5jljGxmP1CGg1BtI1kTU47mnpxtsSh0CkvpABJ64urvN77rUW/6m3ITTcraxApoFj9TpBFo6
ahLVeJylXvFInQPKqSYiDs1P6x5Qzv++Gog492zXPSCp/ofYYluaEY80CCCp7nlI2kfEoTncMICk
YxCBZ7+uL+ND1by8L9nseKTBJtBS7Ul0VKPhkQYFJPWPKPX1RsQjDQwop1aIRpl4JRoaUO3viHLy
cO5ZNzQgqa8P3xseaQJAUh/nIY94pEkAScci8opHmgiQ1MckimkWPNJkgKT2iLxcroeaDpDUDpF3
PNKkgHJKxeDpu569pgVU8zsiz4fmy6YFJNVZNPCcNzUg6fgrs5nxSA4ASeUQcWh+mgtAkh0ReLZz
A0jKRwSecEP+ItFa6i8aU/KER3I2gah8LgHVmhLepo/kFJBUfrE94pEcA5LKLbpXPJJzQJJ98T3j
kQAkKR+BdzwSgB5LxQCevwFoVSwK8PwPQGQKQBddmy5Mn/NuHu7uT0e/id4KIQHPeQ939ycmUKBL
LODZDkA7LWjAE+4kSR7/Ik/2HrcwzkGU2mKGLYxMAYhMPQJiG6PY1laYQGTqDBBTiK51aYQJRKae
AGIKUagtG5sTCER0WchEcAsDES3tWeAMRKZ2ATGF6JqBqxMIRH6LWfuoLQxE/opd8+gzEIj8lLLW
WSj4/dCc5QyJrKswptF85a5p9mU8iObJspZFELCljVmJIVB0igBpjEruHtW2ITD1Va0jR7NzDKDa
1uqM+gensPp2CJIK7QAAAABJRU5ErkJggg==
EOF_FILE_6
mkdir -p 'android/app/src/main/res/mipmap-xxxhdpi'
base64 -d > 'android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png' <<'EOF_FILE_7'
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
uPmhpMNi32AAAAAASUVORK5CYII=
EOF_FILE_7
mkdir -p 'lib'
cat > 'lib/content.dart' <<'EOF_FILE_8'
import 'package:flutter/material.dart';

enum BT { h, p, list, steps, tip, warn, note, img }

class Blk {
  final BT t;
  final String text;
  final List<String> items;
  const Blk(this.t, this.text, [this.items = const <String>[]]);
}

Blk H(String s) => Blk(BT.h, s);
Blk P(String s) => Blk(BT.p, s);
Blk L(List<String> a) => Blk(BT.list, '', a);
Blk S(List<String> a) => Blk(BT.steps, '', a);
Blk Tip(String s) => Blk(BT.tip, s);
Blk Warn(String s) => Blk(BT.warn, s);
Blk Note(String s) => Blk(BT.note, s);
Blk Img(String url, [String cap = '']) => Blk(BT.img, url, <String>[cap]);

class Quiz {
  final String q;
  final List<String> opts; // الإجابة الصحيحة دائمًا الأولى، وتُخلط عند العرض
  final String why;
  const Quiz(this.q, this.opts, this.why);
}

class Lesson {
  final String id;
  final String title;
  final String summary;
  final int min;
  final IconData icon;
  final bool reviewed;
  final bool premium;
  final bool locked;
  final List<Blk> body;
  final List<Quiz> quiz;
  const Lesson(this.id, this.title, this.summary, this.min, this.icon, this.body, this.quiz,
      {this.reviewed = false, this.premium = false, this.locked = false});
}

class Course {
  final String id;
  final String title;
  final String desc;
  final IconData icon;
  final List<Lesson> lessons;
  final bool premium;
  const Course(this.id, this.title, this.desc, this.icon, this.lessons, {this.premium = false});
}

class Soon {
  final String title;
  final String desc;
  final IconData icon;
  const Soon(this.title, this.desc, this.icon);
}

const String kContact = '249961076263';

final List<Lesson> kNetLessons = <Lesson>[
  Lesson(
    'n1',
    'كيف تتحدث الأجهزة مع بعضها؟',
    'الصورة الكبيرة لشبكة الإنترنت: العناوين، الحزم، والطبقات.',
    7,
    Icons.hub_outlined,
    [
      H('كل جهاز له عنوان'),
      P('أي جهاز متصل بالإنترنت (هاتفك، الراوتر، خادم موقع) له عنوان فريد يسمى IP، تمامًا كعنوان بريدي. بدونه لا تصل البيانات إليه.'),
      L([
        'IPv4: الصيغة القديمة الأكثر شيوعًا، أربعة أرقام مثل 192.168.1.1.',
        'IPv6: صيغة أحدث وأطول، صُنعت لأن عناوين IPv4 كادت تنفد.',
        'عنوان خاص (محلي): يُستعمل داخل شبكتك المنزلية فقط، لا يراه أحد من الخارج مباشرة.',
        'عنوان عام: هو ما يراه العالم الخارجي، وغالبًا الراوتر فقط من يملكه.',
      ]),
      H('البيانات تُقسّم إلى حزم'),
      P('حين ترسل رسالة أو تفتح موقعًا، لا تُرسل البيانات دفعة واحدة، بل تُقسّم إلى قطع صغيرة تسمى حزم (Packets)، كل حزمة تحمل عنوان المرسل والمستقبل، وتسافر وتجتمع من جديد عند الوصول.'),
      H('طبقات الشبكة: فكرة مبسّطة'),
      L([
        'الطبقة المادية: الكابلات وموجات الواي فاي.',
        'طبقة الشبكة: تحديد العنوان والمسار (IP).',
        'طبقة النقل: التأكد من وصول البيانات كاملة (TCP) أو الإرسال السريع دون ضمان (UDP).',
        'طبقة التطبيق: البروتوكولات التي تفهمها التطبيقات مباشرة مثل HTTP وDNS.',
      ]),
      Tip('لست مضطرًا لحفظ كل هذا الآن، لكن فهم الفكرة العامة سيجعل كل درس قادم أوضح بكثير.'),
    ],
    [
      Quiz('ما وظيفة عنوان IP؟', ['تحديد هوية الجهاز على الشبكة', 'تشفير الرسائل', 'تسريع الإنترنت', 'حماية كلمة السر'], 'العنوان يحدد من يرسل ومن يستقبل، مثل العنوان البريدي.'),
      Quiz('لماذا تُقسّم البيانات إلى حزم؟', ['لتسافر بكفاءة وتجتمع عند الوصول', 'لتكون أثقل', 'لتختفي عن الأنظار', 'لا سبب محدد'], 'التقسيم يجعل الإرسال أسرع وأكثر مرونة عبر الشبكة.'),
      Quiz('ما الفرق بين العنوان الخاص والعام؟', ['الخاص داخل شبكتك فقط، والعام يراه الإنترنت', 'لا فرق', 'العام أبطأ', 'الخاص للهواتف فقط'], 'العنوان الخاص محلي، والعام هو ما يتعامل معه العالم الخارجي.'),
    ],
  ),
  Lesson(
    'n2',
    'DNS: دليل الهاتف الخاص بالإنترنت',
    'كيف يتحول اسم الموقع الذي تكتبه إلى عنوان رقمي يفهمه الجهاز.',
    6,
    Icons.dns_outlined,
    [
      H('مشكلة بسيطة'),
      P('أنت تكتب google.com، لكن أجهزة الشبكة تفهم فقط أرقام IP. من يترجم الاسم إلى رقم؟ هذا عمل DNS (Domain Name System).'),
      H('كيف تعمل العملية'),
      S([
        'تكتب اسم الموقع في المتصفح.',
        'جهازك يسأل خادم DNS: "ما عنوان IP لهذا الاسم؟"',
        'خادم DNS يرد بالعنوان الرقمي، وأحيانًا يسأل خوادم أخرى أولًا إن لم يكن يعرف الجواب.',
        'يتصل جهازك بذلك العنوان الرقمي مباشرة ليفتح الموقع.',
      ]),
      H('لماذا يهمك هذا أمنيًا'),
      L([
        'بعض الهجمات تخدع DNS لتوجيهك إلى موقع مزيّف يشبه الموقع الحقيقي (DNS Spoofing).',
        'بعض البرامج الخبيثة تغيّر إعدادات DNS في جهازك لتتحكم في المواقع التي تفتحها فعليًا.',
        'استعمال خادم DNS موثوق (مثل خوادم معروفة وآمنة) يقلل من هذا الخطر.',
      ]),
      Warn('إذا فتحت موقعًا تعرفه جيدًا ووجدت شكله مختلفًا فجأة أو يطلب بيانات غريبة، فقد يكون جهازك يتصل بعنوان خاطئ.'),
    ],
    [
      Quiz('ما وظيفة DNS؟', ['ترجمة اسم الموقع إلى عنوان IP', 'تشفير كلمة السر', 'تسريع تحميل الصور', 'حجب الإعلانات'], 'DNS هو دليل يترجم الأسماء المفهومة للبشر إلى عناوين تفهمها الأجهزة.'),
      Quiz('ما خطر DNS Spoofing؟', ['توجيهك إلى موقع مزيّف باسم موقع حقيقي', 'إبطاء الإنترنت فقط', 'حذف ملفاتك', 'لا خطر منه'], 'الخداع هنا يجعلك تثق بموقع مزوّر يحمل اسمًا مألوفًا.'),
    ],
  ),
  Lesson(
    'n3',
    'HTTP وHTTPS: لماذا تهمّك القفلة الصغيرة',
    'الفرق بين الاتصال المكشوف والمشفّر، وكيف تتحقق منه بنفسك.',
    6,
    Icons.lock_outline,
    [
      H('HTTP بلا حماية'),
      P('عند زيارة موقع عبر HTTP العادي، تُرسل البيانات بين جهازك والموقع كنص مقروء، فأي طرف على نفس الشبكة (مثل واي فاي عام) قد يرى ما ترسله، بما في ذلك كلمات السر أحيانًا.'),
      H('HTTPS: نفس الفكرة لكن مشفّرة'),
      P('يضيف HTTPS طبقة تشفير (TLS) فوق HTTP، فتتحول البيانات أثناء السفر إلى شكل غير مفهوم لأي طرف يتنصّت، ولا يُفك تشفيرها إلا عند جهازك والموقع الحقيقي.'),
      H('كيف تتحقق بنفسك'),
      S([
        'انظر لشريط العنوان في المتصفح: يجب أن يبدأ بـ https:// ويظهر رمز قفل صغير.',
        'اضغط على رمز القفل لترى اسم الجهة التي أصدرت الشهادة.',
        'احذر من موقع يطلب بيانات حسّاسة (كلمة سر، بطاقة دفع) دون أن يكون عليه القفل.',
      ]),
      Note('وجود القفل لا يعني أن الموقع "جيد" أو "غير احتيالي"، بل فقط أن الاتصال بينك وبينه مشفّر. موقع تصيّد يمكن أن يملك هو أيضًا شهادة HTTPS.'),
    ],
    [
      Quiz('ما الذي يضيفه HTTPS على HTTP؟', ['تشفير البيانات أثناء النقل', 'سرعة أكبر دائمًا', 'حذف الإعلانات', 'لا شيء'], 'HTTPS يشفّر الاتصال فلا يستطيع من يتنصّت على الشبكة قراءة محتواه.'),
      Quiz('هل وجود القفلة يعني أن الموقع آمن تمامًا من الاحتيال؟', ['لا، يعني فقط أن الاتصال مشفّر', 'نعم دائمًا', 'يعني أن الموقع رسمي', 'يعني عدم وجود فيروسات'], 'موقع احتيالي يمكن أن يملك شهادة HTTPS أيضًا، فالقفلة ليست ضمانًا كاملًا.'),
    ],
  ),
];

final List<Lesson> kWebLessons = <Lesson>[
  Lesson(
    'w1',
    'كيف يعمل الموقع من الداخل',
    'الفرق بين ما يراه المتصفح وما يحدث في الخادم، وأين تكمن الثغرات غالبًا.',
    7,
    Icons.web_outlined,
    [
      H('طرفان يتحدثان'),
      P('أي موقع فيه طرفان: الواجهة الأمامية (ما تراه في المتصفح: الأزرار والنماذج)، والخادم الخلفي (الكود الذي يعالج طلباتك ويتعامل مع قاعدة البيانات). الثغرات الخطيرة غالبًا تكون في كيفية تعامل الخادم مع ما يُرسله المستخدم.'),
      H('القاعدة الذهبية'),
      P('أي بيانات يُدخلها المستخدم (في نموذج، رابط، أو حتى اسم ملف) يجب أن تُعامل كغير موثوقة حتى يتم التحقق منها. أغلب الثغرات تحدث حين يثق الخادم بما يُرسله المستخدم دون فحص.'),
      L([
        'النماذج (تسجيل الدخول، البحث، التعليقات) هي أكثر نقاط الدخول شيوعًا.',
        'الروابط التي تحمل معاملات (?id=5) قد تُستغل لتغيير سلوك الموقع.',
        'الملفات التي يرفعها المستخدم قد تحمل محتوى خطيرًا إن لم تُفحص.',
      ]),
      Tip('حين تقرأ عن أي ثغرة في الدروس القادمة، اسأل نفسك دائمًا: أين وثق الخادم ببيانات المستخدم دون داعٍ؟'),
    ],
    [
      Quiz('أين تكمن معظم الثغرات الخطيرة غالبًا؟', ['في كيفية تعامل الخادم مع بيانات المستخدم', 'في ألوان الموقع', 'في سرعة الإنترنت', 'في حجم الشاشة'], 'الخادم هو من يتخذ القرارات الحساسة، فسوء التعامل مع المدخلات يفتح الباب للثغرات.'),
      Quiz('ما القاعدة الذهبية في أمن الويب؟', ['لا تثق ببيانات المستخدم دون فحص', 'ثق بكل المستخدمين', 'لا حاجة للفحص إن كان الموقع صغيرًا', 'الفحص يبطئ الموقع فقط'], 'أي مدخل من المستخدم يجب التحقق منه قبل استخدامه.'),
    ],
  ),
  Lesson(
    'w2',
    'حقن SQL: حين تصبح كلمة السر أمرًا للقاعدة',
    'كيف يستغل مهاجم نموذجًا بسيطًا ليتحدث مباشرة مع قاعدة البيانات.',
    8,
    Icons.storage_outlined,
    [
      H('الفكرة بمثال مبسّط'),
      P('تخيّل نموذج تسجيل دخول يبني جملة بحث في قاعدة البيانات بدمج ما يكتبه المستخدم مباشرة داخل الجملة، دون فصل البيانات عن الأوامر. لو كتب المستخدم نصًا يحتوي رموزًا خاصة بلغة قواعد البيانات (SQL)، فقد يغيّر معنى الجملة نفسها بدل أن يكون مجرد "بيانات".'),
      H('لماذا يخطر هذا'),
      L([
        'قد يسمح للمهاجم بتجاوز تسجيل الدخول دون كلمة سر صحيحة.',
        'قد يُستخدم لقراءة بيانات مستخدمين آخرين من القاعدة.',
        'في أسوأ الحالات، قد يسمح بتعديل أو حذف بيانات كاملة.',
      ]),
      H('كيف يحمي المطوّرون أنفسهم'),
      S([
        'استعمال "استعلامات معلّمة" (Prepared Statements): تفصل بيانات المستخدم عن أوامر القاعدة بشكل كامل.',
        'التحقق من شكل المدخلات المتوقع (مثلًا: البريد الإلكتروني يجب أن يحتوي @).',
        'إعطاء حساب قاعدة البيانات أقل الصلاحيات الممكنة، فلا يستطيع حتى لو استُغل أن يفعل كل شيء.',
      ]),
      Note('هذا الدرس شرح للمفهوم لفهم كيف تُكتشف هذه الثغرة وتُسد، وليس كودًا جاهزًا لاستهداف أي موقع حقيقي.'),
    ],
    [
      Quiz('ما سبب حدوث حقن SQL عادة؟', ['دمج بيانات المستخدم مباشرة في أمر قاعدة البيانات', 'بطء الإنترنت', 'كثرة المستخدمين', 'لون الموقع'], 'حين لا تُفصل بيانات المستخدم عن أوامر القاعدة، يمكن أن تُفسَّر البيانات كأمر.'),
      Quiz('ما أفضل حل تقني لمنع هذه الثغرة؟', ['الاستعلامات المعلّمة (Prepared Statements)', 'تغيير لون الموقع', 'زيادة سرعة الخادم', 'تصغير النموذج'], 'هذه الطريقة تفصل البيانات عن الأوامر بشكل كامل فلا تُفسَّر كجزء من الاستعلام.'),
      Quiz('ماذا يعني إعطاء حساب القاعدة "أقل الصلاحيات الممكنة"؟', ['تقليل الضرر حتى لو استُغلت ثغرة', 'منع المستخدمين من الدخول', 'إبطاء الموقع عمدًا', 'لا علاقة له بالأمان'], 'حتى لو نجح هجوم، فإن الصلاحيات المحدودة تقلل حجم الضرر الممكن.'),
    ],
  ),
  Lesson(
    'w3',
    'XSS: حين يُشغَّل كود داخل صفحة ثقة',
    'كيف يُحقن كود في صفحة موقع موثوق ليعمل في متصفح ضحية أخرى.',
    8,
    Icons.code_outlined,
    [
      H('الفكرة'),
      P('XSS (Cross-Site Scripting) يحدث حين يسمح موقع بعرض محتوى كتبه مستخدم (تعليق، اسم، رسالة) دون تنقية، فيستطيع مهاجم كتابة كود صغير يُنفَّذ في متصفح أي شخص آخر يرى تلك الصفحة.'),
      H('لماذا هذا خطير تحديدًا'),
      P('الكود يعمل باسم الموقع الموثوق نفسه في متصفح الضحية، فقد يُستخدم لسرقة بيانات الجلسة (ما يبقيك مسجّل دخول) أو خداع المستخدم داخل صفحة يثق بها فعلًا.'),
      L([
        'XSS مخزّن: الكود يُحفظ في قاعدة البيانات (مثل تعليق) ويصيب كل من يزور الصفحة.',
        'XSS منعكس: الكود يأتي ضمن رابط، ويعمل فقط لمن يفتح ذلك الرابط المحدد.',
      ]),
      H('كيف تُمنع'),
      S([
        'تنقية أي محتوى يكتبه المستخدم قبل عرضه، وترميز الرموز الخاصة (مثل < و >).',
        'استعمال سياسة أمان المحتوى (CSP) التي تحدد ما يُسمح للمتصفح بتشغيله.',
        'عدم الثقة بأي محتوى قادم من المستخدم حتى لو بدا "نصًا عاديًا".',
      ]),
    ],
    [
      Quiz('أين يُنفَّذ كود XSS؟', ['في متصفح الضحية، باسم الموقع الموثوق', 'في خادم المهاجم فقط', 'لا يُنفَّذ أبدًا', 'في قاعدة البيانات فقط'], 'هذا ما يجعله خطيرًا: يعمل داخل صفحة يثق بها المستخدم.'),
      Quiz('ما الفرق بين XSS المخزّن والمنعكس؟', ['المخزّن محفوظ ويصيب كل زائر، والمنعكس يحتاج رابطًا محددًا', 'لا فرق', 'المنعكس أخطر دائمًا', 'المخزّن يحدث في المتصفح فقط'], 'المخزّن يبقى في قاعدة البيانات، أما المنعكس فيعتمد على رابط يفتحه الضحية بنفسه.'),
    ],
  ),
  Lesson(
    'w4',
    'كلمات السر وكيف تُخترق فعليًا',
    'الهجمات الشائعة على كلمات السر، ولماذا الطول أهم من التعقيد الغريب.',
    7,
    Icons.password_outlined,
    [
      H('طرق الاختراق الشائعة'),
      L([
        'التخمين بالقوة الغاشمة (Brute Force): تجربة كل الاحتمالات الممكنة.',
        'هجوم القاموس: تجربة كلمات شائعة وتسريبات سابقة أولًا، وهو أسرع بكثير من التخمين العشوائي.',
        'حشو بيانات الاعتماد (Credential Stuffing): استخدام كلمات سر مسرّبة من موقع لتجربتها في مواقع أخرى، لأن كثيرين يكررون نفس كلمة السر.',
      ]),
      H('لماذا الطول أهم من الرموز الغريبة'),
      P('كلمة سر طويلة من كلمات عشوائية غير مترابطة (مثل جملة من أربع كلمات) أصعب على الحاسوب تخمينها من كلمة قصيرة معقدة الرموز لكن يسهل تذكر نمطها.'),
      H('أفضل ممارسة عملية'),
      S([
        'استعمل كلمة سر مختلفة لكل حساب مهم.',
        'استعمل مدير كلمات سر ليحفظها عنك بأمان بدل تكرار نفس الكلمة.',
        'فعّل التحقق بخطوتين (2FA) في أي حساب يدعمه، فهو يحميك حتى لو سُرقت كلمة السر.',
      ]),
      Tip('جرّب في الدرس التالي أداة فحص قوة كلمة السر داخل التطبيق لترى الفكرة عمليًا.'),
    ],
    [
      Quiz('ما حشو بيانات الاعتماد (Credential Stuffing)؟', ['تجربة كلمة سر مسرّبة من موقع في مواقع أخرى', 'تخمين عشوائي بحت', 'اختراق الخادم مباشرة', 'لا علاقة له بكلمات السر'], 'يعتمد على تكرار الناس لنفس كلمة السر في عدة حسابات.'),
      Quiz('لماذا الطول مهم في كلمة السر؟', ['يزيد عدد الاحتمالات بشكل كبير فيصعب التخمين', 'يجعلها أسهل للحفظ فقط', 'لا علاقة له بالأمان', 'يبطئ الموقع'], 'كل حرف إضافي يضاعف عدد الاحتمالات الممكنة، فيصعب كسرها بالتخمين.'),
      Quiz('ما فائدة التحقق بخطوتين (2FA)؟', ['يحميك حتى لو سُرقت كلمة السر', 'يجعل كلمة السر غير ضرورية', 'يبطئ الدخول فقط دون فائدة', 'يعمل فقط على الحاسوب'], 'حتى لو عرف المهاجم كلمة سرك، يحتاج أيضًا للخطوة الثانية التي لا يملكها.'),
    ],
  ),
];

final List<Lesson> kDefLessons = <Lesson>[
  Lesson(
    'd1',
    'التصيّد الإلكتروني: كيف تُخدع',
    'الأساليب الحقيقية التي يستعملها المحتالون، وكيف تكتشفها قبل فوات الأوان.',
    7,
    Icons.phishing_outlined,
    [
      H('ما هو التصيّد'),
      P('التصيّد (Phishing) هو محاولة خداعك لتكشف معلومات حساسة (كلمة سر، رقم بطاقة) عبر التظاهر بجهة موثوقة: بنك، شركة، أو حتى صديق تم اختراق حسابه.'),
      H('علامات تكشف الرسالة المزيّفة'),
      L([
        'إلحاح غير طبيعي: "حسابك سيُغلق خلال ساعة" لدفعك للتسرع دون تفكير.',
        'رابط يبدو مشابهًا لكنه مختلف قليلًا (مثل باي-بال.com بدل paypal.com).',
        'طلب معلومات لا تطلبها الجهة الحقيقية عادة عبر رسالة أو بريد.',
        'أخطاء إملائية أو تصميم مختلف قليلًا عن الموقع الرسمي المعتاد.',
      ]),
      H('كيف تتحقق قبل أن تضغط'),
      S([
        'لا تضغط الرابط مباشرة؛ افتح الموقع الرسمي بكتابة عنوانه بنفسك.',
        'مرّر إصبعك فوق الرابط (في الحاسوب) لترى العنوان الحقيقي قبل الضغط.',
        'تواصل مع الجهة عبر قناة رسمية معروفة للتأكد، لا عبر الرقم أو الرابط الموجود في الرسالة نفسها.',
      ]),
      Warn('إذا طلبت منك أي جهة كلمة السر كاملة أو رمز التحقق عبر رسالة، فهذا شبه مؤكد أنه احتيال.'),
    ],
    [
      Quiz('ما أبرز علامة على رسالة تصيّد؟', ['الإلحاح الشديد لدفعك للتسرع', 'طول الرسالة', 'وجود صورة شعار', 'إرسالها في الصباح'], 'الإلحاح أسلوب نفسي شائع لمنعك من التفكير والتحقق.'),
      Quiz('ما أفضل طريقة للتحقق من رابط مشبوه؟', ['فتح الموقع الرسمي بكتابة عنوانه بنفسك', 'الضغط عليه مباشرة لتجربته', 'تجاهله دون قراءة', 'إرساله لصديق ليجربه'], 'كتابة العنوان بنفسك يضمن وصولك للموقع الحقيقي لا نسخة مزيّفة.'),
    ],
  ),
  Lesson(
    'd2',
    'الهندسة الاجتماعية: اختراق العقل لا الجهاز',
    'كيف يستغل المحتالون الثقة والعادات البشرية بدل الثغرات التقنية.',
    7,
    Icons.psychology_outlined,
    [
      H('الفكرة'),
      P('أقوى جدار حماية تقني يصبح عديم الفائدة إن استطاع مهاجم إقناع إنسانًا بفتح الباب له طوعًا. الهندسة الاجتماعية تستهدف الثقة والعادات، لا الكود.'),
      H('أساليب شائعة'),
      L([
        'التظاهر بشخصية موثوقة: موظف دعم فني، زميل عمل، أو حتى مدير.',
        'استغلال الفضول: "شاهد هذا الفيديو عنك" مع رابط ضار.',
        'استغلال الرغبة في المساعدة: طلب "مساعدة سريعة" يبدو بريئًا لكنه يكشف معلومة حساسة.',
        'جمع معلومات بسيطة من حساباتك العامة لجعل الخداع أكثر إقناعًا.',
      ]),
      H('كيف تحمي نفسك'),
      S([
        'لا تشارك معلومات حساسة بسبب الضغط أو الاستعجال، مهما بدا الطالب موثوقًا.',
        'تحقق من هوية أي شخص يطلب معلومات حساسة عبر قناة مستقلة.',
        'قلّل ما تنشره علنًا من تفاصيل شخصية يمكن استغلالها لخداعك لاحقًا.',
      ]),
      Note('هذا أحد أكثر أسباب نجاح الاختراقات في العالم الحقيقي، وليس التعقيد التقني.'),
    ],
    [
      Quiz('ما الذي تستهدفه الهندسة الاجتماعية أساسًا؟', ['الثقة والسلوك البشري', 'ثغرات الكود مباشرة', 'سرعة الإنترنت', 'قوة المعالج'], 'هي تستغل طبيعة الإنسان، لا نقاط ضعف تقنية بحتة.'),
      Quiz('ما أفضل حماية من هذا النوع من الهجمات؟', ['التحقق من الهوية عبر قناة مستقلة قبل مشاركة أي معلومة', 'الثقة بكل من يبدو محترفًا', 'الرد السريع لإثبات التعاون', 'تجاهل كل الرسائل'], 'التحقق المستقل يكشف محاولات الانتحال قبل أن تضر.'),
    ],
  ),
  Lesson(
    'd3',
    'حماية هاتفك وحساباتك عمليًا',
    'خطوات بسيطة وفعّالة تطبّقها اليوم على جهازك.',
    8,
    Icons.security_outlined,
    [
      H('إعدادات الهاتف'),
      L([
        'فعّل قفل الشاشة برمز أو بصمة قوية، لا نمط بسيط يُخمَّن بسهولة.',
        'حدّث نظام التشغيل والتطبيقات بانتظام؛ التحديثات غالبًا تسد ثغرات أمنية معروفة.',
        'راجع أذونات التطبيقات: هل يحتاج تطبيق الآلة الحاسبة فعلًا للوصول لجهات اتصالك؟',
        'نزّل التطبيقات من المتجر الرسمي فقط.',
      ]),
      H('إعدادات الحسابات'),
      L([
        'فعّل التحقق بخطوتين في البريد والحسابات المهمة.',
        'استعمل مدير كلمات سر بدل حفظها في الذاكرة أو تكرارها.',
        'راجع دوريًا الأجهزة المسجّلة الدخول في حساباتك، واحذف ما لا تعرفه.',
      ]),
      H('عادات يومية'),
      L([
        'احذر الشبكات اللاسلكية العامة المفتوحة عند إدخال بيانات حساسة.',
        'لا تضغط روابط مجهولة المصدر من رسائل أو واتساب حتى لو بدت من صديق.',
        'اعمل نسخة احتياطية دورية لبياناتك المهمة.',
      ]),
      Tip('جرّب أداة فحص أمانك في التطبيق الآن لتعرف نقاط ضعفك الحالية بالضبط.'),
    ],
    [
      Quiz('لماذا تحديث النظام والتطبيقات مهم أمنيًا؟', ['لأنه غالبًا يسد ثغرات معروفة', 'لتغيير شكل الأيقونات فقط', 'لإبطاء الجهاز عمدًا', 'لا علاقة له بالأمان'], 'الشركات تصدر تحديثات لسد الثغرات التي اكتُشفت، فتجاهلها يُبقي الباب مفتوحًا.'),
      Quiz('ما خطر الشبكات اللاسلكية العامة المفتوحة؟', ['قد يتنصّت عليها طرف آخر على نفس الشبكة', 'تكون دائمًا أسرع', 'تستهلك بطارية أكثر فقط', 'لا خطر منها إطلاقًا'], 'الشبكة المفتوحة بلا تشفير قد تسمح لطرف آخر بمراقبة بياناتك غير المشفّرة.'),
    ],
  ),
];

final List<Course> kBundledCourses = <Course>[
  Course('c1', 'أساسيات الشبكات والويب', 'الأساس الذي تبنى عليه كل معرفة الأمن السيبراني: كيف تعمل الشبكة والمواقع من الداخل.', Icons.hub_outlined, kNetLessons),
  Course('c2', 'ثغرات الويب الشائعة', 'كيف تُكتشف أشهر ثغرات المواقع نظريًا، وكيف تُسد من قبل المطوّرين.', Icons.bug_report_outlined, kWebLessons),
  Course('c3', 'الحماية الشخصية والهندسة الاجتماعية', 'احمِ نفسك وحساباتك وجهازك من أشيع أساليب الاختراق الواقعية.', Icons.shield_outlined, kDefLessons),
];

const List<Soon> kSoon = <Soon>[
  Soon('معمل تدريب تفاعلي', 'بيئة معزولة داخل التطبيق تتدرب فيها بأمان على ما تعلمته.', Icons.terminal),
  Soon('أمن الشبكات اللاسلكية', 'كيف تُؤمَّن شبكات الواي فاي وتُكتشف نقاط ضعفها نظريًا.', Icons.wifi_tethering),
  Soon('الاستجابة للحوادث', 'ماذا تفعل خطوة بخطوة إن تم اختراق حساب أو جهاز بالفعل.', Icons.emergency_outlined),
];
EOF_FILE_8
cat > 'lib/main.dart' <<'EOF_FILE_9'
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'remote.dart';
import 'screens/shell.dart';
import 'store.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Progress.i.load();
  await Content.i.init();
  Content.i.refresh();
  runApp(const CyberApp());
}

class CyberApp extends StatelessWidget {
  const CyberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agaa Cyber',
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      themeMode: ThemeMode.system,
      home: const Shell(),
    );
  }
}
EOF_FILE_9
cat > 'lib/pro.dart' <<'EOF_FILE_10'
import 'package:flutter/material.dart';

import 'remote.dart';
import 'theme.dart';
import 'widgets.dart';

const String kBuyText = 'أريد كود تفعيل لدورات Agaa Cyber المدفوعة.';

Future<void> askCode(BuildContext context) async {
  final ctl = TextEditingController();
  final ok = await showDialog<bool>(
    context: context,
    builder: (ctx) {
      var busy = false;
      String? err;
      return StatefulBuilder(
        builder: (ctx, set) => AlertDialog(
          title: const Text('تفعيل الدروس المدفوعة'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: ctl,
                textDirection: TextDirection.ltr,
                textCapitalization: TextCapitalization.characters,
                decoration: const InputDecoration(hintText: 'CY-XXXX-XXXX', border: OutlineInputBorder()),
              ),
              if (err != null) Padding(padding: const EdgeInsets.only(top: 8), child: Text(err!, style: TextStyle(color: ctx.pal.bad))),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('إلغاء')),
            TextButton(
              onPressed: busy
                  ? null
                  : () async {
                      set(() {
                        busy = true;
                        err = null;
                      });
                      final r = await Content.i.redeem(ctl.text.trim());
                      if (r) {
                        if (ctx.mounted) Navigator.pop(ctx, true);
                      } else {
                        set(() {
                          busy = false;
                          err = 'الكود غير صحيح أو مستعمل على جهاز آخر، أو لا يوجد اتصال.';
                        });
                      }
                    },
              child: Text(busy ? 'جارٍ التحقق…' : 'تفعيل'),
            ),
          ],
        ),
      );
    },
  );
  if (ok == true && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('تم التفعيل. شكرًا لدعمك!')));
  }
}

class PaywallBox extends StatelessWidget {
  final String title;
  const PaywallBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Surface(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Icon(Icons.lock_outline, size: 40, color: pal.accent),
          const SizedBox(height: 10),
          Text('هذا درس مدفوع', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: pal.text)),
          const SizedBox(height: 6),
          Text('«$title» ضمن الدورات المتقدمة. اطلب كود التفعيل عبر واتساب، وتستلمه بعد التأكد من الدفع.', textAlign: TextAlign.center, style: TextStyle(color: pal.sub, height: 1.7)),
          const SizedBox(height: 16),
          FilledButton.icon(
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(50), backgroundColor: pal.accent, foregroundColor: const Color(0xFF071209)),
            onPressed: () => openWhatsApp(context, kBuyText),
            icon: const Icon(Icons.chat),
            label: const Text('اشترِ الكود عبر واتساب'),
          ),
          TextButton(onPressed: () => askCode(context), child: const Text('عندي كود تفعيل')),
        ],
      ),
    );
  }
}
EOF_FILE_10
cat > 'lib/remote.dart' <<'EOF_FILE_11'
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'content.dart';

const String kApi = 'https://mvxlungjoesgrgiouher.supabase.co/rest/v1/rpc/';
const String kKey = 'sb_publishable_D4aEnegGhIBiO3EyrEAS-Q_Ijy_-WIr';

Future<dynamic> cyRpc(String fn, Map<String, dynamic> body) async {
  final c = HttpClient()..connectionTimeout = const Duration(seconds: 12);
  try {
    final req = await c.postUrl(Uri.parse('$kApi$fn'));
    req.headers.set('apikey', kKey);
    req.headers.set('Content-Type', 'application/json');
    req.add(utf8.encode(jsonEncode(body)));
    final res = await req.close().timeout(const Duration(seconds: 20));
    final txt = await res.transform(utf8.decoder).join();
    if (res.statusCode >= 300) throw HttpException('http ${res.statusCode}');
    return jsonDecode(txt);
  } finally {
    c.close(force: true);
  }
}

const Map<String, IconData> _icons = {
  'hub': Icons.hub_outlined,
  'dns': Icons.dns_outlined,
  'lock': Icons.lock_outline,
  'web': Icons.web_outlined,
  'storage': Icons.storage_outlined,
  'code': Icons.code_outlined,
  'password': Icons.password_outlined,
  'phishing': Icons.phishing_outlined,
  'psychology': Icons.psychology_outlined,
  'security': Icons.security_outlined,
  'bug': Icons.bug_report_outlined,
  'shield': Icons.shield_outlined,
  'terminal': Icons.terminal,
  'wifi': Icons.wifi_tethering,
  'emergency': Icons.emergency_outlined,
  'menu_book': Icons.menu_book,
};

IconData iconFor(String? n) => _icons[n] ?? Icons.menu_book;

BT _bt(String t) {
  switch (t) {
    case 'h':
      return BT.h;
    case 'list':
      return BT.list;
    case 'steps':
      return BT.steps;
    case 'tip':
      return BT.tip;
    case 'warn':
      return BT.warn;
    case 'note':
      return BT.note;
    case 'img':
      return BT.img;
    default:
      return BT.p;
  }
}

List<Blk> _blocks(dynamic raw) {
  final out = <Blk>[];
  if (raw is! List) return out;
  for (final b in raw) {
    if (b is! Map) continue;
    final t = _bt('${b['t']}');
    final items = <String>[];
    if (b['i'] is List) {
      for (final x in b['i'] as List) {
        items.add('$x');
      }
    }
    if (t == BT.img) {
      out.add(Blk(t, '${b['u'] ?? ''}', <String>['${b['c'] ?? ''}']));
    } else {
      out.add(Blk(t, '${b['x'] ?? ''}', items));
    }
  }
  return out;
}

List<Quiz> _quiz(dynamic raw) {
  final out = <Quiz>[];
  if (raw is! List) return out;
  for (final q in raw) {
    if (q is! Map || q['o'] is! List) continue;
    final o = <String>[for (final x in q['o'] as List) '$x'];
    if (o.length < 2) continue;
    out.add(Quiz('${q['q']}', o, '${q['w'] ?? ''}'));
  }
  return out;
}

/// المحتوى: المدمج في التطبيق + ما يضيفه المشرف من لوحة التحكم (يُحفظ للعمل دون إنترنت).
class Content extends ChangeNotifier {
  static final Content i = Content._();
  Content._();

  List<Course> courses = kBundledCourses;
  bool pro = false;
  String dev = '';
  bool online = false;
  SharedPreferences? _p;

  List<Lesson> get lessons => <Lesson>[for (final c in courses) ...c.lessons];

  Lesson? byId(String id) {
    for (final l in lessons) {
      if (l.id == id) return l;
    }
    return null;
  }

  Course? courseOf(String lessonId) {
    for (final c in courses) {
      for (final l in c.lessons) {
        if (l.id == lessonId) return c;
      }
    }
    return null;
  }

  Future<void> init() async {
    try {
      final p = await SharedPreferences.getInstance();
      _p = p;
      var d = p.getString('dev');
      if (d == null || d.length < 8) {
        final r = Random.secure();
        d = List<String>.generate(20, (_) => r.nextInt(16).toRadixString(16)).join();
        await p.setString('dev', d);
      }
      dev = d;
      final cached = p.getString('cy_cache');
      if (cached != null) _apply(jsonDecode(cached));
    } catch (_) {}
  }

  Future<bool> refresh() async {
    try {
      final j = await cyRpc('cy_content', {'p_dev': dev});
      _apply(j);
      online = true;
      try {
        await _p?.setString('cy_cache', jsonEncode(j));
      } catch (_) {}
      notifyListeners();
      return true;
    } catch (_) {
      online = false;
      return false;
    }
  }

  Future<bool> redeem(String code) async {
    try {
      final ok = await cyRpc('cy_redeem', {'p_code': code, 'p_dev': dev});
      if (ok == true) {
        await refresh();
        return true;
      }
    } catch (_) {}
    return false;
  }

  void _apply(dynamic j) {
    if (j is! Map) return;
    pro = j['pro'] == true;
    final remote = j['courses'];
    final base = <Course>[...kBundledCourses];
    if (remote is List) {
      for (final rc in remote) {
        if (rc is! Map) continue;
        final cid = '${rc['id']}';
        final cp = rc['premium'] == true;
        final idx = base.indexWhere((c) => c.id == cid);
        final old = idx >= 0 ? base[idx] : null;
        final byId = <String, Lesson>{for (final l in (old?.lessons ?? <Lesson>[])) l.id: l};
        final order = <String>[for (final l in (old?.lessons ?? <Lesson>[])) l.id];
        final rls = rc['lessons'];
        if (rls is List) {
          for (final rl in rls) {
            if (rl is! Map) continue;
            final id = '${rl['id']}';
            final lock = rl['locked'] == true;
            byId[id] = Lesson(
              id,
              '${rl['title']}',
              '${rl['summary'] ?? ''}',
              (rl['mins'] is num) ? (rl['mins'] as num).toInt() : 5,
              iconFor('${rl['icon']}'),
              _blocks(rl['body']),
              _quiz(rl['quiz']),
              reviewed: rl['reviewed'] == true,
              premium: rl['premium'] == true,
              locked: lock,
            );
            if (!order.contains(id)) order.add(id);
          }
        }
        final c = Course(
          cid,
          '${rc['title']}',
          '${rc['descr'] ?? ''}',
          iconFor('${rc['icon']}'),
          <Lesson>[for (final id in order) byId[id]!],
          premium: cp,
        );
        if (idx >= 0) {
          base[idx] = c;
        } else {
          base.add(c);
        }
      }
    }
    courses = base;
  }
}
EOF_FILE_11
mkdir -p 'lib/screens'
cat > 'lib/screens/about.dart' <<'EOF_FILE_12'
import 'package:flutter/material.dart';

import '../pro.dart';
import '../remote.dart';
import '../store.dart';
import '../widgets.dart';
import '../theme.dart';
import 'cert.dart';
import 'glossary.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return ListenableBuilder(
      listenable: Listenable.merge([Progress.i, Content.i]),
      builder: (context, _) {
        final all = Content.i.lessons.where((l) => !l.locked).toList();
        final total = all.length;
        final done = all.where((l) => Progress.i.isDone(l.id)).length;
        var qs = 0;
        var qt = 0;
        for (final l in all) {
          final b = Progress.i.best[l.id];
          if (b != null) {
            qs += b;
            qt += l.quiz.length;
          }
        }
        final pct = qt == 0 ? '—' : '${(qs * 100 / qt).round()}٪';
        return SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
            children: [
              Row(
                children: [
                  const LogoMark(size: 52),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Agaa Cyber', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: pal.text)),
                        Text('الإصدار 1.0.0', style: TextStyle(color: pal.sub)),
                      ],
                    ),
                  ),
                ],
              ),
              sectionTitle(context, 'تقدّمك'),
              Row(
                children: [
                  Expanded(child: _Stat(value: '$done / $total', label: 'دروس مكتملة', color: pal.accent)),
                  const SizedBox(width: 12),
                  Expanded(child: _Stat(value: pct, label: 'متوسط الاختبارات', color: pal.accent2)),
                ],
              ),
              const SizedBox(height: 14),
              _Row(icon: Icons.menu_book_outlined, title: 'قاموس المصطلحات', sub: 'CVE وZero-day وPhishing وغيرها', onTap: () => Navigator.of(context).push(smoothRoute<void>(const GlossaryPage()))),
              const SizedBox(height: 10),
              _Row(icon: Icons.workspace_premium_outlined, title: 'شهاداتي', sub: 'شهادة عند إنهاء كل دورة', onTap: () => Navigator.of(context).push(smoothRoute<void>(const CertListPage()))),
              const SizedBox(height: 10),
              _Row(
                icon: Content.i.pro ? Icons.verified : Icons.key_outlined,
                title: Content.i.pro ? 'الدروس المدفوعة مفعّلة' : 'تفعيل الدروس المدفوعة',
                sub: Content.i.pro ? 'شكرًا لدعمك' : 'أدخل كود التفعيل أو اشترِه عبر واتساب',
                onTap: Content.i.pro ? null : () => askCode(context),
              ),
              sectionTitle(context, 'عن التطبيق'),
              Surface(
                child: Text(
                  'Agaa Cyber تطبيق لتعليم الأمن السيبراني من الصفر بالعربية: مفاهيم الشبكات والويب، أشهر الثغرات نظريًا، والحماية الشخصية الواقعية، مع أدوات حقيقية تعمل على جهازك. المحتوى يخضع لمراجعة فنية من مختص قبل اعتماده.',
                  style: TextStyle(height: 1.8, color: pal.text),
                ),
              ),
              const SizedBox(height: 12),
              Surface(
                onTap: () => openWhatsApp(context, 'مرحباً، عندي اقتراح أو ملاحظة على تطبيق Agaa Cyber: '),
                child: Row(
                  children: [
                    Icon(Icons.chat_outlined, color: pal.accent),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('اقترح درسًا أو أبلغ عن خطأ', style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                          Text('عبر واتساب', style: TextStyle(fontSize: 12, color: pal.sub)),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_left, color: pal.sub),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Surface(
                onTap: () => _confirmReset(context),
                child: Row(
                  children: [
                    Icon(Icons.restart_alt, color: pal.bad),
                    const SizedBox(width: 12),
                    Text('مسح تقدّمي', style: TextStyle(fontWeight: FontWeight.w700, color: pal.bad)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _confirmReset(BuildContext context) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('مسح التقدّم؟'),
        content: const Text('سيُحذف سجل الدروس المكتملة ونتائج الاختبارات على هذا الجهاز.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('إلغاء')),
          TextButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('مسح')),
        ],
      ),
    );
    if (ok == true) await Progress.i.reset();
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;
  final Color color;
  const _Stat({required this.value, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Surface(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: color)),
          const SizedBox(height: 2),
          Text(label, style: TextStyle(fontSize: 12.5, color: pal.sub)),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  final VoidCallback? onTap;
  const _Row({required this.icon, required this.title, required this.sub, this.onTap});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Surface(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: pal.accent),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                Text(sub, style: TextStyle(fontSize: 12, color: pal.sub)),
              ],
            ),
          ),
          if (onTap != null) Icon(Icons.chevron_left, color: pal.sub),
        ],
      ),
    );
  }
}
EOF_FILE_12
cat > 'lib/screens/cert.dart' <<'EOF_FILE_13'
import 'package:flutter/material.dart';

import '../content.dart';
import '../remote.dart';
import '../store.dart';
import '../theme.dart';
import '../widgets.dart';

class CertListPage extends StatelessWidget {
  const CertListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Scaffold(
      appBar: AppBar(title: const Text('الشهادات', style: TextStyle(fontWeight: FontWeight.w700))),
      body: ListenableBuilder(
        listenable: Listenable.merge([Progress.i, Content.i]),
        builder: (context, _) {
          return ListView(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
            children: [
              Text('تحصل على شهادة عند إنهاء كل دروس الدورة.', style: TextStyle(color: pal.sub, height: 1.7)),
              const SizedBox(height: 14),
              for (final c in Content.i.courses)
                Builder(builder: (context) {
                  final open = c.lessons.where((l) => !l.locked).toList();
                  final done = open.where((l) => Progress.i.isDone(l.id)).length;
                  final ok = open.isNotEmpty && done == open.length && open.length == c.lessons.length;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Surface(
                      onTap: ok ? () => Navigator.of(context).push(smoothRoute<void>(CertPage(course: c))) : null,
                      child: Row(
                        children: [
                          Icon(ok ? Icons.workspace_premium : Icons.lock_outline, color: ok ? pal.accent : pal.sub),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(c.title, style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                                Text(ok ? 'جاهزة للعرض' : '$done من ${c.lessons.length} دروس', style: TextStyle(fontSize: 12, color: pal.sub)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            ],
          );
        },
      ),
    );
  }
}

class CertPage extends StatefulWidget {
  final Course course;
  const CertPage({super.key, required this.course});
  @override
  State<CertPage> createState() => _CertPageState();
}

class _CertPageState extends State<CertPage> {
  final TextEditingController _c = TextEditingController();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final d = DateTime.now();
    final date = '${d.year}/${d.month}/${d.day}';
    return Scaffold(
      appBar: AppBar(title: const Text('شهادة إتمام', style: TextStyle(fontWeight: FontWeight.w700))),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
        children: [
          TextField(
            controller: _c,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(hintText: 'اكتب اسمك', border: OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: pal.card,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: pal.accent, width: 2),
            ),
            child: Column(
              children: [
                const LogoMark(size: 56),
                const SizedBox(height: 12),
                Text('شهادة إتمام', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: pal.accent)),
                const SizedBox(height: 14),
                Text('يشهد تطبيق Agaa Cyber أن', style: TextStyle(color: pal.sub)),
                const SizedBox(height: 8),
                Text(_c.text.trim().isEmpty ? '........' : _c.text.trim(), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: pal.text)),
                const SizedBox(height: 8),
                Text('أتمّ دورة', style: TextStyle(color: pal.sub)),
                const SizedBox(height: 6),
                Text(widget.course.title, textAlign: TextAlign.center, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: pal.text)),
                const SizedBox(height: 14),
                Text(date, style: TextStyle(color: pal.sub)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text('التقط صورة للشاشة لحفظ الشهادة أو مشاركتها.', style: TextStyle(color: pal.sub, fontSize: 12.5)),
        ],
      ),
    );
  }
}
EOF_FILE_13
cat > 'lib/screens/courses.dart' <<'EOF_FILE_14'
import 'package:flutter/material.dart';

import '../content.dart';
import '../remote.dart';
import '../store.dart';
import '../theme.dart';
import '../widgets.dart';
import 'lesson.dart';
import 'search.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return ListenableBuilder(
      listenable: Listenable.merge([Progress.i, Content.i]),
      builder: (context, _) {
        final all = Content.i.lessons.where((l) => !l.locked).toList();
        final total = all.length;
        final done = all.where((l) => Progress.i.isDone(l.id)).length;
        Lesson? next;
        for (final l in all) {
          if (!Progress.i.isDone(l.id)) {
            next = l;
            break;
          }
        }
        final lastId = Progress.i.last;
        final lastL = lastId == null ? null : Content.i.byId(lastId);
        final cont = (lastL != null && !lastL.locked && !Progress.i.isDone(lastL.id)) ? lastL : next;
        return SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
            children: [
              Row(
                children: [
                  const LogoMark(),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Agaa Cyber', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: pal.text)),
                        Text('تعلّم الأمن السيبراني من الصفر', style: TextStyle(color: pal.sub)),
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: 'بحث',
                    onPressed: () => Navigator.of(context).push(smoothRoute<void>(const SearchPage())),
                    icon: Icon(Icons.search, color: pal.text),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              _Hero(cont: cont, done: done, total: total),
              sectionTitle(context, 'الدورات', trailing: '$done من $total دروس'),
              for (final c in Content.i.courses) _CourseCard(course: c),
              sectionTitle(context, 'قريبًا'),
              for (final s in kSoon) _SoonCard(s: s),
              const SizedBox(height: 18),
              Text(
                'المحتوى تعليمي بحت لحمايتك ولفهم المفاهيم، ولا يقدّم أدوات اختراق جاهزة للاستخدام ضد أي جهة.',
                style: TextStyle(fontSize: 12, color: pal.sub, height: 1.6),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Hero extends StatelessWidget {
  final Lesson? cont;
  final int done;
  final int total;
  const _Hero({required this.cont, required this.done, required this.total});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    const ink = Color(0xFF071209);
    final l = cont;
    final started = done > 0 || Progress.i.last != null;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [pal.accent, pal.accent2],
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: l == null
          ? const Row(
              children: [
                Icon(Icons.verified, color: ink, size: 32),
                SizedBox(width: 12),
                Expanded(
                  child: Text('أتممت كل الدروس المتاحة. أحسنت! دورات جديدة قادمة قريبًا.',
                      style: TextStyle(color: ink, fontWeight: FontWeight.w700, fontSize: 16, height: 1.5)),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(started ? 'تابع من حيث توقفت' : 'ابدأ رحلتك',
                    style: const TextStyle(color: ink, fontWeight: FontWeight.w600)),
                const SizedBox(height: 6),
                Text(l.title, style: const TextStyle(color: ink, fontSize: 24, fontWeight: FontWeight.w800)),
                const SizedBox(height: 4),
                Text(l.summary, style: const TextStyle(color: ink, height: 1.5)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    FilledButton(
                      style: FilledButton.styleFrom(backgroundColor: ink, foregroundColor: Colors.white),
                      onPressed: () => Navigator.of(context).push(smoothRoute<void>(LessonPage(lesson: l))),
                      child: Text(started ? 'تابع الدرس' : 'ابدأ الدرس الأول'),
                    ),
                    const Spacer(),
                    Text('$done / $total', style: const TextStyle(color: ink, fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
            ),
    );
  }
}

class _CourseCard extends StatelessWidget {
  final Course course;
  const _CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final n = course.lessons.length;
    final d = course.lessons.where((l) => Progress.i.isDone(l.id)).length;
    return Surface(
      onTap: () => Navigator.of(context).push(smoothRoute<void>(CoursePage(course: course))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(color: pal.accent.withAlpha(36), borderRadius: BorderRadius.circular(14)),
                child: Icon(course.icon, color: pal.accent),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(course.title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: pal.text)),
              ),
              if (course.premium) Padding(padding: const EdgeInsetsDirectional.only(end: 6), child: Pill('مدفوعة', pal.accent, icon: Icons.workspace_premium)),
              Icon(Icons.chevron_left, color: pal.sub),
            ],
          ),
          const SizedBox(height: 10),
          Text(course.desc, style: TextStyle(color: pal.sub, height: 1.6)),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              value: n == 0 ? 0 : d / n,
              minHeight: 6,
              backgroundColor: pal.card2,
              color: pal.accent,
            ),
          ),
          const SizedBox(height: 8),
          Text('$d من $n دروس', style: TextStyle(fontSize: 12, color: pal.sub)),
        ],
      ),
    );
  }
}

class _SoonCard extends StatelessWidget {
  final Soon s;
  const _SoonCard({required this.s});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Opacity(
        opacity: 0.78,
        child: Surface(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: pal.card2, borderRadius: BorderRadius.circular(12)),
                child: Icon(s.icon, color: pal.sub, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(s.title, style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                    const SizedBox(height: 2),
                    Text(s.desc, style: TextStyle(fontSize: 12, color: pal.sub)),
                  ],
                ),
              ),
              Pill('قريبًا', pal.accent2, icon: Icons.lock_outline),
            ],
          ),
        ),
      ),
    );
  }
}

class CoursePage extends StatelessWidget {
  final Course base;
  const CoursePage({super.key, required Course course}) : base = course;

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Scaffold(
      appBar: AppBar(title: Text(base.title, style: const TextStyle(fontWeight: FontWeight.w700))),
      body: ListenableBuilder(
        listenable: Listenable.merge([Progress.i, Content.i]),
        builder: (context, _) {
          final course = Content.i.courses.firstWhere((c) => c.id == base.id, orElse: () => base);
          final n = course.lessons.length;
          final d = course.lessons.where((l) => Progress.i.isDone(l.id)).length;
          return ListView(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
            children: [
              Text(course.desc, style: TextStyle(color: pal.sub, height: 1.7)),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(99),
                      child: LinearProgressIndicator(
                        value: n == 0 ? 0 : d / n,
                        minHeight: 8,
                        backgroundColor: pal.card2,
                        color: pal.accent,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text('$d / $n', style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                ],
              ),
              const SizedBox(height: 18),
              for (var i = 0; i < course.lessons.length; i++) _LessonTile(index: i, lesson: course.lessons[i]),
            ],
          );
        },
      ),
    );
  }
}

class _LessonTile extends StatelessWidget {
  final int index;
  final Lesson lesson;
  const _LessonTile({required this.index, required this.lesson});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final done = Progress.i.isDone(lesson.id);
    final best = Progress.i.best[lesson.id];
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Surface(
        padding: const EdgeInsets.all(14),
        onTap: () => Navigator.of(context).push(smoothRoute<void>(LessonPage(lesson: lesson))),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: done ? pal.good.withAlpha(40) : pal.card2,
              ),
              child: done
                  ? Icon(Icons.check, color: pal.good, size: 20)
                  : Text('${index + 1}', style: TextStyle(fontWeight: FontWeight.w800, color: pal.sub)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lesson.title, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.5, color: pal.text)),
                  const SizedBox(height: 3),
                  Text(lesson.summary, style: TextStyle(fontSize: 12.5, color: pal.sub, height: 1.5)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      Pill('${lesson.min} دقائق', pal.accent2, icon: Icons.schedule),
                      if (lesson.locked) Pill('مدفوع', pal.accent, icon: Icons.lock_outline),
                      if (best != null) Pill('الاختبار $best / ${lesson.quiz.length}', pal.good, icon: Icons.emoji_events_outlined),
                      if (!lesson.reviewed) Pill('قيد المراجعة الفنية', pal.warn),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
EOF_FILE_14
cat > 'lib/screens/glossary.dart' <<'EOF_FILE_15'
import 'package:flutter/material.dart';

import '../theme.dart';
import '../tools_data.dart';
import '../widgets.dart';

class GlossaryPage extends StatefulWidget {
  const GlossaryPage({super.key});
  @override
  State<GlossaryPage> createState() => _GlossaryPageState();
}

class _GlossaryPageState extends State<GlossaryPage> {
  String _q = '';

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final q = _q.trim().toLowerCase();
    final list = kGlossary.where((t) => q.isEmpty || t.en.toLowerCase().contains(q) || t.ar.contains(q) || t.def.contains(q)).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('قاموس المصطلحات', style: TextStyle(fontWeight: FontWeight.w700))),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
        children: [
          TextField(
            onChanged: (v) => setState(() => _q = v),
            decoration: InputDecoration(
              hintText: 'ابحث عن مصطلح',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 14),
          for (final t in list)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Surface(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(t.en, textDirection: TextDirection.ltr, style: TextStyle(fontWeight: FontWeight.w800, color: pal.accent, fontSize: 16)),
                        const SizedBox(width: 10),
                        Expanded(child: Text(t.ar, style: TextStyle(fontWeight: FontWeight.w700, color: pal.text))),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(t.def, style: TextStyle(color: pal.sub, height: 1.7)),
                  ],
                ),
              ),
            ),
          if (list.isEmpty) Padding(padding: const EdgeInsets.only(top: 30), child: Center(child: Text('لا توجد نتائج', style: TextStyle(color: pal.sub)))),
        ],
      ),
    );
  }
}
EOF_FILE_15
cat > 'lib/screens/lesson.dart' <<'EOF_FILE_16'
import 'dart:math';

import 'package:flutter/material.dart';

import '../content.dart';
import '../pro.dart';
import '../remote.dart';
import '../store.dart';
import '../theme.dart';
import '../widgets.dart';

class LessonPage extends StatefulWidget {
  final Lesson lesson;
  const LessonPage({super.key, required this.lesson});
  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  void initState() {
    super.initState();
    Progress.i.open(widget.lesson.id);
  }

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final l = Content.i.byId(widget.lesson.id) ?? widget.lesson;
    final course = Content.i.courseOf(l.id);
    final sib = course?.lessons ?? <Lesson>[l];
    final idx = sib.indexWhere((x) => x.id == l.id);
    final next = (idx >= 0 && idx + 1 < sib.length) ? sib[idx + 1] : null;
    return Scaffold(
      appBar: AppBar(
        title: Text('الدرس ${idx + 1}', style: TextStyle(fontSize: 15, color: pal.sub)),
        actions: [
          IconButton(
            tooltip: 'أبلغ عن خطأ في الدرس',
            icon: const Icon(Icons.flag_outlined),
            onPressed: () => openWhatsApp(context, 'ملاحظة على درس «${l.title}» في Agaa Cyber: '),
          ),
        ],
      ),
      body: ListenableBuilder(
        listenable: Listenable.merge([Progress.i, Content.i]),
        builder: (context, _) {
          final done = Progress.i.isDone(l.id);
          if (l.locked) {
            return ListView(padding: const EdgeInsets.all(20), children: [
              Text(l.title, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: pal.text)),
              const SizedBox(height: 6),
              Text(l.summary, style: TextStyle(color: pal.sub, height: 1.6)),
              const SizedBox(height: 18),
              PaywallBox(title: l.title),
            ]);
          }
          return ListView(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 40),
            children: [
              Container(
                width: 56,
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: pal.accent.withAlpha(36), borderRadius: BorderRadius.circular(16)),
                child: Icon(l.icon, color: pal.accent, size: 28),
              ),
              const SizedBox(height: 14),
              Text(l.title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, height: 1.3, color: pal.text)),
              const SizedBox(height: 6),
              Text(l.summary, style: TextStyle(color: pal.sub, height: 1.6)),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Pill('${l.min} دقائق', pal.accent2, icon: Icons.schedule),
                  if (l.reviewed) Pill('تمت المراجعة الفنية', pal.good, icon: Icons.verified_outlined) else Pill('قيد المراجعة الفنية', pal.warn, icon: Icons.rate_review_outlined),
                ],
              ),
              const SizedBox(height: 8),
              for (final b in l.body) _BlockView(b: b),
              const SizedBox(height: 26),
              QuizCard(lesson: l),
              const SizedBox(height: 22),
              if (!done)
                FilledButton.icon(
                  style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52), backgroundColor: pal.accent, foregroundColor: const Color(0xFF071209)),
                  onPressed: () => Progress.i.complete(l.id),
                  icon: const Icon(Icons.check),
                  label: const Text('أنهيت الدرس', style: TextStyle(fontWeight: FontWeight.w700)),
                )
              else
                Surface(
                  color: pal.good.withAlpha(28),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle, color: pal.good),
                      const SizedBox(width: 10),
                      Text('أكملت هذا الدرس', style: TextStyle(color: pal.good, fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              if (next != null) ...[
                const SizedBox(height: 12),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(50), foregroundColor: pal.text, side: BorderSide(color: pal.line)),
                  onPressed: () => Navigator.of(context).pushReplacement(smoothRoute<void>(LessonPage(lesson: next))),
                  child: Text('الدرس التالي: ${next.title}'),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _BlockView extends StatelessWidget {
  final Blk b;
  const _BlockView({required this.b});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    switch (b.t) {
      case BT.h:
        return Padding(
          padding: const EdgeInsets.only(top: 26, bottom: 10),
          child: Text(b.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: pal.text)),
        );
      case BT.p:
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(b.text, style: TextStyle(fontSize: 16, height: 1.9, color: pal.text)),
        );
      case BT.list:
        return Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Column(
            children: [
              for (final s in b.items)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Container(width: 7, height: 7, decoration: BoxDecoration(color: pal.accent, shape: BoxShape.circle)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Text(s, style: TextStyle(fontSize: 15.5, height: 1.8, color: pal.text))),
                    ],
                  ),
                ),
            ],
          ),
        );
      case BT.steps:
        return Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Column(
            children: [
              for (var i = 0; i < b.items.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: pal.accent2.withAlpha(36), shape: BoxShape.circle),
                        child: Text('${i + 1}', style: TextStyle(fontWeight: FontWeight.w800, color: pal.accent2)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(b.items[i], style: TextStyle(fontSize: 15.5, height: 1.8, color: pal.text)),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      case BT.tip:
        return _Callout(icon: Icons.lightbulb_outline, label: 'نصيحة', color: pal.accent2, text: b.text);
      case BT.warn:
        return _Callout(icon: Icons.warning_amber_rounded, label: 'تنبيه', color: pal.bad, text: b.text);
      case BT.note:
        return _Callout(icon: Icons.info_outline, label: 'ملاحظة', color: pal.sub, text: b.text);
      case BT.img:
        return _ImgBlock(url: b.text, caption: b.items.isEmpty ? '' : b.items.first);
    }
  }
}

class _ImgBlock extends StatelessWidget {
  final String url;
  final String caption;
  const _ImgBlock({required this.url, required this.caption});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => _Zoom(url: url, caption: caption))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                url,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (c, w, p) => p == null ? w : Container(height: 180, color: pal.card2, alignment: Alignment.center, child: const CircularProgressIndicator()),
                errorBuilder: (c, e, s) => Container(height: 120, color: pal.card2, alignment: Alignment.center, child: Text('تعذّر تحميل الصورة', style: TextStyle(color: pal.sub))),
              ),
            ),
          ),
          if (caption.isNotEmpty) Padding(padding: const EdgeInsets.only(top: 6), child: Text(caption, style: TextStyle(fontSize: 13, color: pal.sub, height: 1.5))),
        ],
      ),
    );
  }
}

class _Zoom extends StatelessWidget {
  final String url;
  final String caption;
  const _Zoom({required this.url, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, foregroundColor: Colors.white, title: Text(caption, style: const TextStyle(fontSize: 14))),
      body: Center(child: InteractiveViewer(maxScale: 6, child: Image.network(url))),
    );
  }
}

class _Callout extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final String text;
  const _Callout({required this.icon, required this.label, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Container(
      margin: const EdgeInsets.only(top: 18),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color.withAlpha(26), borderRadius: BorderRadius.circular(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: TextStyle(fontWeight: FontWeight.w800, color: color)),
                const SizedBox(height: 4),
                Text(text, style: TextStyle(height: 1.8, color: pal.text, fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuizCard extends StatefulWidget {
  final Lesson lesson;
  const QuizCard({super.key, required this.lesson});
  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int _i = 0;
  int _score = 0;
  int? _picked;
  bool _finished = false;
  late List<List<int>> _orders;

  @override
  void initState() {
    super.initState();
    _shuffle();
  }

  void _shuffle() {
    final seed = DateTime.now().millisecondsSinceEpoch;
    _orders = [
      for (var k = 0; k < widget.lesson.quiz.length; k++)
        (List<int>.generate(widget.lesson.quiz[k].opts.length, (x) => x)..shuffle(Random(seed + k * 7919))),
    ];
  }

  void _restart() {
    setState(() {
      _i = 0;
      _score = 0;
      _picked = null;
      _finished = false;
      _shuffle();
    });
  }

  void _pick(int original) {
    if (_picked != null) return;
    setState(() {
      _picked = original;
      if (original == 0) _score++;
    });
  }

  void _next() {
    if (_i + 1 >= widget.lesson.quiz.length) {
      Progress.i.score(widget.lesson.id, _score);
      setState(() => _finished = true);
    } else {
      setState(() {
        _i++;
        _picked = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final qs = widget.lesson.quiz;
    if (qs.isEmpty) return const SizedBox.shrink();
    return Surface(
      padding: const EdgeInsets.all(18),
      child: _finished ? _result(pal, qs.length) : _question(pal, qs),
    );
  }

  Widget _result(Pal pal, int total) {
    final ok = _score * 2 >= total;
    return Column(
      children: [
        Icon(ok ? Icons.emoji_events : Icons.menu_book, size: 44, color: ok ? pal.accent : pal.accent2),
        const SizedBox(height: 10),
        Text('نتيجتك $_score من $total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: pal.text)),
        const SizedBox(height: 6),
        Text(ok ? 'ممتاز، فهمت الدرس جيدًا.' : 'راجع الدرس مرة أخرى ثم أعد الاختبار.', style: TextStyle(color: pal.sub)),
        const SizedBox(height: 14),
        OutlinedButton(
          style: OutlinedButton.styleFrom(foregroundColor: pal.text, side: BorderSide(color: pal.line)),
          onPressed: _restart,
          child: const Text('أعد الاختبار'),
        ),
      ],
    );
  }

  Widget _question(Pal pal, List<Quiz> qs) {
    final q = qs[_i];
    final order = _orders[_i];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.quiz_outlined, color: pal.accent),
            const SizedBox(width: 8),
            Text('اختبر نفسك', style: TextStyle(fontWeight: FontWeight.w800, color: pal.text)),
            const Spacer(),
            Text('${_i + 1} / ${qs.length}', style: TextStyle(color: pal.sub)),
          ],
        ),
        const SizedBox(height: 14),
        Text(q.q, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, height: 1.6, color: pal.text)),
        const SizedBox(height: 12),
        for (final o in order) _option(pal, q, o),
        if (_picked != null) ...[
          const SizedBox(height: 10),
          Text(q.why, style: TextStyle(color: pal.sub, height: 1.7)),
          const SizedBox(height: 12),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: pal.accent, foregroundColor: const Color(0xFF071209)),
            onPressed: _next,
            child: Text(_i + 1 >= qs.length ? 'عرض النتيجة' : 'السؤال التالي'),
          ),
        ],
      ],
    );
  }

  Widget _option(Pal pal, Quiz q, int original) {
    final answered = _picked != null;
    final isRight = original == 0;
    final isPicked = _picked == original;
    Color border = pal.line;
    Color fill = Colors.transparent;
    if (answered && isRight) {
      border = pal.good;
      fill = pal.good.withAlpha(30);
    } else if (answered && isPicked) {
      border = pal.bad;
      fill = pal.bad.withAlpha(30);
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: answered ? null : () => _pick(original),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(color: fill, borderRadius: BorderRadius.circular(14), border: Border.all(color: border)),
          child: Row(
            children: [
              Expanded(child: Text(q.opts[original], style: TextStyle(height: 1.5, color: pal.text))),
              if (answered && isRight) Icon(Icons.check_circle, color: pal.good, size: 20),
              if (answered && isPicked && !isRight) Icon(Icons.cancel, color: pal.bad, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
EOF_FILE_16
cat > 'lib/screens/search.dart' <<'EOF_FILE_17'
import 'package:flutter/material.dart';

import '../content.dart';
import '../remote.dart';
import '../theme.dart';
import '../tools_data.dart';
import '../widgets.dart';
import 'lesson.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _q = '';

  String _text(Lesson l) {
    final b = StringBuffer('${l.title} ${l.summary} ');
    for (final x in l.body) {
      b.write('${x.text} ${x.items.join(' ')} ');
    }
    return b.toString().toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    final q = _q.trim().toLowerCase();
    final ls = q.length < 2 ? <Lesson>[] : Content.i.lessons.where((l) => _text(l).contains(q)).toList();
    final ts = q.length < 2 ? <Term>[] : kGlossary.where((t) => t.en.toLowerCase().contains(q) || t.ar.contains(q) || t.def.contains(q)).toList();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          onChanged: (v) => setState(() => _q = v),
          decoration: const InputDecoration(hintText: 'ابحث في الدروس والمصطلحات', border: InputBorder.none),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
        children: [
          if (q.length < 2) Padding(padding: const EdgeInsets.only(top: 40), child: Center(child: Text('اكتب كلمتين على الأقل', style: TextStyle(color: pal.sub)))),
          if (ls.isNotEmpty) sectionTitle(context, 'الدروس'),
          for (final l in ls)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Surface(
                onTap: () => Navigator.of(context).push(smoothRoute<void>(LessonPage(lesson: l))),
                child: Row(
                  children: [
                    Icon(l.icon, color: pal.accent),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l.title, style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                          Text(l.summary, style: TextStyle(fontSize: 12.5, color: pal.sub)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (ts.isNotEmpty) sectionTitle(context, 'المصطلحات'),
          for (final t in ts)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Surface(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${t.en} - ${t.ar}', style: TextStyle(fontWeight: FontWeight.w800, color: pal.accent)),
                    const SizedBox(height: 4),
                    Text(t.def, style: TextStyle(color: pal.sub, height: 1.6)),
                  ],
                ),
              ),
            ),
          if (q.length >= 2 && ls.isEmpty && ts.isEmpty) Padding(padding: const EdgeInsets.only(top: 40), child: Center(child: Text('لا توجد نتائج', style: TextStyle(color: pal.sub)))),
        ],
      ),
    );
  }
}
EOF_FILE_17
cat > 'lib/screens/secure.dart' <<'EOF_FILE_18'
import 'dart:math';

import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets.dart';

class SecureTab extends StatefulWidget {
  const SecureTab({super.key});
  @override
  State<SecureTab> createState() => _SecureTabState();
}

class _SecureTabState extends State<SecureTab> {
  final TextEditingController _pw = TextEditingController();
  final TextEditingController _url = TextEditingController();
  bool _show = false;

  @override
  void dispose() {
    _pw.dispose();
    _url.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
        children: [
          Text('تحقّق من أمانك', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: pal.text)),
          const SizedBox(height: 4),
          Text('أدوات حقيقية تعمل على جهازك فقط، ولا تُرسل أي شيء تكتبه هنا إلى أي خادم.', style: TextStyle(color: pal.sub, height: 1.6)),
          sectionTitle(context, 'فحص قوة كلمة السر'),
          Surface(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _pw,
                  obscureText: !_show,
                  onChanged: (_) => setState(() {}),
                  style: TextStyle(color: pal.text),
                  decoration: InputDecoration(
                    hintText: 'اكتب كلمة سر لتجربتها (لن تُحفظ)',
                    suffixIcon: IconButton(icon: Icon(_show ? Icons.visibility_off : Icons.visibility, color: pal.sub), onPressed: () => setState(() => _show = !_show)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                if (_pw.text.isNotEmpty) ..._pwResult(pal, _pw.text),
              ],
            ),
          ),
          sectionTitle(context, 'كاشف روابط التصيّد'),
          Surface(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _url,
                  onChanged: (_) => setState(() {}),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: pal.text),
                  decoration: InputDecoration(
                    hintText: 'الصق رابطًا مشبوهًا لتحليله',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                if (_url.text.trim().isNotEmpty) ..._urlResult(pal, _url.text.trim()),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text('هذه الأدوات تحليل مبدئي للتعلّم، وليست بديلًا عن الحذر واستعمال برامج حماية موثوقة.', style: TextStyle(fontSize: 12, color: pal.sub)),
        ],
      ),
    );
  }

  List<Widget> _pwResult(Pal pal, String pw) {
    var score = 0;
    final notes = <String>[];
    if (pw.length >= 12) {
      score += 2;
    } else if (pw.length >= 8) {
      score += 1;
    } else {
      notes.add('قصيرة جدًا: استعمل 12 حرفًا على الأقل.');
    }
    final hasUpper = pw.contains(RegExp(r'[A-Z]'));
    final hasLower = pw.contains(RegExp(r'[a-z]'));
    final hasDigit = pw.contains(RegExp(r'[0-9]'));
    final hasSym = pw.contains(RegExp(r'[^A-Za-z0-9]'));
    final kinds = [hasUpper, hasLower, hasDigit, hasSym].where((x) => x).length;
    score += kinds;
    if (kinds < 3) notes.add('نوّع بين أحرف كبيرة وصغيرة وأرقام ورموز.');
    final common = ['123456', 'password', 'qwerty', '111111', 'abc123', 'admin', '12345678', 'letmein', 'iloveyou', '123123'];
    final low = pw.toLowerCase();
    if (common.any((c) => low.contains(c))) {
      score = max(0, score - 3);
      notes.add('تحتوي نمطًا شائعًا جدًا يسهل تخمينه.');
    }
    if (RegExp(r'(.)\1\1').hasMatch(pw)) {
      score -= 1;
      notes.add('تكرار نفس الحرف ثلاث مرات يضعفها.');
    }
    score = score.clamp(0, 6);
    final labels = ['ضعيفة جدًا', 'ضعيفة', 'متوسطة', 'جيدة', 'قوية', 'قوية جدًا', 'ممتازة'];
    final colors = [pal.bad, pal.bad, pal.warn, pal.warn, pal.good, pal.good, pal.accent];
    final bits = pw.isEmpty ? 0 : (pw.length * (log(max(kinds, 1) * 20) / log(2))).round();
    return [
      const SizedBox(height: 14),
      Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(99),
              child: LinearProgressIndicator(value: score / 6, minHeight: 8, backgroundColor: pal.card2, color: colors[score]),
            ),
          ),
          const SizedBox(width: 10),
          Text(labels[score], style: TextStyle(fontWeight: FontWeight.w800, color: colors[score])),
        ],
      ),
      const SizedBox(height: 8),
      Text('قوة تقديرية ~ $bits بت من العشوائية.', style: TextStyle(fontSize: 12, color: pal.sub)),
      for (final n in notes)
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.info_outline, size: 15, color: pal.warn),
              const SizedBox(width: 6),
              Expanded(child: Text(n, style: TextStyle(fontSize: 13, color: pal.text))),
            ],
          ),
        ),
      if (notes.isEmpty)
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Row(
            children: [
              Icon(Icons.check_circle_outline, size: 15, color: pal.good),
              const SizedBox(width: 6),
              Text('لا توجد ملاحظات واضحة على بنيتها.', style: TextStyle(fontSize: 13, color: pal.text)),
            ],
          ),
        ),
    ];
  }

  List<Widget> _urlResult(Pal pal, String raw) {
    final flags = <String>[];
    var u = raw;
    if (!u.contains('://')) u = 'http://$u';
    Uri? uri;
    try {
      uri = Uri.parse(u);
    } catch (_) {}
    if (uri == null || uri.host.isEmpty) {
      return [const SizedBox(height: 12), Text('تعذّر تحليل هذا كرابط.', style: TextStyle(color: pal.sub))];
    }
    final host = uri.host.toLowerCase();
    if (uri.scheme == 'http') flags.add('الرابط غير مشفّر (http وليس https).');
    if (RegExp(r'^\d{1,3}(\.\d{1,3}){3}$').hasMatch(host)) flags.add('يستعمل رقم IP مباشرة بدل اسم نطاق، وهو أسلوب شائع في التصيّد.');
    final dots = host.split('.').length;
    if (dots >= 4) flags.add('يحتوي نطاقات فرعية كثيرة جدًا قد تُستعمل لتمويه الاسم الحقيقي.');
    final brands = ['paypal', 'facebook', 'google', 'apple', 'instagram', 'whatsapp', 'bank', 'gmail', 'microsoft'];
    final lookalike = ['paypa1', 'faceb00k', 'g00gle', 'app1e', 'lnstagram', 'whatsapp-', 'bank-secure', 'gmai1'];
    for (final b in brands) {
      if (host.contains(b) && !host.endsWith('$b.com') && !host.contains('.$b.com')) {
        flags.add('يحتوي اسم جهة معروفة ($b) لكن ليس نطاقها الرسمي.');
        break;
      }
    }
    for (final l in lookalike) {
      if (host.contains(l)) {
        flags.add('يحتوي تلاعبًا بحروف يشبه اسم جهة معروفة.');
        break;
      }
    }
    if (host.contains('-') && host.split('-').length > 3) flags.add('كثرة الشرطات في اسم النطاق علامة شائعة في المواقع المزيّفة.');
    final tlds = ['.tk', '.ml', '.ga', '.cf', '.gq', '.xyz', '.top'];
    if (tlds.any((t) => host.endsWith(t))) flags.add('النطاق من فئة نطاقات مجانية تُستغل كثيرًا في التصيّد.');

    final ok = flags.isEmpty;
    return [
      const SizedBox(height: 14),
      Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(color: (ok ? pal.good : pal.warn).withAlpha(24), borderRadius: BorderRadius.circular(14)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(ok ? Icons.check_circle_outline : Icons.warning_amber_rounded, color: ok ? pal.good : pal.warn),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ok ? 'لم تظهر علامات واضحة على هذا الرابط' : 'علامات تستدعي الحذر', style: TextStyle(fontWeight: FontWeight.w800, color: pal.text)),
                  const SizedBox(height: 6),
                  Text('النطاق: ${uri.host}', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 12.5, color: pal.sub)),
                  for (final f in flags)
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text('• $f', style: TextStyle(fontSize: 13, color: pal.text, height: 1.5)),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 8),
      Text('تحليل سطحي لشكل الرابط فقط، ولا يفحص محتوى الصفحة الفعلي. عدم ظهور علامات لا يعني أن الموقع آمن بالضرورة.', style: TextStyle(fontSize: 12, color: pal.sub)),
    ];
  }
}
EOF_FILE_18
cat > 'lib/screens/shell.dart' <<'EOF_FILE_19'
import 'package:flutter/material.dart';

import 'about.dart';
import 'courses.dart';
import 'secure.dart';

class Shell extends StatefulWidget {
  const Shell({super.key});
  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int _i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _i,
        children: const [CoursesTab(), SecureTab(), AboutTab()],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _i,
        onDestinationSelected: (v) => setState(() => _i = v),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.school_outlined), selectedIcon: Icon(Icons.school), label: 'الدورات'),
          NavigationDestination(icon: Icon(Icons.security_outlined), selectedIcon: Icon(Icons.security), label: 'تحقّق من أمانك'),
          NavigationDestination(icon: Icon(Icons.info_outline), selectedIcon: Icon(Icons.info), label: 'عن التطبيق'),
        ],
      ),
    );
  }
}
EOF_FILE_19
cat > 'lib/store.dart' <<'EOF_FILE_20'
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// تقدّم المتعلّم محفوظ على الجهاز: الدروس المكتملة ونتائج الاختبارات وآخر درس.
class Progress extends ChangeNotifier {
  static final Progress i = Progress._();
  Progress._();

  SharedPreferences? _p;
  final Set<String> done = <String>{};
  final Map<String, int> best = <String, int>{};
  String? last;

  Future<void> load() async {
    try {
      final p = await SharedPreferences.getInstance();
      _p = p;
      done.addAll(p.getStringList('done') ?? <String>[]);
      last = p.getString('last');
      for (final s in p.getStringList('best') ?? <String>[]) {
        final k = s.split(':');
        if (k.length == 2) best[k[0]] = int.tryParse(k[1]) ?? 0;
      }
    } catch (_) {}
  }

  Future<void> _save() async {
    final p = _p;
    if (p == null) return;
    await p.setStringList('done', done.toList());
    await p.setStringList('best', best.entries.map((e) => '${e.key}:${e.value}').toList());
    if (last != null) await p.setString('last', last!);
  }

  bool isDone(String id) => done.contains(id);

  void open(String id) {
    last = id;
    _save();
  }

  void complete(String id) {
    done.add(id);
    _save();
    notifyListeners();
  }

  void score(String id, int s) {
    if (s > (best[id] ?? -1)) {
      best[id] = s;
      _save();
      notifyListeners();
    }
  }

  Future<void> reset() async {
    done.clear();
    best.clear();
    last = null;
    final p = _p;
    if (p != null) {
      await p.remove('done');
      await p.remove('best');
      await p.remove('last');
    }
    notifyListeners();
  }
}
EOF_FILE_20
cat > 'lib/theme.dart' <<'EOF_FILE_21'
import 'package:flutter/material.dart';

/// لوحة ألوان الأمن السيبراني: كحلي داكن مع أخضر طرفية وسماوي تنبيهي.
class Pal {
  final Color bg;
  final Color card;
  final Color card2;
  final Color line;
  final Color text;
  final Color sub;
  final Color accent;
  final Color accent2;
  final Color good;
  final Color warn;
  final Color bad;
  const Pal({
    required this.bg,
    required this.card,
    required this.card2,
    required this.line,
    required this.text,
    required this.sub,
    required this.accent,
    required this.accent2,
    required this.good,
    required this.warn,
    required this.bad,
  });
}

const Pal kDark = Pal(
  bg: Color(0xFF0A0F14),
  card: Color(0xFF121A22),
  card2: Color(0xFF1A2530),
  line: Color(0xFF263241),
  text: Color(0xFFE7EFF4),
  sub: Color(0xFF8FA3B3),
  accent: Color(0xFF32D77A),
  accent2: Color(0xFF35B8E0),
  good: Color(0xFF3DDC97),
  warn: Color(0xFFFFB020),
  bad: Color(0xFFFF6B6B),
);

const Pal kLight = Pal(
  bg: Color(0xFFF2F6F8),
  card: Color(0xFFFFFFFF),
  card2: Color(0xFFE9EEF2),
  line: Color(0xFFD7E0E7),
  text: Color(0xFF101820),
  sub: Color(0xFF53697A),
  accent: Color(0xFF0E9A58),
  accent2: Color(0xFF0E7FA3),
  good: Color(0xFF138A5B),
  warn: Color(0xFFB36B00),
  bad: Color(0xFFD64545),
);

extension PalX on BuildContext {
  Pal get pal => Theme.of(this).brightness == Brightness.dark ? kDark : kLight;
}

ThemeData buildTheme(Brightness b) {
  final pal = b == Brightness.dark ? kDark : kLight;
  return ThemeData(
    useMaterial3: true,
    brightness: b,
    scaffoldBackgroundColor: pal.bg,
    colorScheme: ColorScheme.fromSeed(seedColor: pal.accent, brightness: b).copyWith(
      primary: pal.accent,
      surface: pal.card,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: pal.bg,
      foregroundColor: pal.text,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: pal.card,
      indicatorColor: pal.accent.withAlpha(46),
      surfaceTintColor: Colors.transparent,
    ),
    dividerColor: pal.line,
  );
}

/// انتقال ناعم بين الشاشات.
Route<T> smoothRoute<T>(Widget page) => PageRouteBuilder<T>(
      pageBuilder: (_, __, ___) => page,
      transitionDuration: const Duration(milliseconds: 260),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, a, __, child) => FadeTransition(
        opacity: CurvedAnimation(parent: a, curve: Curves.easeOut),
        child: SlideTransition(
          position: Tween<Offset>(begin: const Offset(-0.04, 0), end: Offset.zero)
              .animate(CurvedAnimation(parent: a, curve: Curves.easeOutCubic)),
          child: child,
        ),
      ),
    );
EOF_FILE_21
cat > 'lib/tools_data.dart' <<'EOF_FILE_22'
/// بيانات قاموس المصطلحات (مدمجة وتعمل دون إنترنت).

class Term {
  final String en;
  final String ar;
  final String def;
  const Term(this.en, this.ar, this.def);
}

const List<Term> kGlossary = <Term>[
  Term('IP Address', 'عنوان الشبكة', 'معرّف رقمي فريد لكل جهاز على الشبكة.'),
  Term('DNS', 'نظام أسماء النطاقات', 'يترجم أسماء المواقع إلى عناوين IP.'),
  Term('HTTPS', 'بروتوكول آمن', 'نسخة مشفّرة من HTTP تحمي البيانات أثناء النقل.'),
  Term('TLS/SSL', 'طبقة التشفير', 'البروتوكول الذي يشفّر الاتصال خلف HTTPS.'),
  Term('Firewall', 'جدار الحماية', 'نظام يراقب حركة الشبكة ويمنع ما يخالف قواعد محددة.'),
  Term('VPN', 'الشبكة الخاصة الافتراضية', 'تشفّر اتصالك وتخفي عنوانك الحقيقي عبر خادم وسيط.'),
  Term('Malware', 'برمجية خبيثة', 'أي برنامج صُمم لإلحاق ضرر أو تجسس أو سرقة بيانات.'),
  Term('Ransomware', 'برمجية الفدية', 'تشفّر ملفاتك وتطلب مالًا مقابل فك التشفير.'),
  Term('Phishing', 'التصيّد', 'خداع الضحية لكشف معلومات حساسة بانتحال جهة موثوقة.'),
  Term('Social Engineering', 'الهندسة الاجتماعية', 'استغلال الثقة والسلوك البشري بدل الثغرات التقنية.'),
  Term('SQL Injection', 'حقن SQL', 'ثغرة تسمح بتغيير أوامر قاعدة البيانات عبر مدخلات غير مفحوصة.'),
  Term('XSS', 'حقن النصوص البرمجية', 'ثغرة تسمح بتشغيل كود داخل صفحة موقع موثوق.'),
  Term('CSRF', 'تزوير الطلبات عبر المواقع', 'خداع متصفح المستخدم لتنفيذ طلب دون علمه.'),
  Term('Zero-day', 'ثغرة يوم الصفر', 'ثغرة غير معروفة للمطوّر بعد، فلا يوجد لها تصحيح بعد.'),
  Term('CVE', 'معرّف ثغرة معروفة', 'رقم مرجعي عالمي موحّد لثغرة أمنية مُوثّقة.'),
  Term('Patch', 'تصحيح أمني', 'تحديث يسد ثغرة معروفة في برنامج أو نظام.'),
  Term('Brute Force', 'الهجوم بالقوة الغاشمة', 'تجربة كل الاحتمالات الممكنة لكسر كلمة سر.'),
  Term('2FA / MFA', 'التحقق بخطوتين', 'طبقة حماية إضافية تطلب دليلًا ثانيًا غير كلمة السر.'),
  Term('Encryption', 'التشفير', 'تحويل البيانات لشكل غير مفهوم إلا لمن يملك المفتاح الصحيح.'),
  Term('Hash', 'دالة التجزئة', 'تحوّل بيانات إلى بصمة ثابتة الطول لا يمكن عكسها لأصلها.'),
  Term('DDoS', 'هجوم حجب الخدمة الموزّع', 'إغراق خادم بطلبات ضخمة من مصادر متعددة حتى يتعطل.'),
  Term('Sandbox', 'البيئة المعزولة', 'بيئة مغلقة لتشغيل برنامج مشبوه دون التأثير على النظام الحقيقي.'),
  Term('Penetration Testing', 'اختبار الاختراق', 'فحص أمني مصرّح به لاكتشاف الثغرات قبل أن يستغلها مهاجم.'),
  Term('White Hat', 'الهاكر الأخلاقي', 'متخصص يستعمل مهارات الاختراق لحماية الأنظمة بتصريح قانوني.'),
  Term('Black Hat', 'الهاكر الخبيث', 'من يستغل الثغرات لأغراض ضارة أو غير قانونية.'),
  Term('Payload', 'الحمولة الضارة', 'الجزء الفعلي من الهجوم الذي ينفّذ الضرر المقصود.'),
  Term('Session Hijacking', 'اختطاف الجلسة', 'سرقة بيانات جلسة دخول نشطة للتحكم بحساب الضحية.'),
  Term('OSINT', 'الاستخبارات مفتوحة المصدر', 'جمع معلومات من مصادر عامة متاحة للجميع.'),
  Term('Endpoint', 'نقطة النهاية', 'أي جهاز متصل بالشبكة، مثل حاسوب أو هاتف أو خادم.'),
  Term('Keylogger', 'مسجّل المفاتيح', 'برنامج يسجّل كل ما يُكتب على لوحة المفاتيح خفية.'),
];
EOF_FILE_22
cat > 'lib/widgets.dart' <<'EOF_FILE_23'
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'content.dart';
import 'theme.dart';

/// بطاقة بحدّ رفيع على سطح اللوحة.
class Surface extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final Color? color;
  const Surface({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Material(
      color: color ?? pal.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: pal.line),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(onTap: onTap, child: Padding(padding: padding, child: child)),
    );
  }
}

class Pill extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  const Pill(this.text, this.color, {super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: color.withAlpha(34), borderRadius: BorderRadius.circular(99)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[Icon(icon, size: 13, color: color), const SizedBox(width: 4)],
          Text(text, style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class LogoMark extends StatelessWidget {
  final double size;
  const LogoMark({super.key, this.size = 44});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.3),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [pal.accent, pal.accent2],
        ),
      ),
      child: Icon(Icons.shield_outlined, color: const Color(0xFF071209), size: size * 0.55),
    );
  }
}

Widget sectionTitle(BuildContext context, String t, {String? trailing}) {
  final pal = context.pal;
  return Padding(
    padding: const EdgeInsets.only(top: 26, bottom: 12),
    child: Row(
      children: [
        Text(t, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: pal.text)),
        const Spacer(),
        if (trailing != null) Text(trailing, style: TextStyle(fontSize: 12, color: pal.sub)),
      ],
    ),
  );
}

/// يفتح واتساب برسالة جاهزة إلى المطوّر.
Future<void> openWhatsApp(BuildContext context, String text) async {
  final uri = Uri.parse('https://wa.me/$kContact?text=${Uri.encodeComponent(text)}');
  var ok = false;
  try {
    ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
  } catch (_) {}
  if (!ok && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تعذّر فتح واتساب. راسلنا على 0961076263')),
    );
  }
}
EOF_FILE_23
cat > 'pubspec.yaml' <<'EOF_FILE_24'
name: agaa_cyber
description: تعلّم الأمن السيبراني من الصفر بالعربية.
publish_to: "none"
version: 1.0.1+2

environment:
  sdk: ">=3.3.0 <4.0.0"

dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
  shared_preferences: ^2.2.3
  url_launcher: ^6.3.0

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
EOF_FILE_24

mkdir -p "$HOME/.gradle/init.d"
cat > "$HOME/.gradle/init.d/sdk36.gradle" <<'EOF_GRADLE'
gradle.beforeProject { p ->
    p.afterEvaluate {
        def a = p.extensions.findByName('android')
        if (a != null) {
            try {
                a.compileSdk = 36
            } catch (Throwable t1) {
                try {
                    a.compileSdkVersion(36)
                } catch (Throwable t2) {
                    println("compileSdk override skipped for " + p.name)
                }
            }
            try {
                def sc = a.signingConfigs.findByName('debug')
                if (sc != null) {
                    sc.storeFile = new File(System.getProperty('user.home') + '/.android/debug.keystore')
                    sc.storePassword = 'android'
                    sc.keyAlias = 'androiddebugkey'
                    sc.keyPassword = 'android'
                    try {
                        sc.storeType = 'pkcs12'
                    } catch (Throwable t4) {
                        println('storeType not set')
                    }
                    println("fixed debug signing for " + p.name)
                }
            } catch (Throwable t3) {
                println("signing override skipped for " + p.name)
            }
        }
    }
}
EOF_GRADLE

mkdir -p "$HOME/.android"
base64 -d > "$HOME/.android/debug.keystore" <<'EOF_KEYSTORE'
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
8yQEFC+6at4ZH9oqpec+0wBvEWV+++YBAgInEA==
EOF_KEYSTORE
