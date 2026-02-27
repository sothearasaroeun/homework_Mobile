import 'package:provider/provider.dart';
import 'data/repositories/songs/song_repository.dart';
import 'data/repositories/songs/song_repository_remote.dart';
import 'main_common.dart';

List<Provider> get providersProduction {
  return [Provider<SongRepository>(create: (context) => SongRepositoryRemote())];
}

void main() {
  mainCommon(providersProduction);
}
