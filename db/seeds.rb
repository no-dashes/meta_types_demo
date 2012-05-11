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

Thing.create!(
  title: 'Address Example',
  meta_type: typ1,
  properties_attributes: {
    firstname: 'Santa',
    lastname:  'Clause',
    gender:    'unspecified',
    birthday:  Date.today-1.year,
    mood:      'rednosed'
})

Thing.create!(
  title: "Kitchen Sink Example",
  meta_type: typ2,
  properties_attributes: {
    firstname: 'Kitchysinky',
    descr:     'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    active:    true,
    somedate:  Date.today - 1.year - 1.month - 1.day,
    choice:    'dunno'
  }
)