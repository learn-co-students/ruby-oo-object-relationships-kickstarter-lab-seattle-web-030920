require 'pry'
require_relative '../lib/backer.rb'
require_relative '../lib/project.rb'
require_relative '../lib/project_backer.rb'

#backers
b1 = Backer.new("john")
b2 = Backer.new('jessica')
b3 = Backer.new('lexi')
b4 = Backer.new('Babafet')

water_pur = Project.new("Water Purification")
solar = Project.new("Solar Panels")

b1.back_project("Water Purification")
b1.back_project("Solar Panels")
b2.back_project("Solar Panels")


water_pur.add_backer(b4)
water_pur.add_backer(b3)
water_pur.add_backer(b2)

solar.add_backer(b4)
solar.add_backer(b3)

water_pur.backers 
