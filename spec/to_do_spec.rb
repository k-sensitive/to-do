require('rspec')
require('to_do')

describe('ToDo') do
  describe('#save') do
    it('adds a task to the array of saved tasks') do
      test_task = Task.new('wash the lion')
      test_task.save()
      expect(Task.all()).to(eq(test_task))
    end
  end
end
