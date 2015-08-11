require('rspec')
require('task')

describe(Task) do
  describe('#description') do
    it("lets you give it a description") do
      test_task = Task.new("walk the dog")
      expect(test_task.description()).to(eq("walk the dog"))
    end
  end
end
