require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test 'Title is a required field' do
    article = Article.create(link: 'link')

    assert_not article.save
    assert_not article.valid?

    assert_not article.errors[:link].any?
    assert article.errors[:title].any?
  end

  test 'Link is a required field' do
    article = Article.create(title: 'title')

    assert_not article.save
    assert_not article.valid?

    assert_not article.errors[:title].any?
    assert article.errors[:link].any?
  end
end