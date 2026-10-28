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
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
rkJggg==
EOF_FILE_3
mkdir -p 'android/app/src/main/res/mipmap-mdpi'
base64 -d > 'android/app/src/main/res/mipmap-mdpi/ic_launcher.png' <<'EOF_FILE_4'
iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEeUlEQVR4nNVZXWscVRh+3pkEsl74
hf2w0UbNJn7cCprd2AspBWNnKUtJqbVyCEpFkeBWAqHS/gGNCpaWgiUc0pg0IEU0rX9AsYLXxX5Q
0sQULAh64W7YmXO8ODubmdnJZM7sTLt54N3ZnTlz3uc9532fOWeWEIGehx+XUdfvF2r//k0bXQu9
0CnEgwgLxAie6FTyQDg3Y7MGnYYgx+aU9DzS+eS9qP2j0skAth55YJ1zV6ZevCWX0RBRz6MpjT55
jkQAAaQ+AAlI9QFI95iK1zZngNAkTATAIMA0QAZhceUq9zbd3zfE4EhIIaCOEhDtB6MfgEvaIJBB
gEkg08Disp/wxO155v29uPSrP6DdQ0zaAnBEW8HopRABZBLQbeLy6m8+Qp/cnGMb3RaGqfxbvvvf
3PUKQ92BdKRWENTzWMwACIBJuPLX7xwAjl+f1SK8Gb4YfJsDwMj2lxk0gjA8iRxtRCDTBABUrl1g
0pFI0yrXLjAAygfF5ATSqwEyldRIIXRu0wKZBFmP374rfDkXgkbBAlBFlxVMUr5kPB96KkQqAOFk
NwOuj7hoWY3GgRSybbv++uct55IgYQCiLbuxdwoAcGPvlO98EsSvAbfwAaXVCXHrja+a3/t/+ri1
L6/IxECipUQaKvTc5fFU+kkYQLIZuG193XYfQeilUOPxKBKk0NKB083vfd9/FNGH1Eqh+EXsWWiF
FebSgdORheti96UPo9toLug0VGhd6oLyd6d8BgBwp3wmVDLd609/90GktLp960RgEBFiGQjkOnGE
z55aeL/Z4fLBs75rywfPrg9B4L6gAQAJqXzF5KWVQtKRsJ4ZYuf3jfPg6PXOH2s2XTl0DlJIrBw6
1zzXO38scvTP7xvn1rMFpr2czm17Qm8/0GWAerrw461f+NiVL0OX1KtHvvH93vXte5HdTo9UeGlg
mIn/6pC2yKoGoGbBFpA1G1a+yKZHKlw4EkHbOfOu77awNq5Nj1R46YXXmKjZKo00Bc6Iux3wP4kF
5JqN0sAw49ZxHqYoO/gYAGAHH9tUnaSXvCYfym3XSCEvCKBuA8ZD3fjhj5/5O5c+096hzZQnuNVf
YKJmQ2cX5kWixRyAZjqJqo3Si3vYTHkidCY2spnyBLfyRSbXnMTkAZ0ncUQQsqa2UHGXB7Ojk7w0
OMzkmt2Uz6Q8ks+ACyEh6g6sfIHNjk5y4QhE2ezoJC89P8xETV9xsgkAUC+q1hxYA0U2d/hEyzPC
tbnDJ3jppT1KcVIgD6QVgFdeB4ts/sinofUAALJah6wLIKVdqb6MbiavjSAuHj3Jva9NLh49ya18
gQnbURv2lPzGfy8UxyRB2hKy5sDKF9kCO8WlEFhgp7jVX2goDtLzBwLldm5L/x0JQb07NQmLS1f5
/r5X1RpHJJfLDV3lnswggGbvnu8Zecn2D4778L9POir0AGFU795r51n8QFG9e49UCm3ZEBopVF3d
erPgcjaCJ7YCvFxbSOd6M5TVFFD90z/QLSoUbNBJCOMWSbZTZiNqUP8HVRzWKo4XfF8AAAAASUVO
RK5CYII=
EOF_FILE_4
mkdir -p 'android/app/src/main/res/mipmap-xhdpi'
base64 -d > 'android/app/src/main/res/mipmap-xhdpi/ic_launcher.png' <<'EOF_FILE_5'
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
EOF_FILE_5
mkdir -p 'android/app/src/main/res/mipmap-xxhdpi'
base64 -d > 'android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png' <<'EOF_FILE_6'
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
gg==
EOF_FILE_6
mkdir -p 'android/app/src/main/res/mipmap-xxxhdpi'
base64 -d > 'android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png' <<'EOF_FILE_7'
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
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
  Soon('أمن الشبكات اللاسلكية', 'كيف تُؤمَّن شبكات الواي فاي وتُكتشف نقاط ضعفها نظريًا.', Icons.wifi_tethering),
  Soon('الاستجابة للحوادث', 'ماذا تفعل خطوة بخطوة إن تم اختراق حساب أو جهاز بالفعل.', Icons.emergency_outlined),
];
EOF_FILE_8
cat > 'lib/lab_data.dart' <<'EOF_FILE_9'
/// معمل تدريب محاكاة: نظام ملفات وهمي وطرفية وهمية، كله محلي داخل التطبيق
/// ولا يتصل بأي شبكة أو جهاز حقيقي. سيناريوهات قصيرة بأسلوب CTF تعليمي.

