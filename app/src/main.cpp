#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

auto main(int argc, char* argv[]) -> int {
  QGuiApplication app(argc, argv);
  QQuickStyle::setStyle("Material");
  QQmlApplicationEngine engine;
  engine.loadFromModule("EGP", "Main");

  return app.exec();
}