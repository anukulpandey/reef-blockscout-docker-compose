defmodule Evision.BgSegm.BackgroundSubtractorGSOC do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `BgSegm.BackgroundSubtractorGSOC` struct.

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
  def to_struct({:ok, %{class: Evision.BgSegm.BackgroundSubtractorGSOC, ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  @doc false
  def to_struct(%{class: Evision.BgSegm.BackgroundSubtractorGSOC, ref: ref}) do
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
  apply

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`
  - **image**: `Evision.Mat`

  ##### Keyword Arguments
  - **learningRate**: `double`.

  ##### Return
  - **fgmask**: `Evision.Mat.t()`.

  Python prototype (for reference only):
  ```python3
  apply(image[, fgmask[, learningRate]]) -> fgmask
  ```
  """
  @spec apply(Evision.BgSegm.BackgroundSubtractorGSOC.t(), Evision.Mat.maybe_mat_in(), [{:learningRate, term()}] | nil) :: Evision.Mat.t() | {:error, String.t()}
  def apply(self, image, opts) when (is_struct(image, Evision.Mat) or is_struct(image, Nx.Tensor) or is_number(image) or is_tuple(image)) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    Keyword.validate!(opts || [], [:learningRate])
    positional = [
      image: Evision.Internal.Structurise.from_struct(image)
    ]
    :evision_nif.bgsegm_bgsegm_BackgroundSubtractorGSOC_apply(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> to_struct()
  end
  @spec apply(Keyword.t()) :: any() | {:error, String.t()}
  def apply([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:image,:learningRate,:fgmask])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_bgsegm_BackgroundSubtractorGSOC_apply()
    |> to_struct()
  end

  @doc """
  apply

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`
  - **image**: `Evision.Mat`

  ##### Keyword Arguments
  - **learningRate**: `double`.

  ##### Return
  - **fgmask**: `Evision.Mat.t()`.

  Python prototype (for reference only):
  ```python3
  apply(image[, fgmask[, learningRate]]) -> fgmask
  ```
  """
  @spec apply(Evision.BgSegm.BackgroundSubtractorGSOC.t(), Evision.Mat.maybe_mat_in()) :: Evision.Mat.t() | {:error, String.t()}
  def apply(self, image) when (is_struct(image, Evision.Mat) or is_struct(image, Nx.Tensor) or is_number(image) or is_tuple(image))
  do
    positional = [
      image: Evision.Internal.Structurise.from_struct(image)
    ]
    :evision_nif.bgsegm_bgsegm_BackgroundSubtractorGSOC_apply(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  Clears the algorithm state

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`

  Python prototype (for reference only):
  ```python3
  clear() -> None
  ```
  """
  @spec clear(Keyword.t()) :: any() | {:error, String.t()}
  def clear([{arg, _} | _] = named_args) when is_atom(arg) do
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_BackgroundSubtractorGSOC_clear()
    |> to_struct()
  end
  @spec clear(Evision.BgSegm.BackgroundSubtractorGSOC.t()) :: Evision.BgSegm.BackgroundSubtractorGSOC.t() | {:error, String.t()}
  def clear(self) do
    positional = [
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_clear(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`

  ##### Return
  - **retval**: `bool`

  Python prototype (for reference only):
  ```python3
  empty() -> retval
  ```
  """
  @spec empty(Keyword.t()) :: any() | {:error, String.t()}
  def empty([{arg, _} | _] = named_args) when is_atom(arg) do
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_BackgroundSubtractorGSOC_empty()
    |> to_struct()
  end
  @spec empty(Evision.BgSegm.BackgroundSubtractorGSOC.t()) :: boolean() | {:error, String.t()}
  def empty(self) do
    positional = [
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_empty(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  getBackgroundImage

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`

  ##### Return
  - **backgroundImage**: `Evision.Mat.t()`.

  Python prototype (for reference only):
  ```python3
  getBackgroundImage([, backgroundImage]) -> backgroundImage
  ```
  """
  @spec getBackgroundImage(Evision.BgSegm.BackgroundSubtractorGSOC.t(), [{atom(), term()},...] | nil) :: Evision.Mat.t() | {:error, String.t()}
  def getBackgroundImage(self, opts) when opts == nil or (is_list(opts) and is_tuple(hd(opts)))
  do
    positional = [
    ]
    :evision_nif.bgsegm_bgsegm_BackgroundSubtractorGSOC_getBackgroundImage(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> to_struct()
  end

  @doc """
  getBackgroundImage

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`

  ##### Return
  - **backgroundImage**: `Evision.Mat.t()`.

  Python prototype (for reference only):
  ```python3
  getBackgroundImage([, backgroundImage]) -> backgroundImage
  ```
  """
  @spec getBackgroundImage(Keyword.t()) :: any() | {:error, String.t()}
  def getBackgroundImage([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:backgroundImage])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_bgsegm_BackgroundSubtractorGSOC_getBackgroundImage()
    |> to_struct()
  end
  @spec getBackgroundImage(Evision.BgSegm.BackgroundSubtractorGSOC.t()) :: Evision.Mat.t() | {:error, String.t()}
  def getBackgroundImage(self) do
    positional = [
    ]
    :evision_nif.bgsegm_bgsegm_BackgroundSubtractorGSOC_getBackgroundImage(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  getDefaultName

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`

  ##### Return
  - **retval**: `String`

  Returns the algorithm string identifier.
  This string is used as top level xml/yml node tag when the object is saved to a file or string.

  Python prototype (for reference only):
  ```python3
  getDefaultName() -> retval
  ```
  """
  @spec getDefaultName(Keyword.t()) :: any() | {:error, String.t()}
  def getDefaultName([{arg, _} | _] = named_args) when is_atom(arg) do
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_BackgroundSubtractorGSOC_getDefaultName()
    |> to_struct()
  end
  @spec getDefaultName(Evision.BgSegm.BackgroundSubtractorGSOC.t()) :: binary() | {:error, String.t()}
  def getDefaultName(self) do
    positional = [
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_getDefaultName(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec read(Keyword.t()) :: any() | {:error, String.t()}
  def read([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:fn])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_BackgroundSubtractorGSOC_read()
    |> to_struct()
  end

  @doc """
  Reads algorithm parameters from a file storage

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`
  - **func**: `Evision.FileNode`

  Python prototype (for reference only):
  ```python3
  read(fn) -> None
  ```
  """
  @spec read(Evision.BgSegm.BackgroundSubtractorGSOC.t(), Evision.FileNode.t()) :: Evision.BgSegm.BackgroundSubtractorGSOC.t() | {:error, String.t()}
  def read(self, func) when is_struct(func, Evision.FileNode)
  do
    positional = [
      func: Evision.Internal.Structurise.from_struct(func)
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_read(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec save(Keyword.t()) :: any() | {:error, String.t()}
  def save([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:filename])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_BackgroundSubtractorGSOC_save()
    |> to_struct()
  end

  @doc """
  save

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`
  - **filename**: `String`

  Saves the algorithm to a file.
  In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).

  Python prototype (for reference only):
  ```python3
  save(filename) -> None
  ```
  """
  @spec save(Evision.BgSegm.BackgroundSubtractorGSOC.t(), binary()) :: Evision.BgSegm.BackgroundSubtractorGSOC.t() | {:error, String.t()}
  def save(self, filename) when is_binary(filename)
  do
    positional = [
      filename: Evision.Internal.Structurise.from_struct(filename)
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_save(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec write(Keyword.t()) :: any() | {:error, String.t()}
  def write([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:name,:fs])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.bgsegm_BackgroundSubtractorGSOC_write()
    |> to_struct()
  end

  @doc """
  write

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`
  - **fs**: `Evision.FileStorage`
  - **name**: `String`

  Has overloading in C++

  Python prototype (for reference only):
  ```python3
  write(fs, name) -> None
  ```
  """
  @spec write(Evision.BgSegm.BackgroundSubtractorGSOC.t(), Evision.FileStorage.t(), binary()) :: Evision.BgSegm.BackgroundSubtractorGSOC.t() | {:error, String.t()}
  def write(self, fs, name) when is_struct(fs, Evision.FileStorage) and is_binary(name)
  do
    positional = [
      fs: Evision.Internal.Structurise.from_struct(fs),
      name: Evision.Internal.Structurise.from_struct(name)
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_write(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  Stores algorithm parameters in a file storage

  ##### Positional Arguments
  - **self**: `Evision.BgSegm.BackgroundSubtractorGSOC.t()`
  - **fs**: `Evision.FileStorage`

  Python prototype (for reference only):
  ```python3
  write(fs) -> None
  ```
  """
  @spec write(Evision.BgSegm.BackgroundSubtractorGSOC.t(), Evision.FileStorage.t()) :: Evision.BgSegm.BackgroundSubtractorGSOC.t() | {:error, String.t()}
  def write(self, fs) when is_struct(fs, Evision.FileStorage)
  do
    positional = [
      fs: Evision.Internal.Structurise.from_struct(fs)
    ]
    :evision_nif.bgsegm_BackgroundSubtractorGSOC_write(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
end
