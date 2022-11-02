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
  // Доп
  {
    'ugez42w4': {
      'ru': 'Удалить аккаунт',
      'en': 'Delete account',
    },
    'ogwzir23': {
      'ru': 'Выход',
      'en': 'Exit',
    },
    'ogwzir1223': {
      'ru': ' минут',
      'en': ' minutes',
    },
    'ogwzir12323': {
      'ru': ' сессий',
      'en': ' sessions',
    },
  },

  // SignUp

  {
    'g455pxgo': {
      'ru': 'Имя',
      'en': 'Name',
    },
    'jg6ewbdd': {
      'ru': 'Email',
      'en': 'Email',
    },
    '1jnbkjc5': {
      'ru': 'Пароль',
      'en': 'Password',
    },
    'suu2sprj': {
      'ru': 'Повторите пароль',
      'en': 'Repeat password',
    },
    'bcwefzd1': {
      'ru': 'Войти',
      'en': 'To come in',
    },
    'nx5rpf11': {
      'ru':
          'Прододоллжая, Вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
      'en': 'By continuing, you agree to the Terms of Use and Privacy Policy',
    },
    '37ryat8e': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // SignIn
  {
    't10tqjy0': {
      'ru': 'Email',
      'en': 'Email',
    },
    'h9etvtu0': {
      'ru': 'Пароль',
      'en': 'Password',
    },
    'ufhwcgzy': {
      'ru': 'Забыли пароль?',
      'en': 'Forgot your password?',
    },
    '15rn4j8i': {
      'ru': 'Зарегистрироваться',
      'en': 'Register',
    },
    'e3h2uxfj': {
      'ru':
          'Прододоллжая, Вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
      'en': 'By continuing, you agree to the Terms of Use and Privacy Policy',
    },
    'l10xfhj5': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // ForgotPassword
  {
    'fbap6xe2': {
      'ru': 'Email',
      'en': 'Email',
    },
    'ff9ifnzu': {
      'ru': 'Войти',
      'en': 'To come in',
    },
    'xdazruj3': {
      'ru': 'Зарегистрироваться',
      'en': 'Register',
    },
    'jd4ytvvd': {
      'ru':
          'Прододоллжая, Вы соглашаетесь с Условиями использования и Политикой конфиденциальности',
      'en': 'By continuing, you agree to the Terms of Use and Privacy Policy',
    },
    'dlt0y2cb': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // Poll1
  {
    'k4nhfbip': {
      'ru':
          'Какую сферу жизни Вы бы хотели улучшить с помощью трансовых медитаций  от Елены Друма?',
      'en':
          'What area of life would you like to improve with Elena Druma&#39;s trance meditations?',
    },
    'aoicelnd': {
      'ru': 'Деньги',
      'en': 'Money',
    },
    '07qq0d09': {
      'ru': 'Отношения',
      'en': 'Relations',
    },
    '12mlseoa': {
      'ru': 'Здоровье',
      'en': 'Health',
    },
    'ediph164': {
      'ru': 'Сон',
      'en': 'Dream',
    },
    'tlie3qzg': {
      'ru': 'Пропустить',
      'en': 'Skip',
    },
    'sp58p5db': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // Poll2
  {
    'm2mr7hwh': {
      'ru':
          'Какое количество минут Вы готовы ежедневно инвестировать в свое саморазвитие?',
      'en':
          'How many minutes are you willing to invest in your self-development every day?',
    },
    '2c8k5ckh': {
      'ru': '5 минут',
      'en': '5 minutes',
    },
    '302nwcar': {
      'ru': '5',
      'en': '5',
    },
    'blh8hs87': {
      'ru': '10 минут',
      'en': '10 minutes',
    },
    'lqekwrc8': {
      'ru': '10',
      'en': 'ten',
    },
    'yin7gxfw': {
      'ru': '20 минут',
      'en': '20 minutes',
    },
    'p442jr3w': {
      'ru': '20',
      'en': 'twenty',
    },
    'x0jpcrq9': {
      'ru': '30 минут',
      'en': '30 minutes',
    },
    'qhuezsn3': {
      'ru': '30',
      'en': 'thirty',
    },
    '2mz33oug': {
      'ru': 'Пропустить',
      'en': 'Skip',
    },
    'llga4s7z': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // Poll3
  {
    'e4szr0lm': {
      'ru': 'Спасибо за пройденный опрос, Ваш личный план сформирован!',
      'en':
          'Thank you for completing the survey, your personal plan is formed!',
    },
    'wu9s9xp8': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // Meditation
  {
    'ekaf78vs': {
      'ru': '5.0',
      'en': '5.0',
    },
    'oeutnkng': {
      'ru': 'Медитации',
      'en': 'meditation',
    },
    'wtiutjcg': {
      'ru': 'Лучшие подборки медитаций',
      'en': 'The best compilations of meditations',
    },
    '0gymdr5m': {
      'ru': 'Медитации',
      'en': 'Meditation',
    },
  },
  // meditationList
  {
    'tn3fbewy': {
      'ru': '5.0',
      'en': '5.0',
    },
    'scu740fg': {
      'ru': 'Медитации',
      'en': 'meditation',
    },
    'uja6ngkz': {
      'ru': 'Медитация',
      'en': 'Meditation',
    },
  },
  // meditationPage
  {
    'ee2r2btk': {
      'ru': 'добавить заметку',
      'en': 'add note',
    },
    'rlb3hmkc': {
      'ru': 'Медитация',
      'en': 'Meditation',
    },
  },
  // Sound
  {
    'cp9qr0lk': {
      'ru': '5.0',
      'en': '5.0',
    },
    '7j92z0p8': {
      'ru': 'Звуки',
      'en': 'Sounds',
    },
    'd8s51ob6': {
      'ru': 'Звуки',
      'en': 'Sounds',
    },
  },
  // Practice
  {
    'dm53c3gs': {
      'ru': 'Практики',
      'en': 'Practices',
    },
    'i97m60r9': {
      'ru': '5.0',
      'en': '5.0',
    },
    '77l0vuay': {
      'ru': 'Практики',
      'en': 'Practices',
    },
  },
  // PracticePage
  {
    'uteaq7wc': {
      'ru': 'Последний урок',
      'en': 'Last lesson',
    },
    'kmgrjs63': {
      'ru': 'Практики',
      'en': 'Practices',
    },
  },
  // sectionPage
  {
    'j1ti9e6c': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // Profile
  {
    'phlk9xak': {
      'ru': 'Александра Волова',
      'en': 'Alexandra Volova',
    },
    'bbbz5xot': {
      'ru': '5.0',
      'en': '5.0',
    },
    '5l5zu8u2': {
      'ru': '5 минут',
      'en': '5 minutes',
    },
    'lui6xu5t': {
      'ru': '34 сессии',
      'en': '34 sessions',
    },
    '40tf6otp': {
      'ru': 'Открыть полный доступ',
      'en': 'Open full access',
    },
    'txayiqmd': {
      'ru': 'Мои заметки',
      'en': 'My notes',
    },
    'ogwzirt4': {
      'ru': 'RU версия',
      'en': 'EN version',
    },
    '7lefkiya': {
      'ru': 'Чат',
      'en': 'Chat',
    },
    '7lefkiyy': {
      'ru': 'Профиль',
      'en': 'Profile',
    },
  },
  // allNotice
  {
    'ljf51ck9': {
      'ru': 'Мои заметки',
      'en': 'My notes',
    },
    'nyolegj2': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // NoticePage
  {
    'mxkfkzj7': {
      'ru': 'Заметка',
      'en': 'The note',
    },
    'oq4nj7ju': {
      'ru': 'Опишите свои чувства',
      'en': 'Describe your feelings',
    },
    'plkb4lpl': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // createNotice
  {
    's1l3fip1': {
      'ru': 'Заметка',
      'en': 'The note',
    },
    'coqf9dri': {
      'ru': 'Опишите свои чувства',
      'en': 'Describe your feelings',
    },
    'ku8fknw1': {
      'ru': 'Введите текст...',
      'en': 'Enter text...',
    },
    '1ix55t6u': {
      'ru': 'Home',
      'en': 'Home',
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
