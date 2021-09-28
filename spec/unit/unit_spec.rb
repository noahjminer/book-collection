# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(author: 'harry potter')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without an author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(published: '2021-09-09')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a date' do
        subject.published = nil
        expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(prices: '324.2')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a price' do
        subject.prices = nil
        expect(subject).not_to be_valid
    end
end
