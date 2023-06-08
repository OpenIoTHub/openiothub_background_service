#include "include/openiothub_background_service/openiothub_background_service_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "openiothub_background_service_plugin.h"

void OpeniothubBackgroundServicePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  openiothub_background_service::OpeniothubBackgroundServicePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
