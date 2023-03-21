class Meta {
  int? total;
  int? perPage;
  int? currentPage;
  int? firstPage;
  int? lastPage;
  int? from;
  int? to;
  List<String>? columns;
  List<String>? relations;
  List<int>? pageSizes;

  Meta(
      {this.total,
      this.perPage,
      this.currentPage,
      this.firstPage,
      this.lastPage,
      this.from,
      this.to,
      this.columns,
      this.relations,
      this.pageSizes});
      Meta.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    firstPage = json['first_page'];
    lastPage = json['last_page'];
    from = json['from'];
    to = json['to'];
    columns = json['columns'].cast<String>();
    relations = json['relations'].cast<String>();
    pageSizes = json['page_sizes'].cast<int>();
  }
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    data['first_page'] = this.firstPage;
    data['last_page'] = this.lastPage;
    data['from'] = this.from;
    data['to'] = this.to;
    data['columns'] = this.columns;
    data['relations'] = this.relations;
    data['page_sizes'] = this.pageSizes;
    return data;
  }
}