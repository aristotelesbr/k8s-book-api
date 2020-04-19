# frozen_string_literal: true

n = 1
20.times do
  n += 1
  Book.create(title: "Book #{n}", description: 'some description')
end
