class UfcMatch {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;
  UfcMatch(this.fixture, this.home, this.away, this.goal);

  factory UfcMatch.fromJson(Map<String, dynamic> json) {
    return UfcMatch(
        Fixture.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        Goal.fromJson(json['goals']));
  }
}

class Fixture {
  int id;
  String date;
  Status status;
  Fixture(this.id, this.date, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['date'], Status.fromJson(json['status']));
  }
}

class Status {
  String long;
  int elapsed;

  Status(this.long, this.elapsed);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['long'], json[('elapsed')]);
  }
}

class Team {
  int id;
  String name;
  String logo;

  Team(this.id, this.name, this.logo);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo']);
  }
}

class Goal {
  int home;
  int away;
  Goal(this.home, this.away);

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