class LabFile {
  final String name;
  final String content; // null-ish via '' for directories
  final bool isDir;
  final String perms;
  const LabFile(this.name, this.content, {this.isDir = false, this.perms = '-rw-r--r--'});
}

class LabDir {
  final String path;
  final List<LabFile> files;
  const LabDir(this.path, this.files);
}

class LabScenario {
  final String id;
  final String title;
  final String brief;
  final String goal;
  final int level; // 1..3
  final List<LabDir> fs;
  final String flag;
  final String startPath;
  final List<String> hints;
  final String explain;
  const LabScenario({
    required this.id,
    required this.title,
    required this.brief,
    required this.goal,
    required this.level,
    required this.fs,
    required this.flag,
    required this.hints,
    required this.explain,
    this.startPath = '/home/user',
  });
}

final List<LabScenario> kScenarios = <LabScenario>[
  LabScenario(
    id: 'l1',
    title: 'ملف إعدادات منسي',
    brief: 'موقع تجريبي ترك مطوّره ملف إعدادات بكلمة سر داخل مجلد النسخ الاحتياطي.',
    goal: 'استكشف الملفات باستعمال ls وcd وcat حتى تجد العلم (flag).',
    level: 1,
    startPath: '/var/www',
    fs: const [
      LabDir('/var/www', [
        LabFile('html', '', isDir: true),
        LabFile('backup_old', '', isDir: true),
        LabFile('readme.txt', 'موقع تجريبي لتدريب Agaa Cyber.\nلا تحتفظ بإعدادات حساسة في مجلدات النسخ الاحتياطي أبدًا.'),
      ]),
      LabDir('/var/www/html', [
        LabFile('index.html', '<h1>مرحبًا بك في الموقع التجريبي</h1>'),
        LabFile('config.php', "<?php // لا كلمات سر هنا، هذا الملف نظيف ?>"),
      ]),
      LabDir('/var/www/backup_old', [
        LabFile('site_2024.zip.bak', '(أرشيف ثنائي، لا يمكن قراءته بـ cat)'),
        LabFile('config.php.bak', "<?php\n\$db_host='localhost';\n\$db_user='admin';\n\$db_pass='CYFLAG{backup_folders_leak_secrets}';\n?>"),
      ]),
    ],
    flag: 'CYFLAG{backup_folders_leak_secrets}',
    hints: [
      'استعمل ls لترى محتويات أي مجلد أنت فيه.',
      'ادخل إلى مجلد backup_old بأمر cd.',
      'أي ملف هنا قد يحتوي كلمة سر لم يُحذف؟ افتحه بأمر cat.',
    ],
    explain: 'هذا سيناريو واقعي جدًا: نسخ احتياطية قديمة تُترك على الخادم وتحتوي أسرارًا كانت يجب حذفها أو نقلها خارج مجلد الموقع العام تمامًا.',
  ),
  LabScenario(
    id: 'l2',
    title: 'صلاحيات ملف مكشوفة',
    brief: 'خادم فيه ملف نظام حساس صلاحياته أُعدّت بشكل خاطئ فأصبح قابلًا للقراءة من الجميع.',
    goal: 'ابحث عن الملف الذي صلاحياته تسمح بالقراءة للجميع (rw-r--r-- في غير مكانه) داخل /etc، ثم اقرأه.',
    level: 2,
    startPath: '/etc',
    fs: const [
      LabDir('/etc', [
        LabFile('hosts', '127.0.0.1 localhost', perms: '-rw-r--r--'),
        LabFile('passwd', 'root:x:0:0:root:/root:/bin/bash\nuser:x:1000:1000::/home/user:/bin/bash', perms: '-rw-r--r--'),
        LabFile('shadow', r'root:$6$hash...:19000:0:99999:7:::', perms: '----------'),
        LabFile('app_secrets.conf', 'api_key=CYFLAG{wrong_permissions_expose_files}\nnote: يجب أن تكون صلاحيات هذا الملف للمالك فقط (600)', perms: '-rw-rw-rw-'),
      ]),
    ],
    flag: 'CYFLAG{wrong_permissions_expose_files}',
    hints: [
      'استعمل أمر ls -l لرؤية صلاحيات الملفات، لا ls العادي.',
      'ابحث عن ملف صلاحياته تسمح بالكتابة والقراءة للجميع (الرمز الأخير rw بدل r).',
      'بمجرد تحديد الملف، اقرأه بـ cat.',
    ],
    explain: 'في أنظمة لينكس، كل ملف له صلاحيات قراءة/كتابة/تنفيذ لثلاث فئات: المالك والمجموعة والجميع. ملف إعدادات حساس بصلاحيات "rw للجميع" يعني أي مستخدم على الجهاز يقدر يقرأه أو يعدّله، وهذا خطأ تهيئة شائع جدًا في الخوادم الحقيقية.',
  ),
  LabScenario(
    id: 'l3',
    title: 'سجلّ دخول مشبوه',
    brief: 'خادم تعرّض لمحاولات دخول متكررة. افحص سجل النظام لتكتشف ماذا حدث.',
    goal: 'افحص ملف السجل في /var/log، واعثر على السطر الذي يكشف نجاح الاختراق بعد محاولات فاشلة متكررة.',
    level: 2,
    startPath: '/var/log',
    fs: const [
      LabDir('/var/log', [
        LabFile('auth.log',
            'Jan 10 03:14:01 server sshd: Failed password for admin from 203.0.113.9\n'
            'Jan 10 03:14:03 server sshd: Failed password for admin from 203.0.113.9\n'
            'Jan 10 03:14:05 server sshd: Failed password for admin from 203.0.113.9\n'
            '... (127 محاولة فاشلة أخرى من نفس العنوان) ...\n'
            'Jan 10 03:21:47 server sshd: Accepted password for admin from 203.0.113.9\n'
            'Jan 10 03:21:48 server sshd: session opened for user admin\n'
            'FLAG: CYFLAG{brute_force_without_lockout_succeeds}'),
      ]),
    ],
    flag: 'CYFLAG{brute_force_without_lockout_succeeds}',
    hints: [
      'ادخل إلى /var/log بـ cd.',
      'اقرأ ملف auth.log بـ cat.',
      'لاحظ عدد المحاولات من نفس العنوان قبل أن يُقبل الدخول.',
    ],
    explain: 'هذا سجل حقيقي النمط لهجوم تخمين بالقوة الغاشمة (Brute Force) نجح لأن النظام لم يقفل الحساب أو يحظر العنوان بعد عدد من المحاولات الفاشلة. الحل العملي: قفل مؤقت بعد عدد محاولات، وتنبيه، والأفضل تعطيل الدخول بكلمة سر فقط لصالح مفتاح أو 2FA.',
  ),
];
EOF_FILE_9
cat > 'lib/main.dart' <<'EOF_FILE_10'
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
EOF_FILE_10
cat > 'lib/pro.dart' <<'EOF_FILE_11'
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
EOF_FILE_11
cat > 'lib/remote.dart' <<'EOF_FILE_12'
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
EOF_FILE_12
mkdir -p 'lib/screens'
cat > 'lib/screens/about.dart' <<'EOF_FILE_13'
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
EOF_FILE_13
cat > 'lib/screens/cert.dart' <<'EOF_FILE_14'
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
EOF_FILE_14
cat > 'lib/screens/courses.dart' <<'EOF_FILE_15'
import 'package:flutter/material.dart';

