class Charge {
  Charge({
      this.bookingPrice, 
      this.currentCharge, 
      this.discountCharge, 
      this.sellingPrice, 
      this.profit, 
      this.isEvent, 
      this.eventId, 
      this.highlight, 
      this.highlightId, 
      this.groupping, 
      this.grouppingId, 
      this.campaignSectionId, 
      this.campaignSection, 
      this.message,});

  Charge.fromJson(dynamic json) {
    bookingPrice = json['booking_price'];
    currentCharge = json['current_charge'];
    discountCharge = json['discount_charge'];
    sellingPrice = json['selling_price'];
    profit = json['profit'];
    isEvent = json['is_event'];
    eventId = json['event_id'];
    highlight = json['highlight'];
    highlightId = json['highlight_id'];
    groupping = json['groupping'];
    grouppingId = json['groupping_id'];
    campaignSectionId = json['campaign_section_id'];
    campaignSection = json['campaign_section'];
    message = json['message'];
  }
  num? bookingPrice;
  num? currentCharge;
  dynamic discountCharge;
  num? sellingPrice;
  num? profit;
  bool? isEvent;
  dynamic eventId;
  bool? highlight;
  dynamic highlightId;
  bool? groupping;
  dynamic grouppingId;
  dynamic campaignSectionId;
  bool? campaignSection;
  dynamic message;
Charge copyWith({  num? bookingPrice,
  num? currentCharge,
  dynamic discountCharge,
  num? sellingPrice,
  num? profit,
  bool? isEvent,
  dynamic eventId,
  bool? highlight,
  dynamic highlightId,
  bool? groupping,
  dynamic grouppingId,
  dynamic campaignSectionId,
  bool? campaignSection,
  dynamic message,
}) => Charge(  bookingPrice: bookingPrice ?? this.bookingPrice,
  currentCharge: currentCharge ?? this.currentCharge,
  discountCharge: discountCharge ?? this.discountCharge,
  sellingPrice: sellingPrice ?? this.sellingPrice,
  profit: profit ?? this.profit,
  isEvent: isEvent ?? this.isEvent,
  eventId: eventId ?? this.eventId,
  highlight: highlight ?? this.highlight,
  highlightId: highlightId ?? this.highlightId,
  groupping: groupping ?? this.groupping,
  grouppingId: grouppingId ?? this.grouppingId,
  campaignSectionId: campaignSectionId ?? this.campaignSectionId,
  campaignSection: campaignSection ?? this.campaignSection,
  message: message ?? this.message,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['booking_price'] = bookingPrice;
    map['current_charge'] = currentCharge;
    map['discount_charge'] = discountCharge;
    map['selling_price'] = sellingPrice;
    map['profit'] = profit;
    map['is_event'] = isEvent;
    map['event_id'] = eventId;
    map['highlight'] = highlight;
    map['highlight_id'] = highlightId;
    map['groupping'] = groupping;
    map['groupping_id'] = grouppingId;
    map['campaign_section_id'] = campaignSectionId;
    map['campaign_section'] = campaignSection;
    map['message'] = message;
    return map;
  }

}