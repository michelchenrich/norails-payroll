require_relative '../environment'
Environment.new.setup_persistance

PositionRecord.new(name: 'Developer', description: 'Expected to write bugs, oops, I mean code').save
PositionRecord.new(name: 'Senior Developer', description: 'Expected to not write any code at all').save
PositionRecord.new(name: 'Craftsperson', description: 'Expected to write software').save
PositionRecord.new(name: 'Master Craftsperson', description: 'Expected to write and teach others to write software').save