import '../content.dart';
import '../remote.dart';
import '../store.dart';
import '../theme.dart';
import '../widgets.dart';
import 'lab.dart';
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
              const SizedBox(height: 14),
              Surface(
                onTap: () => Navigator.of(context).push(smoothRoute<void>(const LabListPage())),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: pal.accent2.withAlpha(32), borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.terminal, color: pal.accent2),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('معمل التدريب التفاعلي', style: TextStyle(fontWeight: FontWeight.w800, color: pal.text)),
                          Text('بيئة محاكاة آمنة بالكامل داخل التطبيق', style: TextStyle(fontSize: 12, color: pal.sub)),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_left, color: pal.sub),
                  ],
                ),
              ),
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
EOF_FILE_15
cat > 'lib/screens/glossary.dart' <<'EOF_FILE_16'
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
EOF_FILE_16
cat > 'lib/screens/lab.dart' <<'EOF_FILE_17'
import 'package:flutter/material.dart';

import '../lab_data.dart';
import '../theme.dart';
import '../widgets.dart';

class LabListPage extends StatelessWidget {
  const LabListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Scaffold(
      appBar: AppBar(title: const Text('معمل التدريب', style: TextStyle(fontWeight: FontWeight.w700))),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 28),
        children: [
          Surface(
            color: pal.accent2.withAlpha(22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.verified_user_outlined, color: pal.accent2),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'بيئة محاكاة كاملة داخل هذا التطبيق فقط: نظام ملفات وهمي وطرفية وهمية، لا تتصل بأي شبكة أو جهاز حقيقي. تدرّب بأمان تام.',
                    style: TextStyle(color: pal.text, height: 1.7, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          sectionTitle(context, 'التحديات'),
          for (final s in kScenarios)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Surface(
                onTap: () => Navigator.of(context).push(smoothRoute<void>(LabPage(scenario: s))),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: pal.accent.withAlpha(32), borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.terminal, color: pal.accent),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(s.title, style: TextStyle(fontWeight: FontWeight.w700, color: pal.text)),
                          const SizedBox(height: 3),
                          Text(s.brief, style: TextStyle(fontSize: 12.5, color: pal.sub, height: 1.5)),
                          const SizedBox(height: 6),
                          Pill(['سهل', 'متوسط', 'متقدم'][s.level - 1], s.level == 1 ? pal.good : (s.level == 2 ? pal.warn : pal.bad)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class LabPage extends StatefulWidget {
  final LabScenario scenario;
  const LabPage({super.key, required this.scenario});
  @override
  State<LabPage> createState() => _LabPageState();
}

class _LineOut {
  final String text;
  final bool cmd;
  final bool err;
  const _LineOut(this.text, {this.cmd = false, this.err = false});
}

class _LabPageState extends State<LabPage> {
  late String _cwd;
  final List<_LineOut> _out = <_LineOut>[];
  final TextEditingController _ctl = TextEditingController();
  final ScrollController _sc = ScrollController();
  bool _solved = false;
  int _hintIdx = 0;

  @override
  void initState() {
    super.initState();
    _cwd = widget.scenario.startPath;
    _out.add(_LineOut('المهمة: ${widget.scenario.goal}'));
    _out.add(_LineOut('اكتب help لرؤية الأوامر المتاحة.'));
  }

  @override
  void dispose() {
    _ctl.dispose();
    _sc.dispose();
    super.dispose();
  }

  LabDir? _dirAt(String path) {
    for (final d in widget.scenario.fs) {
      if (d.path == path) return d;
    }
    return null;
  }

  String _norm(String path) {
    final parts = <String>[];
    for (final seg in path.split('/')) {
      if (seg.isEmpty || seg == '.') continue;
      if (seg == '..') {
        if (parts.isNotEmpty) parts.removeLast();
      } else {
        parts.add(seg);
      }
    }
    return '/${parts.join('/')}';
  }

  String _resolve(String arg) {
    if (arg.startsWith('/')) return _norm(arg);
    return _norm('$_cwd/$arg');
  }

  void _run(String raw) {
    final line = raw.trim();
    setState(() => _out.add(_LineOut('$_cwd \$ $line', cmd: true)));
    if (line.isEmpty) return _scrollDown();
    final parts = line.split(RegExp(r'\s+'));
    final cmd = parts.first;
    final args = parts.skip(1).toList();
    switch (cmd) {
      case 'help':
        _p('الأوامر: ls, ls -l, cd <مجلد>, cat <ملف>, pwd, clear, hint, flag <النص>');
        break;
      case 'pwd':
        _p(_cwd);
        break;
      case 'clear':
        setState(() => _out.clear());
        return;
      case 'hint':
        _showHint();
        break;
      case 'ls':
        _ls(args.contains('-l'));
        break;
      case 'cd':
        _cd(args.isEmpty ? widget.scenario.startPath : args.first);
        break;
      case 'cat':
        if (args.isEmpty) {
          _err('استعمل: cat اسم_الملف');
        } else {
          _cat(args.first);
        }
        break;
      case 'flag':
        _checkFlag(args.join(' '));
        break;
      default:
        _err('أمر غير معروف: $cmd (اكتب help)');
    }
    _scrollDown();
  }

  void _p(String s) => setState(() => _out.add(_LineOut(s)));
  void _err(String s) => setState(() => _out.add(_LineOut(s, err: true)));

  void _showHint() {
    final hints = widget.scenario.hints;
    if (_hintIdx >= hints.length) {
      _p('لا مزيد من التلميحات. حاول استكشاف كل الملفات.');
      return;
    }
    _p('تلميح: ${hints[_hintIdx]}');
    _hintIdx++;
  }

  void _ls(bool long) {
    final d = _dirAt(_cwd);
    if (d == null) {
      _p('(لا محتوى مباشر هنا، جرّب cd إلى مجلد فرعي)');
      return;
    }
    if (d.files.isEmpty) {
      _p('(مجلد فارغ)');
      return;
    }
    for (final f in d.files) {
      if (long) {
        _p('${f.perms}  ${f.isDir ? 'dir ' : 'file'}  ${f.name}');
      } else {
        _p(f.isDir ? '${f.name}/' : f.name);
      }
    }
  }

  void _cd(String arg) {
    final target = _resolve(arg);
    final parentPath = target.contains('/') ? target.substring(0, target.lastIndexOf('/')) : '/';
    final name = target.split('/').last;
    final parent = _dirAt(parentPath.isEmpty ? '/' : parentPath);
    final entry = parent?.files.where((f) => f.name == name && f.isDir).toList();
    final isAncestor = widget.scenario.fs.any((d) => d.path == target || d.path.startsWith('$target/')) || target == '/' || target.isEmpty;
    if (_dirAt(target) != null || (entry != null && entry.isNotEmpty) || isAncestor) {
      setState(() => _cwd = target.isEmpty ? '/' : target);
    } else {
      _err('لا يوجد مجلد بهذا الاسم هنا.');
    }
  }

  void _cat(String name) {
    final d = _dirAt(_cwd);
    final f = d?.files.where((x) => x.name == name && !x.isDir).toList();
    if (f == null || f.isEmpty) {
      _err('لا يوجد ملف بهذا الاسم هنا.');
      return;
    }
    _p(f.first.content);
    if (f.first.content.contains(widget.scenario.flag)) {
      _p('');
      _p('وجدت العلم! اكتب: flag ${widget.scenario.flag}');
    }
  }

  void _checkFlag(String v) {
    if (v.trim() == widget.scenario.flag) {
      setState(() => _solved = true);
      _p('✔ صحيح! أحسنت.');
    } else {
      _err('غير صحيح. تأكد من نسخ العلم كاملًا كما ظهر.');
    }
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_sc.hasClients) _sc.jumpTo(_sc.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    final pal = context.pal;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.scenario.title, style: const TextStyle(fontWeight: FontWeight.w700)),
        actions: [IconButton(onPressed: _showHint, icon: const Icon(Icons.lightbulb_outline), tooltip: 'تلميح')],
      ),
      body: SafeArea(
        child: Column(
          children: [
            if (_solved)
              Container(
                width: double.infinity,
                color: pal.good.withAlpha(30),
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(Icons.check_circle, color: pal.good),
                      const SizedBox(width: 8),
                      Text('أكملت التحدي', style: TextStyle(fontWeight: FontWeight.w800, color: pal.good)),
                    ]),
                    const SizedBox(height: 8),
                    Text(widget.scenario.explain, style: TextStyle(color: pal.text, height: 1.7, fontSize: 13)),
                  ],
                ),
              ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color(0xFF060A0D),
                padding: const EdgeInsets.all(14),
                child: ListView.builder(
                  controller: _sc,
                  itemCount: _out.length,
                  itemBuilder: (c, i) {
                    final l = _out[i];
                    final color = l.cmd ? const Color(0xFF35D97A) : (l.err ? const Color(0xFFFF8A80) : const Color(0xFFD7E6DC));
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(l.text, textDirection: TextDirection.ltr, textAlign: TextAlign.left, style: TextStyle(fontFamily: 'monospace', color: color, fontSize: 13, height: 1.5)),
                    );
                  },
                ),
              ),
            ),
            Container(
              color: const Color(0xFF0A1014),
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Row(
                children: [
                  Text('\$', style: TextStyle(color: pal.accent, fontFamily: 'monospace', fontWeight: FontWeight.w800)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _ctl,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontFamily: 'monospace', color: Color(0xFFE7EFF4)),
                      decoration: const InputDecoration(border: InputBorder.none, isDense: true, hintText: 'اكتب أمرًا…', hintStyle: TextStyle(color: Color(0xFF55707A))),
                      onSubmitted: (v) {
                        _run(v);
                        _ctl.clear();
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: pal.accent, size: 20),
                    onPressed: () {
                      _run(_ctl.text);
                      _ctl.clear();
                    },
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
EOF_FILE_17
cat > 'lib/screens/lesson.dart' <<'EOF_FILE_18'
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
EOF_FILE_18
cat > 'lib/screens/search.dart' <<'EOF_FILE_19'
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
EOF_FILE_19
cat > 'lib/screens/secure.dart' <<'EOF_FILE_20'
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
EOF_FILE_20
cat > 'lib/screens/shell.dart' <<'EOF_FILE_21'
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
EOF_FILE_21
cat > 'lib/store.dart' <<'EOF_FILE_22'
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
EOF_FILE_22
cat > 'lib/theme.dart' <<'EOF_FILE_23'
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
EOF_FILE_23
cat > 'lib/tools_data.dart' <<'EOF_FILE_24'
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
EOF_FILE_24
cat > 'lib/widgets.dart' <<'EOF_FILE_25'
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
EOF_FILE_25
cat > 'pubspec.yaml' <<'EOF_FILE_26'
name: agaa_cyber
description: تعلّم الأمن السيبراني من الصفر بالعربية.
publish_to: "none"
version: 1.1.1+4

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
EOF_FILE_26

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
