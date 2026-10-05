#include <cstdint>
#include <string>
#include <variant>
#include <vector>

#include "datastructures.h"

auto main(int argc, char* argv[]) -> int {
  AddCharacter("Alice", 1.0f, 1.0f, 0.5f, 0.8f, 3);
  EditCharacter(0, static_cast<std::int8_t>(RequestType::CHARACTER_SIZE), 2.0f);
  EditCharacter(0, static_cast<std::int8_t>(RequestType::NAME),
                std::string("Bob"));
  EditCharacter(
      0, static_cast<std::int8_t>(RequestType::HALO_FLICKER_FREQUENCY), 5);
  return 0;
}