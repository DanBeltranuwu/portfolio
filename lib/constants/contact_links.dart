/// External contact destinations used across the portfolio.
abstract final class ContactLinks {
  static Uri get mailto => Uri(
    scheme: 'mailto',
    path: 'dmbeltranr1@gmail.com',
    queryParameters: const {'subject': 'Portfolio opportunity'},
  );

  static final Uri linkedIn = Uri.parse(
    'https://www.linkedin.com/in/daniel-beltran-r/',
  );

  /// WhatsApp chat for +57 319 334 2940
  static final Uri whatsApp = Uri.parse('https://wa.me/573193342940');
}
