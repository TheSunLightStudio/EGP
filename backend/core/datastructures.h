#ifndef EGP_BACKEND_CORE_DATASTRUCTURES_H_
#define EGP_BACKEND_CORE_DATASTRUCTURES_H_

#include <cstdint>
#include <string>
#include <variant>
#include <vector>

 enum class EndingMethod {
  END_WITH_TIME = 0,
  END_WITH_EVENT = 1   
};
struct MoveEvent {
  int8_t character_index = -1;
  float x = 0.0f;
  float y = 0.0f;
};

struct SpeakEvent {
  int8_t character_index = -1;
  std::string content;
};

struct ImageChangeEvent {
  int8_t character_index = -1;
  std::string image_id;
};

struct SetCharacterHoleEvent {
  int8_t character_index = -1;
  float hole_size = 1.0f;
  float halo_transparency = 1.0f;
  int8_t halo_flicker_frequency = 0;
};

struct SetCharacterEvent {
  int8_t character_index = -1;
  float character_size = 1.0f;
  float character_transparency = 1.0f;
};

using Event = std::variant<MoveEvent, SpeakEvent, ImageChangeEvent, SetCharacterHoleEvent, SetCharacterEvent>;

struct Character {
  std::string name = "NULL";
  float character_size = 1.0f;
  float character_transparency = 1.0f;
  struct Halo {
    float halo_size = 1.0f;
    float halo_transparency = 1.0f;
    int8_t halo_flicker_frequency = 0;
  } halo;
};

struct Round {
  std::vector<Event> event_log;
  int ending_method = static_cast<int>(EndingMethod::END_WITH_EVENT);
};
inline std::vector<Round> round_pool;
inline std::vector<Character> characters;
#endif  // EGP_BACKEND_CORE_DATASTRUCTURES_H_