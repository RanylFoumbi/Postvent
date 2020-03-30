

class Event {
  String commentId;
  String eventName;
  String beginDate;
  String endDate;
  String beginHour;
  String description;
  Object postBy;
  String averageSpendByMan;
  String averageSpendByWoman;
  String eventLocation;
  bool isPassed;
  List images;
  List<Object> comments;

  Event({
    this.commentId,
    this.eventName,
    this.beginDate,
    this.endDate,
    this.beginHour,
    this.description,
    this.postBy,
    this.averageSpendByMan,
    this.averageSpendByWoman,
    this.eventLocation,
    this.isPassed,
    this.images,
    this.comments
  });
}