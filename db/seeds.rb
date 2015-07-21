# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Customer.create(
                      first_name: "Viksit", 
                      last_name:  "Arora",
                      phone:      "9156420350",
                      phone_alt:  "9988502050",
                    )

a1 = Address.create(
                      address_type:   1,
                      property_type:  2,
                      entity_id:      1,
                      line1:          "# 904",
                      line2:          "Allure Society",
                      line3:          "Kapil Malhar Society",
                      line4:          "Baner",
                      line5:          "Pune",
                      line6:          "411007"
                    )


sp1 = ServiceProvider.create(
                              first_name: "Santosh", 
                              last_name:  "Mane",
                              # phone:      "9156420350",
                              # phone_alt:  "9988502050",
                              active:     1,
                              regular:    1,
                              smartphone: 1,
                              app:        0
                            )

ar = Area.create(
                  name: "Aundh",
                  city: "Pune",
                  pin_code: "411007",
                  population_size: "12312",
                  societies_count:  98
                )

ft = FieldType.create(
                  name: "Plumbing"
                )
sk = Skill.create(
                    name: "Install: Toilet Set"
                  )
spsks = SpSkillSet.create(
                            service_provider_id: 1,
                            skill_id: 1,
                            primary: false
                          )

spfs = SpFieldTypeSet.create(
                          service_provider_id: 1,
                          field_type_id: 1,
                          primary: true
                        )

spas = SpAreaSet.create(
                          service_provider_id: 1,
                          area_id: 1,
                          primary: true
                        )

fix = Fix.create(
                  customer_id: 1,
                  comment: "needs service by end of day",
                  history: "...",
                  field_type_id: 1
                )

as = Assignment.create(
                          service_provider_id: 1,
                          fix_id: 1
                        )

ap = Appointment.create(
                          service_provider_id: 1,
                          fix_id: 1,
                          comment: "be there on time",
                          time: Time.now,
                        )