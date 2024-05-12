enum Routes {
  registerPage(route: '/register_page'),
  usersettingsPage(route: '/usersettings_page'),
  completedcoursePage(route: '/completedcourse_page');
  

  const Routes({required this.route});

  final String route;
}