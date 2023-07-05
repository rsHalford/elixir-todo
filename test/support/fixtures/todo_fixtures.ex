defmodule TodoApp.TodoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoApp.Todo` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        completed: true,
        title: "some title"
      })
      |> TodoApp.Todo.create_task()

    task
  end
end
