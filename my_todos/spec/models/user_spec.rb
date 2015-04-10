require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:todos) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }

  describe '#name_only?' do
    it 'returns true if description is blank' do
      todo = create(:todo)
      expect(todo.name_only?).to eq(true)
    end

    it 'returns false if description is non empty' do
      todo = create(:todo, description: 'i love cooking')
      expect(todo.name_only?).to eq(false)
    end
  end

  describe '#display_text' do
    let(:todo) { create(:todo) }
    context 'no tags' do
      it 'returns the name' do
        expect(todo.display_text).to eq 'Cook Dinner'
      end
    end

    context 'one tag' do
      before { todo.tags.create(name: 'home') }
      it 'returns the name with tag' do
        expect(todo.display_text).to eq 'Cook Dinner (tag: home)'
      end
    end

    context 'less than 4 tags' do
      before do
        todo.tags.create(name: 'home')
        todo.tags.create(name: 'urgent')
      end
      it 'returns the name with tags' do
        expect(todo.display_text).to eq 'Cook Dinner (tags: home, urgent)'
      end
    end

    context 'greater than equal to 4 tags' do
      before do
        todo.tags.create(name: 'home')
        todo.tags.create(name: 'urgent')
        todo.tags.create(name: 'help')
        todo.tags.create(name: 'book')
        todo.tags.create(name: 'patience')
      end
      it 'returns the name with tags' do
        expect(todo.display_text).to eq 'Cook Dinner (tags: home, urgent, help, book, more...)'
      end
    end
  end
end
