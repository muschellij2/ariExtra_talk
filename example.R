library(dplyr)
result = ariExtra::gs_to_ari(
  "1Opt6lv7rRi7Kzb9bI0u3SWX1pSz1k7botaphTuFYgNs",
  voice = "Joanna",
  service = "amazon")

result = ariExtra::gs_to_ari(
  "1Opt6lv7rRi7Kzb9bI0u3SWX1pSz1k7botaphTuFYgNs",
  voice = "en-US-Standard-C",
  service = "google")

voices = text2speech::tts_google_voices()
voices = voices %>%
  filter(language_code == "en-US")
result = ariExtra::gs_to_ari(
  "1Opt6lv7rRi7Kzb9bI0u3SWX1pSz1k7botaphTuFYgNs",
  voice = "en-US-Wavenet-C",
  service = "google")
