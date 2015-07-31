# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





customers = [
              {         
                first_name: "Viksit", 
                last_name:  "Arora",
                phone:      "9156420350",
                phone_alt:  "9988502050"
              },
              {         
                first_name: "Bhushan", 
                last_name:  "Lodha",
                phone:      "9975454384",
                phone_alt:  "9988502050"
              }
            ]



addresses = [
              {
                address_type:   1,
                property_type:  2,
                entity_id:      1,
                line1:          "# 904",
                line2:          "Allure Society",
                line3:          "Kapil Malhar Society",
                line4:          "Baner",
                line5:          "Pune",
                line6:          "411007"
              },

              {
                address_type:   1,
                property_type:  2,
                entity_id:      2,
                line1:          "# 904",
                line2:          "Allure Society",
                line3:          "Kapil Malhar Society",
                line4:          "Baner",
                line5:          "Pune",
                line6:          "411007"
              }
            ]



service_providers = [
                      {
                        first_name: "Santosh", 
                        last_name:  "Mane",
                        phone:      "9156420350",
                        phone_alt:  "9888193362",
                        active:     1,
                        regular:    1,
                        smartphone: 1,
                        app:        0
                      },

                      {
                        first_name: "Santosh", 
                        last_name:  "Nagthane",
                        phone:      "9156420350",
                        phone_alt:  "9888193362",
                        active:     1,
                        regular:    1,
                        smartphone: 1,
                        app:        0
                      },

                      {
                        first_name: "Santosh", 
                        last_name:  "Nagthane",
                        phone:      "9156420350",
                        phone_alt:  "9888193362",
                        active:     1,
                        regular:    1,
                        smartphone: 1,
                        app:        0                        
                      },

                      {
                        first_name: "Shiva", 
                        last_name:  "Bhadre",
                        phone:      "9156420350",
                        phone_alt:  "9888193362",
                        active:     1,
                        regular:    1,
                        smartphone: 1,
                        app:        0                        
                      },

                      {
                        first_name: "Kiran", 
                        last_name:  "Bhadre",
                        phone:      "9156420350",
                        phone_alt:  "9888193362",
                        active:     1,
                        regular:    1,
                        smartphone: 1,
                        app:        0
                      }

                    ]



areas = [
          {
            name: "Aundh",
            city: "Pune",
            pin_code: "411007",
            population_size: "12312",
            societies_count:  98
          },

          {
            name: "Baner",
            city: "Pune",
            pin_code: "411007",
            population_size: "12312",
            societies_count:  98
          }          
        ]




field_types = [
                {
                  name: "Plumbing"
                },
                {
                  name: "Electrical"
                },
                {
                  name: "Carpenting"
                },
                {
                  name: "Pest Control"
                },
              ]




skills =   [
                {
                  name: "Install: Toilet Set",
                  field_type_id: 1
                },
                {
                  name: "Install: AC",
                  field_type_id: 2
                },
                {
                  name: "Bedbugs: Premium",
                  field_type_id: 4
                },
                {
                  name: "Install: Fan",
                  field_type_id: 2
                }
              ]



sp_skill_sets = [
                  {
                    service_provider_id: 1,
                    skill_id: 1,
                    primary: true
                  },
                  {
                    service_provider_id: 2,
                    skill_id: 2,
                    primary: true
                  },
                  {
                    service_provider_id: 3,
                    skill_id: 3,
                    primary: true
                  },
                  {
                    service_provider_id: 4,
                    skill_id: 4,
                    primary: false
                  },
                ]



sp_field_type_sets = [
                        {
                          service_provider_id: 1,
                          field_type_id: 1,
                          primary: true
                        },
                        {
                          service_provider_id: 1,
                          field_type_id: 2,
                          primary: true
                        },
                        {
                          service_provider_id: 1,
                          field_type_id: 3,
                          primary: true
                        },

                      ]


sp_area_sets       =  [
                        {
                          service_provider_id: 1,
                          area_id: 1,
                          primary: true
                        }
                      ]




fixes = [
          {
            customer_id: 1,
            comment: "needs service by end of day",
            field_type_id: 1,            
          },
          {
            customer_id: 2,
            comment: "can be done by weekend",
            field_type_id: 2,            
          }
        ]




assignments = [
                {
                  fix_id: 1,
                  service_provider_id: 1
                },
                {
                  fix_id: 2,
                  service_provider_id: 2
                }
              ]



appointments =  [
                  {
                    fix_id: 1,
                    service_provider_id: 1,
                    comment: "be there on time",
                    time: Time.now,
                  },

                  {
                    fix_id: 2,
                    service_provider_id: 1,
                    comment: "new",
                    time: Time.now,
                  }
                ]




customers.each { |e|  Customer.create(e) }

addresses.each { |e|  Address.create(e) }

service_providers.each { |e|  ServiceProvider.create(e) }

areas.each { |e|  Area.create(e) }

field_types.each { |e|  FieldType.create(e) }

skills.each { |e|  Skill.create(e) }

sp_skill_sets.each { |e|  SpSkillSet.create(e) }

sp_field_type_sets.each { |e|  SpFieldTypeSet.create(e) }

sp_area_sets.each { |e|  SpAreaSet.create(e) }

fixes.each { |e|  Fix.create(e) }

assignments.each { |e|  Assignment.create(e) }

appointments.each { |e|  Appointment.create(e) }
