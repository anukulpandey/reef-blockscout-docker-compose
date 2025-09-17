defmodule Evision.Detail.BlocksChannelsCompensator do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Detail.BlocksChannelsCompensator` struct.

  - **ref**. `reference()`

    The underlying erlang resource variable.

  """
  @type t :: %__MODULE__{
    ref: reference()
  }
  @enforce_keys [:ref]
  defstruct [:ref]
  alias __MODULE__, as: T

  @doc false
  def to_struct({:ok, %{class: Evision.Detail.BlocksChannelsCompensator, ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  @doc false
  def to_struct(%{class: Evision.Detail.BlocksChannelsCompensator, ref: ref}) do
    %T{
      ref: ref
    }
  end

  @doc false
  def to_struct(ret) do
    Evision.Internal.Structurise.to_struct(ret)
  end
  
  @doc false
  def from_struct(%T{ref: ref}) do
    ref
  end

  @doc """
  BlocksChannelsCompensator
  ##### Keyword Arguments
  - **bl_width**: `integer()`.
  - **bl_height**: `integer()`.
  - **nr_feeds**: `integer()`.

  ##### Return
  - **self**: `Evision.Detail.BlocksChannelsCompensator.t()`

  Python prototype (for reference only):
  ```python3
  BlocksChannelsCompensator([, bl_width[, bl_height[, nr_feeds]]]) -> <detail_BlocksChannelsCompensator object>
  ```
  """
  @spec blocksChannelsCompensator(Keyword.t()) :: any() | {:error, String.t()}
  def blocksChannelsCompensator([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:nr_feeds,:bl_width,:bl_height])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.detail_detail_BlocksChannelsCompensator_BlocksChannelsCompensator()
    |> to_struct()
  end
  @spec blocksChannelsCompensator([{:bl_height, term()} | {:bl_width, term()} | {:nr_feeds, term()}] | nil) :: Evision.Detail.BlocksChannelsCompensator.t() | {:error, String.t()}
  def blocksChannelsCompensator(opts) when opts == nil or (is_list(opts) and is_tuple(hd(opts)))
  do
    Keyword.validate!(opts || [], [:bl_height, :bl_width, :nr_feeds])
    positional = [
    ]
    :evision_nif.detail_detail_BlocksChannelsCompensator_BlocksChannelsCompensator(positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> to_struct()
  end

  @doc """
  BlocksChannelsCompensator
  ##### Keyword Arguments
  - **bl_width**: `integer()`.
  - **bl_height**: `integer()`.
  - **nr_feeds**: `integer()`.

  ##### Return
  - **self**: `Evision.Detail.BlocksChannelsCompensator.t()`

  Python prototype (for reference only):
  ```python3
  BlocksChannelsCompensator([, bl_width[, bl_height[, nr_feeds]]]) -> <detail_BlocksChannelsCompensator object>
  ```
  """
  @spec blocksChannelsCompensator() :: Evision.Detail.BlocksChannelsCompensator.t() | {:error, String.t()}
  def blocksChannelsCompensator() do
    positional = [
    ]
    :evision_nif.detail_detail_BlocksChannelsCompensator_BlocksChannelsCompensator(positional)
    |> to_struct()
  end
end
