import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

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
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
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
    '2erhjcoc': {
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
    '9nuwdoc9': {
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
          'What area of life would you like to improve with Elena Druma\'s trance meditations?',
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
          'Какую сферу жизни Вы бы хотели улучшить с помощью трансовых медитаций  от Елены Друма?',
      'en':
          'What area of life would you like to improve with Elena Druma\'s trance meditations?',
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
      'ru': 'Медитация',
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
      'en': 'sounds',
    },
    'd8s51ob6': {
      'ru': 'Шум',
      'en': 'Noise',
    },
  },
  // Practice
  {
    'dm53c3gs': {
      'ru': 'Практики',
      'en': 'practices',
    },
    'i97m60r9': {
      'ru': '5.0',
      'en': '5.0',
    },
    '77l0vuay': {
      'ru': 'Практики',
      'en': 'practices',
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
      'en': 'practices',
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
    'zeef8q8b': {
      'ru': 'Выполненные задания',
      'en': 'Completed tasks',
    },
    '14fouj5g': {
      'ru': 'Проверка заданий',
      'en': 'Checking assignments',
    },
    'mr4gdlic': {
      'ru': 'Чаты',
      'en': 'Chats',
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
      'en': 'RU version',
    },
    '8ylwnasi': {
      'ru': 'Удалить аккаунт',
      'en': 'Delete account',
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
    'uh103g5b': {
      'ru': 'Введите текст...',
      'en': 'Enter text...',
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
  // Chat
  {
    'ydg0h94j': {
      'ru': 'Психолог',
      'en': 'Psychologist',
    },
  },
  // taskPage
  {
    'vcegaq9i': {
      'ru': 'Задания',
      'en': 'Tasks',
    },
    'qf89ilbo': {
      'ru': 'Выполнить',
      'en': 'Run',
    },
    '9hpdg2ga': {
      'ru': 'Редактировать',
      'en': 'Edit',
    },
    'ny6smh4z': {
      'ru': 'Обратная связь',
      'en': 'Feedback',
    },
    '0hmoeiio': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // completeTask
  {
    'vo5st0ps': {
      'ru': 'Задание',
      'en': 'Exercise',
    },
    '3aqin12a': {
      'ru': 'Изображения',
      'en': 'Images',
    },
    'yhd9whfm': {
      'ru': 'Видео',
      'en': 'Video',
    },
    '5fwsu2df': {
      'ru': 'Файлы',
      'en': 'Files',
    },
    'qgkguszf': {
      'ru': 'Конспект для метфорических карт',
      'en': 'Synopsis for metforic cards',
    },
    'zly92ann': {
      'ru': 'Выполнение задания',
      'en': 'Completing a task',
    },
    'e7pq9gur': {
      'ru': 'Напишите свой ответ ',
      'en': 'Write your answer',
    },
    'fbp4q19v': {
      'ru': 'Загрузить медиа',
      'en': 'Download media',
    },
    '6gquu5gp': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // allCompleteTasks
  {
    'f340yas2': {
      'ru': 'Мои задания',
      'en': 'My assignments',
    },
    'f9rvaluv': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // completedTask
  {
    'yflq9dp1': {
      'ru': 'Выполненное задание',
      'en': 'Completed task',
    },
    'a0e464wy': {
      'ru': 'Напишите свой ответ ',
      'en': 'Write your answer',
    },
    '2tua4y3f': {
      'ru': 'Загруженные медиа',
      'en': 'Downloaded media',
    },
    'whwwis5i': {
      'ru': 'Обратная связь',
      'en': 'Feedback',
    },
    '4ka7psit': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // filesAudioPage
  {
    '6dxjgvya': {
      'ru': 'Вложенные файлы',
      'en': 'Attached files',
    },
    'kpavn6h5': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // chatPage
  {
    'a1wtxri4': {
      'ru': 'Чаты',
      'en': 'Chats',
    },
  },
  // chechingTasksUser
  {
    'yu065tia': {
      'ru': 'Проверка заданий',
      'en': 'Checking assignments',
    },
    '5ku34glx': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // checkingTask
  {
    '27fayzol': {
      'ru': 'Задание',
      'en': 'Exercise',
    },
    '6f732xis': {
      'ru': 'Изображения',
      'en': 'Images',
    },
    'e5972i0f': {
      'ru': 'Видео',
      'en': 'Video',
    },
    'jj5cdgfh': {
      'ru': 'Файлы',
      'en': 'Files',
    },
    '8iw96sat': {
      'ru': 'Конспект для метфорических карт',
      'en': 'Synopsis for metforic cards',
    },
    'caka80wv': {
      'ru': 'Ответ пользователя',
      'en': 'User response',
    },
    'ryvogpe0': {
      'ru': 'Напишите свой ответ ',
      'en': 'Write your answer',
    },
    'of3ym68c': {
      'ru': 'Загруженное медиа',
      'en': 'Uploaded media',
    },
    'bdt3bahu': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // checkingTasks
  {
    '5p86450x': {
      'ru': 'Проверка заданий',
      'en': 'Checking assignments',
    },
    '3jbfpulr': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // editCompleteTask
  {
    'tcyexkct': {
      'ru': 'Задание',
      'en': 'Exercise',
    },
    'n4l0v9ly': {
      'ru': 'Изображения',
      'en': 'Images',
    },
    'byv0kwvb': {
      'ru': 'Видео',
      'en': 'Video',
    },
    'mfidwl6a': {
      'ru': 'Файлы',
      'en': 'Files',
    },
    'rk80scj9': {
      'ru': 'Конспект для метфорических карт',
      'en': 'Synopsis for metforic cards',
    },
    'jte8jbvx': {
      'ru': 'Выполнение задания',
      'en': 'Completing a task',
    },
    'hr52i0pn': {
      'ru': 'Напишите свой ответ ',
      'en': 'Write your answer',
    },
    '5k0fbvyy': {
      'ru': 'Загрузить медиа',
      'en': 'Download media',
    },
    'tnjpef0c': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // startChat
  {
    'dlvomxqu': {
      'ru': 'Начать чать',
      'en': 'start chat',
    },
    'xzb4z92q': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // noticePageCreate
  {
    'w79lxyhn': {
      'ru': 'Опишите свои чувства...',
      'en': 'Describe your feelings...',
    },
  },
  // noticePageView
  {
    'vgxbzaef': {
      'ru': 'Опишите свои чувства...',
      'en': 'Describe your feelings...',
    },
  },
  // moreAudio
  {
    '28oo7uue': {
      'ru': 'Вложенные файлы',
      'en': 'Attached files',
    },
    'x3ffzwuv': {
      'ru': 'Задания для выполнения',
      'en': 'Tasks to complete',
    },
  },
  // Miscellaneous
  {
    '20q0ksmy': {
      'ru': '',
      'en': '',
    },
    'kv59no47': {
      'ru': '',
      'en': '',
    },
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
    'ogwzir23': {
      'ru': 'Выйти',
      'en': 'Quit',
    },
    'ugez42w4': {
      'ru': 'Удалить аккаунт',
      'en': 'Delete account',
    },
    'g455pxao': {
      'ru': 'Чат',
      'en': 'Chat',
    },
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
    '2erhjcoc': {
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
    '9nuwdoc9': {
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
          'Какую сферу жизни Вы бы хотели улучшить с помощью трансовых медитаций  от Елены Друма?',
      'en':
          'What area of life would you like to improve with Elena Druma&#39;s trance meditations?',
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
      'ru': 'Медитация',
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
      'ru': 'Шум',
      'en': 'Noise',
    },
  },
  // Practice
  {
    'dm53c3gs': {
      'ru': 'Практики',
      'en': 'practices',
    },
    'i97m60r9': {
      'ru': '5.0',
      'en': '5.0',
    },
    '77l0vuay': {
      'ru': 'Практики',
      'en': 'practices',
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
      'en': 'practices',
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
    'zeef8q8b': {
      'ru': 'Выполненные задания',
      'en': 'My notes',
    },
    'mr4gdlic': {
      'ru': 'Чаты',
      'en': 'My notes',
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
      'en': 'RU version',
    },
    '8ylwnasi': {
      'ru': 'Удалить аккаунт',
      'en': '',
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
    'uh103g5b': {
      'ru': 'Введите текст...',
      'en': 'Enter text...',
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
  // Chat
  {
    'ydg0h94j': {
      'ru': 'Психолог',
      'en': '',
    },
  },
  // taskPage
  {
    'vcegaq9i': {
      'ru': 'Задания',
      'en': '',
    },
    'qf89ilbo': {
      'ru': 'Выполнить',
      'en': '',
    },
    'ny6smh4z': {
      'ru': 'Обратная связь',
      'en': '',
    },
    '0hmoeiio': {
      'ru': 'Home',
      'en': '',
    },
  },
  // completeTask
  {
    'vo5st0ps': {
      'ru': 'Выполнение задания',
      'en': '',
    },
    'e7pq9gur': {
      'ru': 'Напишите свой ответ ',
      'en': 'Enter text...',
    },
    'fbp4q19v': {
      'ru': 'Загрузить медиа',
      'en': '',
    },
    '6gquu5gp': {
      'ru': 'Home',
      'en': '',
    },
  },
  // allCompleteTasks
  {
    'f340yas2': {
      'ru': 'Мои задания',
      'en': 'My notes',
    },
    'f9rvaluv': {
      'ru': 'Home',
      'en': 'Home',
    },
  },
  // completedTask
  {
    'yflq9dp1': {
      'ru': 'Выполненное задание',
      'en': '',
    },
    'a0e464wy': {
      'ru': 'Напишите свой ответ ',
      'en': 'Enter text...',
    },
    '2tua4y3f': {
      'ru': 'Загруженное медиа',
      'en': '',
    },
    'whwwis5i': {
      'ru': 'Обратная связь',
      'en': '',
    },
    '4ka7psit': {
      'ru': 'Home',
      'en': '',
    },
  },
  // filesAudioPage
  {
    '6dxjgvya': {
      'ru': 'Вложенные файлы',
      'en': '',
    },
    'kpavn6h5': {
      'ru': 'Home',
      'en': '',
    },
  },
  // chatPage
  {
    '9fq50enk': {
      'ru': 'Чаты',
      'en': '',
    },
  },
  // noticePageCreate
  {
    'w79lxyhn': {
      'ru': 'Опишите свои чувства...',
      'en': 'Enter text...',
    },
  },
  // noticePageView
  {
    'vgxbzaef': {
      'ru': 'Опишите свои чувства...',
      'en': 'Enter text...',
    },
  },
  // moreAudio
  {
    '28oo7uue': {
      'ru': 'Вложенные файлы',
      'en': '',
    },
    'x3ffzwuv': {
      'ru': 'Задания для выполнения',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '20q0ksmy': {
      'ru': '',
      'en': '',
    },
    'kv59no47': {
      'ru': '',
      'en': '',
    },
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
