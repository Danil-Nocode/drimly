import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String? ruText = '',
    String? enText = '',
  }) =>
      [ruText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SignUp
  {
    'g455pxgo': {
      'ru': 'Имя',
      'en': '',
    },
    'jg6ewbdd': {
      'ru': 'Email',
      'en': '',
    },
    '1jnbkjc5': {
      'ru': 'Пароль',
      'en': '',
    },
    'suu2sprj': {
      'ru': 'Повторите пароль',
      'en': '',
    },
    'bcwefzd1': {
      'ru': 'Войти',
      'en': '',
    },
    'nx5rpf11': {
      'ru':
          'Прододоллжая, Вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
      'en': '',
    },
    '37ryat8e': {
      'ru': 'Home',
      'en': '',
    },
  },
  // SignIn
  {
    't10tqjy0': {
      'ru': 'Email',
      'en': '',
    },
    'h9etvtu0': {
      'ru': 'Пароль',
      'en': '',
    },
    'ufhwcgzy': {
      'ru': 'Забыли пароль?',
      'en': '',
    },
    '15rn4j8i': {
      'ru': 'Зарегистрироваться',
      'en': '',
    },
    'e3h2uxfj': {
      'ru':
          'Прододоллжая, Вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
      'en': '',
    },
    'l10xfhj5': {
      'ru': 'Home',
      'en': '',
    },
  },
  // ForgotPassword
  {
    'fbap6xe2': {
      'ru': 'Email',
      'en': '',
    },
    'ff9ifnzu': {
      'ru': 'Войти',
      'en': '',
    },
    'xdazruj3': {
      'ru': 'Зарегистрироваться',
      'en': '',
    },
    'jd4ytvvd': {
      'ru':
          'Прододоллжая, Вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
      'en': '',
    },
    'dlt0y2cb': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Poll1
  {
    'k4nhfbip': {
      'ru':
          'Какую сферу жизни Вы бы хотели улучшить с помощью трансовых медитаций  от Елены Друма?',
      'en': '',
    },
    'aoicelnd': {
      'ru': 'Деньги',
      'en': '',
    },
    '07qq0d09': {
      'ru': 'Отношения',
      'en': '',
    },
    '12mlseoa': {
      'ru': 'Здоровье',
      'en': '',
    },
    'ediph164': {
      'ru': 'Сон',
      'en': '',
    },
    'tlie3qzg': {
      'ru': 'Пропустить',
      'en': '',
    },
    'sp58p5db': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Poll2
  {
    'm2mr7hwh': {
      'ru':
          'Какую сферу жизни Вы бы хотели улучшить с помощью трансовых медитаций  от Елены Друма?',
      'en': '',
    },
    '2c8k5ckh': {
      'ru': '5 минут',
      'en': '',
    },
    '302nwcar': {
      'ru': '5',
      'en': '',
    },
    'blh8hs87': {
      'ru': '10 минут',
      'en': '',
    },
    'lqekwrc8': {
      'ru': '10',
      'en': '',
    },
    'yin7gxfw': {
      'ru': '20 минут',
      'en': '',
    },
    'p442jr3w': {
      'ru': '20',
      'en': '',
    },
    'x0jpcrq9': {
      'ru': '30 минут',
      'en': '',
    },
    'qhuezsn3': {
      'ru': '30',
      'en': '',
    },
    '2mz33oug': {
      'ru': 'Пропустить',
      'en': '',
    },
    'llga4s7z': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Poll3
  {
    'e4szr0lm': {
      'ru': 'Спасибо за пройденный опрос, Ваш личный план сформирован!',
      'en': '',
    },
    'wu9s9xp8': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Meditation
  {
    'ekaf78vs': {
      'ru': '5.0',
      'en': '',
    },
    'oeutnkng': {
      'ru': 'Медитации',
      'en': '',
    },
    'wtiutjcg': {
      'ru': 'Лучшие подборки медитаций',
      'en': '',
    },
    '0gymdr5m': {
      'ru': 'Медитация',
      'en': '',
    },
  },
  // meditationList
  {
    'tn3fbewy': {
      'ru': '5.0',
      'en': '',
    },
    'scu740fg': {
      'ru': 'Медитации',
      'en': '',
    },
    'uja6ngkz': {
      'ru': 'Медитация',
      'en': '',
    },
  },
  // meditationPage
  {
    'ee2r2btk': {
      'ru': 'добавить заметку',
      'en': '',
    },
    'rlb3hmkc': {
      'ru': 'Медитация',
      'en': '',
    },
  },
  // Sound
  {
    'cp9qr0lk': {
      'ru': '5.0',
      'en': '',
    },
    '7j92z0p8': {
      'ru': 'Звуки',
      'en': '',
    },
    'd8s51ob6': {
      'ru': 'Шум',
      'en': '',
    },
  },
  // Practice
  {
    'dm53c3gs': {
      'ru': 'Практики',
      'en': '',
    },
    'i97m60r9': {
      'ru': '5.0',
      'en': '',
    },
    '77l0vuay': {
      'ru': 'Практики',
      'en': '',
    },
  },
  // PracticePage
  {
    'uteaq7wc': {
      'ru': 'Последний урок',
      'en': '',
    },
    'kmgrjs63': {
      'ru': 'Практики',
      'en': '',
    },
  },
  // sectionPage
  {
    'j1ti9e6c': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Profile
  {
    'phlk9xak': {
      'ru': 'Александра Волова',
      'en': '',
    },
    'bbbz5xot': {
      'ru': '5.0',
      'en': '',
    },
    '5l5zu8u2': {
      'ru': '5 минут',
      'en': '',
    },
    'lui6xu5t': {
      'ru': '34 сессии',
      'en': '',
    },
    '40tf6otp': {
      'ru': 'Открыть полный доступ',
      'en': '',
    },
    'txayiqmd': {
      'ru': 'Мои заметки',
      'en': '',
    },
    'ogwzirt4': {
      'ru': 'RU версия',
      'en': '',
    },
    '7lefkiyy': {
      'ru': 'Профиль',
      'en': '',
    },
  },
  // allNotice
  {
    'ljf51ck9': {
      'ru': 'Мои заметки',
      'en': '',
    },
    'nyolegj2': {
      'ru': 'Home',
      'en': '',
    },
  },
  // NoticePage
  {
    'mxkfkzj7': {
      'ru': 'Заметка',
      'en': '',
    },
    'oq4nj7ju': {
      'ru': 'Опишите свои чувства',
      'en': '',
    },
    'plkb4lpl': {
      'ru': 'Home',
      'en': '',
    },
  },
  // createNotice
  {
    's1l3fip1': {
      'ru': 'Заметка',
      'en': '',
    },
    'coqf9dri': {
      'ru': 'Опишите свои чувства',
      'en': '',
    },
    'ku8fknw1': {
      'ru': 'Введите текст...',
      'en': '',
    },
    '1ix55t6u': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'huw575a3': {
      'ru': '',
      'en': '',
    },
    'tsnf0ilg': {
      'ru': '',
      'en': '',
    },
    '8j6dnzv1': {
      'ru': '',
      'en': '',
    },
    'kg0q1o2f': {
      'ru': '',
      'en': '',
    },
    'kf566gxr': {
      'ru': '',
      'en': '',
    },
    'f0iw06z6': {
      'ru': '',
      'en': '',
    },
    '7r3us7w9': {
      'ru': '',
      'en': '',
    },
    'd65426oo': {
      'ru': '',
      'en': '',
    },
    'fklid0iq': {
      'ru': '',
      'en': '',
    },
    'jqrlflek': {
      'ru': '',
      'en': '',
    },
    '2h4jqh4m': {
      'ru': '',
      'en': '',
    },
    '21uxmb4e': {
      'ru': '',
      'en': '',
    },
    's64gqmld': {
      'ru': '',
      'en': '',
    },
    'tluqv2h4': {
      'ru': '',
      'en': '',
    },
    '7o9fv006': {
      'ru': '',
      'en': '',
    },
    'dy1ui1t1': {
      'ru': '',
      'en': '',
    },
    'w15ron8j': {
      'ru': '',
      'en': '',
    },
    'n6f0od49': {
      'ru': '',
      'en': '',
    },
    'qker9hld': {
      'ru': '',
      'en': '',
    },
    'u05wkuey': {
      'ru': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
