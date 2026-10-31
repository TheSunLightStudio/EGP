#include "EGP/GLFW.hpp"
#include <iostream>
int main() {
  try {
    EGP::GLFWWindow& window = EGP::GLFWWindow::getInstance(800, 600, "EGP");
    while (!window.shouldClose()) {
      window.pollEvents();
    }
  } catch (const std::exception& e) {
    std::cerr << "Error: " << e.what() << std::endl;
    return EXIT_FAILURE;
  }
  return EXIT_SUCCESS;
}
