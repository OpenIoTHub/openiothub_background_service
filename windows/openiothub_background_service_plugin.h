#ifndef FLUTTER_PLUGIN_OPENIOTHUB_BACKGROUND_SERVICE_PLUGIN_H_
#define FLUTTER_PLUGIN_OPENIOTHUB_BACKGROUND_SERVICE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace openiothub_background_service {

class OpeniothubBackgroundServicePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OpeniothubBackgroundServicePlugin();

  virtual ~OpeniothubBackgroundServicePlugin();

  // Disallow copy and assign.
  OpeniothubBackgroundServicePlugin(const OpeniothubBackgroundServicePlugin&) = delete;
  OpeniothubBackgroundServicePlugin& operator=(const OpeniothubBackgroundServicePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace openiothub_background_service

#endif  // FLUTTER_PLUGIN_OPENIOTHUB_BACKGROUND_SERVICE_PLUGIN_H_
