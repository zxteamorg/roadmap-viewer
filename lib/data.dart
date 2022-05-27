class Roadmap {
  final String title;
  final List<RoadmapPhase> phases;
  const Roadmap(this.title, this.phases);
}

class RoadmapPhase {
  final String title;
  final Uri image;

  RoadmapPhase(this.title, this.image);
}

abstract class DataSource {
  factory DataSource() {
    return const _DataSourceMock();
  }

  const DataSource._();

  Future<Roadmap> loadData();
}

class _DataSourceMock extends DataSource {
  const _DataSourceMock() : super._();

  @override
  Future<Roadmap> loadData() async {
    await Future.delayed(Duration(seconds: 2));

    final Roadmap roadmap = Roadmap("My Super Roadmap", [
      RoadmapPhase(
          "2019",
          Uri.parse(
              "https://p0.pikist.com/photos/414/3/animals-meerkat-mammal-fur-sweet-charming-small-guard-sit.jpg")),
      RoadmapPhase(
          "2020",
          Uri.parse(
              "https://media.4-paws.org/e/8/2/7/e82789b9dc8a986d3b61c0aa7610affeecb93933/VIER%20PFOTEN_2015-04-27_010-1927x1333.jpg")),
      RoadmapPhase("2021",
          Uri.parse("https://image.posterlounge.com/images/l/1891235.jpg")),
      RoadmapPhase(
          "2022",
          Uri.parse(
              "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_4x3.jpg")),
      RoadmapPhase(
          "2023",
          Uri.parse(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg")),
    ]);

    return roadmap;
  }
}
