typ1 = MetaType.new(sid: 'address', title: 'Address')
typ1.meta_type_properties = [
  MetaTypeProperty.new(
    sid:               'firstname',
    label:             'First Name',
    property_type_sid: 'string',
    required:          true
  ),
  MetaTypeProperty.new(
    sid:               'lastname',
    label:             'Last Name',
    property_type_sid: 'string',
    required:          true
  ),
  MetaTypeProperty.new(
    sid:               'gender',
    label:             'Gender',
    property_type_sid: 'string',
    choices:           'female||male||unspecified'
  ),
  MetaTypeProperty.new(
    sid:               'birthday',
    label:             'Birthday',
    property_type_sid: 'date'
  ),
  MetaTypeProperty.new(
    sid:               'mood',
    label:             'Mood',
    property_type_sid: 'string',
    default_value:     'mostly happy'
  )
]
typ1.save!

typ2 = MetaType.new(sid: 'kitchen_sink', title: 'Kitchen Sink')
typ2.meta_type_properties = [
  MetaTypeProperty['firstname'],
  MetaTypeProperty.new(
    sid:               'descr',
    label:             'description',
    property_type_sid: 'text'
  ),
  MetaTypeProperty.new(
    sid:               'active',
    label:             'Active?',
    property_type_sid: 'boolean',
    default_value:     true
  ),
  MetaTypeProperty.new(
    sid:               'somedate',
    label:             'Some Date',
    property_type_sid: 'date'
  ),
  MetaTypeProperty.new(
    sid:               'choice',
    label:             'Some Choices',
    property_type_sid: 'string',
    choices:           'this||that||other||none||dunno||Who cares, anyway?'
  )
]
typ2.save!