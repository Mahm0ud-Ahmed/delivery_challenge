enum ApiRoute {
  login('/CheckDeliveryLogin'),
  deliveryStatues('/GetDeliveryStatusTypes'),
  delivery('/GetDeliveryBillsItems');

  final String route;

  const ApiRoute(this.route);
}

enum DeviceScreenType { mobile, tablet }
enum ApiRequestType { get, post }
