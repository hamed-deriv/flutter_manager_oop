abstract class BaseService {
  BaseService({required this.name, required this.duration});

  final String name;
  final int duration;

  String get getAsset => 'assets/ic_${name.split(' ').first.toLowerCase()}.png';
}
