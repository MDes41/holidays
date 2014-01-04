# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/ca.yaml, data/mx.yaml, data/us.yaml, data/north_america_informal.yaml
class North_americaDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_north_america
{Date.civil(2008,1,1) => 'New Year\'s Day',
 Date.civil(2008,3,21) => 'Good Friday',
 Date.civil(2013,3,31) => 'Easter Sunday',
 Date.civil(2008,3,24) => 'Easter Monday',
 Date.civil(2008,5,19) => 'Victoria Day',
 Date.civil(2008,7,1) => 'Canada Day',
 Date.civil(2008,9,1) => 'Labour Day',
 Date.civil(2008,10,13) => 'Thanksgiving',
 Date.civil(2008,11,11) => 'Remembrance Day',
 Date.civil(2008,12,25) => 'Christmas Day',
 Date.civil(2008,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ca, :informal)[0] || {})[:name]
end

# Family Day in BC
[ Date.civil(2013,2,11), Date.civil(2014,2,10) ].each do |date|
  assert_equal 'BC Family Day', Holidays.on(date, :ca_bc)[0][:name]
end

# Victoria Day
[Date.civil(2004,5,24), Date.civil(2005,5,23), Date.civil(2006,5,22),
 Date.civil(2007,5,21), Date.civil(2008,5,19)].each do |date|
  assert_equal 'Victoria Day', Holidays.on(date, :ca)[0][:name]
end


{Date.civil(2007,1,1) => 'Año nuevo', 
 Date.civil(2007,2,5) => 'Día de la Constitución', 
 Date.civil(2007,5,1) => 'Día del Trabajo',
 Date.civil(2007,5,5) => 'Cinco de Mayo',
 Date.civil(2007,9,16) => 'Día de la Independencia',
 Date.civil(2007,11,1) => 'Todos los Santos',
 Date.civil(2007,11,2) => 'Los Fieles Difuntos',
 Date.civil(2007,11,19) => 'Día de la Revolución',
 Date.civil(2007,12,25) => 'Navidad'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :mx, :informal)[0] || {})[:name]
end  

{Date.civil(2008,1,1) => 'New Year\'s Day', 
 Date.civil(2008,1,21) => 'Martin Luther King, Jr. Day',
 Date.civil(2008,2,18) => 'Presidents\' Day',
 Date.civil(2008,5,26) => 'Memorial Day',
 Date.civil(2008,7,4) => 'Independence Day',
 Date.civil(2008,9,1) => 'Labor Day',
 Date.civil(2008,10,13) => 'Columbus Day',
 Date.civil(2008,11,11) => 'Veterans Day',
 Date.civil(2008,11,27) => 'Thanksgiving',
 Date.civil(2008,12,25) => 'Christmas Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us)[0] || {})[:name]
end


{Date.civil(2013,2,2) => 'Groundhog Day',
 Date.civil(2013,2,14) => 'Valentine\'s Day',
 Date.civil(2013,3,17) => 'St. Patrick\'s Day',
 Date.civil(2013,4,1) => 'April Fool\'s Day',
 Date.civil(2013,4,22) => 'Earth Day',
 Date.civil(2013,5,12) => 'Mother\'s Day',
 Date.civil(2013,5,18) => 'Armed Forces Day',
 Date.civil(2013,6,16) => 'Father\'s Day',
 Date.civil(2013,10,31) => 'Halloween'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us, :informal)[0] || {})[:name]
end

  end
end
