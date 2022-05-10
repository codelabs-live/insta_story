class StoryModel {
  String? profilePic;
  List<DownloadLinks>? downloadLinks;
  int? totalStories;
  String? status;
  int? statusCode;
  String? error;

  StoryModel(
      {this.profilePic,
      this.downloadLinks,
      this.totalStories,
      this.status,
      this.statusCode});

  StoryModel.withError(this.error);

  StoryModel.fromJson(Map<String, dynamic> json) {
    profilePic = json['profilePic'];
    if (json['downloadLinks'] != null) {
      downloadLinks = <DownloadLinks>[];
      json['downloadLinks'].forEach((v) {
        downloadLinks!.add(new DownloadLinks.fromJson(v));
      });
    }
    totalStories = json['totalStories'];
    status = json['status'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profilePic'] = this.profilePic;
    if (this.downloadLinks != null) {
      data['downloadLinks'] =
          this.downloadLinks!.map((v) => v.toJson()).toList();
    }
    data['totalStories'] = this.totalStories;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    return data;
  }
}

class DownloadLinks {
  int? createdAt;
  String? thumbnail;
  String? mediaType;
  String? url;
  int? mediaTypeI;
  int? expiringAt;

  DownloadLinks(
      {this.createdAt,
      this.thumbnail,
      this.mediaType,
      this.url,
      this.mediaTypeI,
      this.expiringAt});

  DownloadLinks.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    thumbnail = json['thumbnail'];
    mediaType = json['mediaType'];
    url = json['url'];
    mediaType = json['media_type'];
    expiringAt = json['expiringAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['thumbnail'] = this.thumbnail;
    data['mediaType'] = this.mediaType;
    data['url'] = this.url;
    data['media_type'] = this.mediaType;
    data['expiringAt'] = this.expiringAt;
    return data;
  }
}
