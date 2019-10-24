defmodule ContentTreeTest do
  use ExUnit.Case
  alias ContentTree.{ContentItem, ContentTopic}

  test "builds a complex tree" do
    topics = ContentTopic.test_data()
    items = ContentItem.test_data()

    assert ContentTree.build(topics, items) == ContentTree.test_output()
  end

  test "builds a simple tree" do
    topics = [%ContentTopic{id: "1", name: "Topic"}]
    items = [%ContentItem{id: "a", title: "Item", content_topic_id: "1"}]

    output = [
      %ContentTopic{
        children: [],
        content_items: [%ContentItem{content_topic_id: "1", id: "a", title: "Item"}],
        content_topic_id: nil,
        id: "1",
        name: "Topic"
      }
    ]

    assert ContentTree.build(topics, items) == output
  end
end
