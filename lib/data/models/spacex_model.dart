// To parse this JSON data, do
//
//     final spacexModel = spacexModelFromJson(jsonString);

import 'dart:convert';

SpacexModel spacexModelFromJson(String str) => SpacexModel.fromJson(json.decode(str));

String spacexModelToJson(SpacexModel data) => json.encode(data.toJson());

class SpacexModel {
  SpacexModel({
    this.fairings,
    required this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    required this.net,
    this.window,
    required this.rocket,
    required this.success,
    required this.failures,
    this.details,
    required this.crew,
    required this.ships,
    required this.capsules,
    required this.payloads,
    required this.launchpad,
    required this.flightNumber,
    required this.name,
    required this.dateUtc,
    required this.dateUnix,
    required this.dateLocal,
    required this.datePrecision,
    required this.upcoming,
    required this.cores,
    required this.autoUpdate,
    required this.tbd,
    required this.launchLibraryId,
    required this.id,
  });

  dynamic fairings;
  Links links;
  dynamic staticFireDateUtc;
  dynamic staticFireDateUnix;
  bool net;
  dynamic window;
  String rocket;
  bool success;
  List<dynamic> failures;
  dynamic details;
  List<Crew> crew;
  List<dynamic> ships;
  List<String> capsules;
  List<String> payloads;
  String launchpad;
  int flightNumber;
  String name;
  DateTime dateUtc;
  int dateUnix;
  DateTime dateLocal;
  String datePrecision;
  bool upcoming;
  List<Core> cores;
  bool autoUpdate;
  bool tbd;
  String launchLibraryId;
  String id;

  factory SpacexModel.fromJson(Map<String, dynamic> json) => SpacexModel(
    fairings: json["fairings"],
    links: Links.fromJson(json["links"]),
    staticFireDateUtc: json["static_fire_date_utc"],
    staticFireDateUnix: json["static_fire_date_unix"],
    net: json["net"],
    window: json["window"],
    rocket: json["rocket"],
    success: json["success"],
    failures: List<dynamic>.from(json["failures"].map((x) => x)),
    details: json["details"],
    crew: List<Crew>.from(json["crew"].map((x) => Crew.fromJson(x))),
    ships: List<dynamic>.from(json["ships"].map((x) => x)),
    capsules: List<String>.from(json["capsules"].map((x) => x)),
    payloads: List<String>.from(json["payloads"].map((x) => x)),
    launchpad: json["launchpad"],
    flightNumber: json["flight_number"],
    name: json["name"],
    dateUtc: DateTime.parse(json["date_utc"]),
    dateUnix: json["date_unix"],
    dateLocal: DateTime.parse(json["date_local"]),
    datePrecision: json["date_precision"],
    upcoming: json["upcoming"],
    cores: List<Core>.from(json["cores"].map((x) => Core.fromJson(x))),
    autoUpdate: json["auto_update"],
    tbd: json["tbd"],
    launchLibraryId: json["launch_library_id"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "fairings": fairings,
    "links": links.toJson(),
    "static_fire_date_utc": staticFireDateUtc,
    "static_fire_date_unix": staticFireDateUnix,
    "net": net,
    "window": window,
    "rocket": rocket,
    "success": success,
    "failures": List<dynamic>.from(failures.map((x) => x)),
    "details": details,
    "crew": List<dynamic>.from(crew.map((x) => x.toJson())),
    "ships": List<dynamic>.from(ships.map((x) => x)),
    "capsules": List<dynamic>.from(capsules.map((x) => x)),
    "payloads": List<dynamic>.from(payloads.map((x) => x)),
    "launchpad": launchpad,
    "flight_number": flightNumber,
    "name": name,
    "date_utc": dateUtc.toIso8601String(),
    "date_unix": dateUnix,
    "date_local": dateLocal.toIso8601String(),
    "date_precision": datePrecision,
    "upcoming": upcoming,
    "cores": List<dynamic>.from(cores.map((x) => x.toJson())),
    "auto_update": autoUpdate,
    "tbd": tbd,
    "launch_library_id": launchLibraryId,
    "id": id,
  };
}

class Core {
  Core({
    required this.core,
    required this.flight,
    required this.gridfins,
    required this.legs,
    required this.reused,
    required this.landingAttempt,
    required this.landingSuccess,
    required this.landingType,
    required this.landpad,
  });

