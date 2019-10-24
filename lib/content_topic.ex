defmodule ContentTree.ContentTopic do
  alias __MODULE__, as: T

  defstruct [:id, :name, :content_topic_id, children: [], content_items: []]

  def test_data do
    [
      %T{
        id: "493bcecc-2e00-455f-abaa-88639e71bf16",
        name: "The Lord of the Rings",
        content_topic_id: nil
      },
      %T{
        id: "c633e136-680b-4247-b897-9e088dd367a2",
        name: "The Return of the King",
        content_topic_id: "493bcecc-2e00-455f-abaa-88639e71bf16"
      },
      %T{
        id: "cdc827c8-8a4d-4c8a-b9a7-b05abd123574",
        name: "Annals of the Kings and Rulers",
        content_topic_id: "c633e136-680b-4247-b897-9e088dd367a2"
      },
      %T{
        id: "c165f9ab-2536-4d73-b684-4cfe851caf66",
        name: "Moby Dick",
        content_topic_id: nil
      }
    ]
  end
end
