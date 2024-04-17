class Device {
   String? deviceType;

  void checkDeviceType() {
    if (deviceType == null) {
      deviceType = "Android"; // Initialisation avant utilisation
    }

    // ...
  }
}