  String core;
  int flight;
  bool gridfins;
  bool legs;
  bool reused;
  bool landingAttempt;
  bool landingSuccess;
  String landingType;
  String landpad;

  factory Core.fromJson(Map<String, dynamic> json) => Core(
    core: json["core"],
    flight: json["flight"],
    gridfins: json["gridfins"],
    legs: json["legs"],
    reused: json["reused"],
    landingAttempt: json["landing_attempt"],
    landingSuccess: json["landing_success"],
    landingType: json["landing_type"],
    landpad: json["landpad"],
  );

  Map<String, dynamic> toJson() => {
    "core": core,
    "flight": flight,
    "gridfins": gridfins,
    "legs": legs,
    "reused": reused,
    "landing_attempt": landingAttempt,
    "landing_success": landingSuccess,
    "landing_type": landingType,
    "landpad": landpad,
  };
}

class Crew {
  Crew({
    required this.crew,
    required this.role,
  });

  String crew;
  String role;

  factory Crew.fromJson(Map<String, dynamic> json) => Crew(
    crew: json["crew"],
    role: json["role"],
  );

  Map<String, dynamic> toJson() => {
    "crew": crew,
    "role": role,
  };
}

class Links {
  Links({
    required this.patch,
    required this.reddit,
    required this.flickr,
    this.presskit,
    required this.webcast,
    required this.youtubeId,
    this.article,
    required this.wikipedia,
  });

  Patch patch;
  Reddit reddit;
  Flickr flickr;
  dynamic presskit;
  String webcast;
  String youtubeId;
  dynamic article;
  String wikipedia;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    patch: Patch.fromJson(json["patch"]),
    reddit: Reddit.fromJson(json["reddit"]),
    flickr: Flickr.fromJson(json["flickr"]),
    presskit: json["presskit"],
    webcast: json["webcast"],
    youtubeId: json["youtube_id"],
    article: json["article"],
    wikipedia: json["wikipedia"],
  );

  Map<String, dynamic> toJson() => {
    "patch": patch.toJson(),
    "reddit": reddit.toJson(),
    "flickr": flickr.toJson(),
    "presskit": presskit,
    "webcast": webcast,
    "youtube_id": youtubeId,
    "article": article,
    "wikipedia": wikipedia,
  };
}

class Flickr {
  Flickr({
    required this.small,
    required this.original,
  });

  List<dynamic> small;
  List<dynamic> original;

  factory Flickr.fromJson(Map<String, dynamic> json) => Flickr(
    small: List<dynamic>.from(json["small"].map((x) => x)),
    original: List<dynamic>.from(json["original"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "small": List<dynamic>.from(small.map((x) => x)),
    "original": List<dynamic>.from(original.map((x) => x)),
  };
}

class Patch {
  Patch({
    required this.small,
    required this.large,
  });

  String small;
  String large;

  factory Patch.fromJson(Map<String, dynamic> json) => Patch(
    small: json["small"],
    large: json["large"],
  );

  Map<String, dynamic> toJson() => {
    "small": small,
    "large": large,
  };
}

class Reddit {
  Reddit({
    this.campaign,
    required this.launch,
    this.media,
    this.recovery,
  });

  dynamic campaign;
  String launch;
  dynamic media;
  dynamic recovery;

  factory Reddit.fromJson(Map<String, dynamic> json) => Reddit(
    campaign: json["campaign"],
    launch: json["launch"],
    media: json["media"],
    recovery: json["recovery"],
  );

  Map<String, dynamic> toJson() => {
    "campaign": campaign,
    "launch": launch,
    "media": media,
    "recovery": recovery,
  };
}
