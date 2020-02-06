# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(description: 'Pre Kinder')
Category.create(description: 'Kinder')
Category.create(description: 'Tots')
Category.create(description: 'Minis')
Category.create(description: 'Espoir')
Category.create(description: 'Cadet')
Category.create(description: 'Youth')
Category.create(description: 'Junior')
Category.create(description: 'Senior')

FreeSkate.create(description: '1')
FreeSkate.create(description: '2')
FreeSkate.create(description: '3')
FreeSkate.create(description: '4')
FreeSkate.create(description: '5')

CompulsoryFigure.create(description: '1')
CompulsoryFigure.create(description: '2')
CompulsoryFigure.create(description: '3')
CompulsoryFigure.create(description: '4')
CompulsoryFigure.create(description: '5')
