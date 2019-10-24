defmodule ContentTree do
  alias ContentTree.{ContentItem, ContentTopic}

  def build(_topics, _items) do
    []
  end

  def test_output do
    [
      %ContentTopic{
        id: "493bcecc-2e00-455f-abaa-88639e71bf16",
        name: "The Lord of the Rings",
        content_topic_id: nil,
        content_items: [],
        children: [
          %ContentTopic{
            id: "c633e136-680b-4247-b897-9e088dd367a2",
            name: "The Return of the King",
            content_topic_id: "493bcecc-2e00-455f-abaa-88639e71bf16",
            content_items: [
              %ContentItem{
                id: "9d44db56-307e-4356-b8f0-d13b47803d0f",
                title: "The Battle of the Pelennor Fields",
                content_topic_id: "c633e136-680b-4247-b897-9e088dd367a2"
              },
              %ContentItem{
                id: "d8911403-7b43-4f81-9536-db086b1edada",
                title: "The Grey Havens",
                content_topic_id: "c633e136-680b-4247-b897-9e088dd367a2"
              }
            ],
            children: [
              %ContentTopic{
                id: "cdc827c8-8a4d-4c8a-b9a7-b05abd123574",
                name: "Annals of the Kings and Rulers",
                content_topic_id: "c633e136-680b-4247-b897-9e088dd367a2",
                content_items: [
                  %ContentItem{
                    id: "9e0a67cf-58c5-4954-a5c9-07118c8d7ee7",
                    title: "The Númenórean Kings",
                    content_topic_id: "cdc827c8-8a4d-4c8a-b9a7-b05abd123574"
                  }
                ]
              }
            ]
          }
        ]
      },
      %ContentTopic{
        id: "c165f9ab-2536-4d73-b684-4cfe851caf66",
        name: "Moby Dick",
        content_topic_id: nil,
        content_items: [
          %ContentItem{
            id: "e50caee8-c5d0-464a-b021-eab272953d54",
            title: "Going Aboard",
            content_topic_id: "c165f9ab-2536-4d73-b684-4cfe851caf66"
          }
        ],
        children: []
      }
    ]
  end
end
