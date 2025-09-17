defmodule Evision.Face.FacemarkAAM do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Face.FacemarkAAM` struct.

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
  def to_struct({:ok, %{class: Evision.Face.FacemarkAAM, ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  @doc false
  def to_struct(%{class: Evision.Face.FacemarkAAM, ref: ref}) do
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
  Clears the algorithm state

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`

  Python prototype (for reference only):
  ```python3
  clear() -> None
  ```
  """
  @spec clear(Keyword.t()) :: any() | {:error, String.t()}
  def clear([{arg, _} | _] = named_args) when is_atom(arg) do
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.face_FacemarkAAM_clear()
    |> to_struct()
  end
  @spec clear(Evision.Face.FacemarkAAM.t()) :: Evision.Face.FacemarkAAM.t() | {:error, String.t()}
  def clear(self) do
    positional = [
    ]
    :evision_nif.face_FacemarkAAM_clear(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`

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
    |> :evision_nif.face_FacemarkAAM_empty()
    |> to_struct()
  end
  @spec empty(Evision.Face.FacemarkAAM.t()) :: boolean() | {:error, String.t()}
  def empty(self) do
    positional = [
    ]
    :evision_nif.face_FacemarkAAM_empty(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  Detect facial landmarks from an image.

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **image**: `Evision.Mat`.

    Input image.

  - **faces**: `Evision.Mat`.

    Output of the function which represent region of interest of the detected faces.
    Each face is stored in cv::Rect container.

  ##### Return
  - **retval**: `bool`
  - **landmarks**: `[Evision.Mat]`.

    The detected landmark points for each faces.

  <B>Example of usage</B>
  ```
  Mat image = imread("image.jpg");
  std::vector<Rect> faces;
  std::vector<std::vector<Point2f> > landmarks;
  facemark->fit(image, faces, landmarks);
  ```

  Python prototype (for reference only):
  ```python3
  fit(image, faces[, landmarks]) -> retval, landmarks
  ```
  """
  @spec fit(Evision.Face.FacemarkAAM.t(), Evision.Mat.maybe_mat_in(), Evision.Mat.maybe_mat_in(), [{atom(), term()},...] | nil) :: list(Evision.Mat.t()) | false | {:error, String.t()}
  def fit(self, image, faces, opts) when (is_struct(image, Evision.Mat) or is_struct(image, Nx.Tensor) or is_number(image) or is_tuple(image)) and (is_struct(faces, Evision.Mat) or is_struct(faces, Nx.Tensor) or is_number(faces) or is_tuple(faces)) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    positional = [
      image: Evision.Internal.Structurise.from_struct(image),
      faces: Evision.Internal.Structurise.from_struct(faces)
    ]
    :evision_nif.face_face_FacemarkAAM_fit(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> to_struct()
  end
  @spec fit(Keyword.t()) :: any() | {:error, String.t()}
  def fit([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:image,:landmarks,:faces])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.face_face_FacemarkAAM_fit()
    |> to_struct()
  end

  @doc """
  Detect facial landmarks from an image.

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **image**: `Evision.Mat`.

    Input image.

  - **faces**: `Evision.Mat`.

    Output of the function which represent region of interest of the detected faces.
    Each face is stored in cv::Rect container.

  ##### Return
  - **retval**: `bool`
  - **landmarks**: `[Evision.Mat]`.

    The detected landmark points for each faces.

  <B>Example of usage</B>
  ```
  Mat image = imread("image.jpg");
  std::vector<Rect> faces;
  std::vector<std::vector<Point2f> > landmarks;
  facemark->fit(image, faces, landmarks);
  ```

  Python prototype (for reference only):
  ```python3
  fit(image, faces[, landmarks]) -> retval, landmarks
  ```
  """
  @spec fit(Evision.Face.FacemarkAAM.t(), Evision.Mat.maybe_mat_in(), Evision.Mat.maybe_mat_in()) :: list(Evision.Mat.t()) | false | {:error, String.t()}
  def fit(self, image, faces) when (is_struct(image, Evision.Mat) or is_struct(image, Nx.Tensor) or is_number(image) or is_tuple(image)) and (is_struct(faces, Evision.Mat) or is_struct(faces, Nx.Tensor) or is_number(faces) or is_tuple(faces))
  do
    positional = [
      image: Evision.Internal.Structurise.from_struct(image),
      faces: Evision.Internal.Structurise.from_struct(faces)
    ]
    :evision_nif.face_face_FacemarkAAM_fit(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  getDefaultName

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`

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
    |> :evision_nif.face_FacemarkAAM_getDefaultName()
    |> to_struct()
  end
  @spec getDefaultName(Evision.Face.FacemarkAAM.t()) :: binary() | {:error, String.t()}
  def getDefaultName(self) do
    positional = [
    ]
    :evision_nif.face_FacemarkAAM_getDefaultName(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec loadModel(Keyword.t()) :: any() | {:error, String.t()}
  def loadModel([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:model])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.face_face_FacemarkAAM_loadModel()
    |> to_struct()
  end

  @doc """
  A function to load the trained model before the fitting process.

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **model**: `String`.

    A string represent the filename of a trained model.

  <B>Example of usage</B>
  ```
  facemark->loadModel("../data/lbf.model");
  ```

  Python prototype (for reference only):
  ```python3
  loadModel(model) -> None
  ```
  """
  @spec loadModel(Evision.Face.FacemarkAAM.t(), binary()) :: Evision.Face.FacemarkAAM.t() | {:error, String.t()}
  def loadModel(self, model) when is_binary(model)
  do
    positional = [
      model: Evision.Internal.Structurise.from_struct(model)
    ]
    :evision_nif.face_face_FacemarkAAM_loadModel(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec read(Keyword.t()) :: any() | {:error, String.t()}
  def read([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:fn])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.face_FacemarkAAM_read()
    |> to_struct()
  end

  @doc """
  Reads algorithm parameters from a file storage

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **func**: `Evision.FileNode`

  Python prototype (for reference only):
  ```python3
  read(fn) -> None
  ```
  """
  @spec read(Evision.Face.FacemarkAAM.t(), Evision.FileNode.t()) :: Evision.Face.FacemarkAAM.t() | {:error, String.t()}
  def read(self, func) when is_struct(func, Evision.FileNode)
  do
    positional = [
      func: Evision.Internal.Structurise.from_struct(func)
    ]
    :evision_nif.face_FacemarkAAM_read(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec save(Keyword.t()) :: any() | {:error, String.t()}
  def save([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:filename])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.face_FacemarkAAM_save()
    |> to_struct()
  end

  @doc """
  save

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **filename**: `String`

  Saves the algorithm to a file.
  In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).

  Python prototype (for reference only):
  ```python3
  save(filename) -> None
  ```
  """
  @spec save(Evision.Face.FacemarkAAM.t(), binary()) :: Evision.Face.FacemarkAAM.t() | {:error, String.t()}
  def save(self, filename) when is_binary(filename)
  do
    positional = [
      filename: Evision.Internal.Structurise.from_struct(filename)
    ]
    :evision_nif.face_FacemarkAAM_save(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
  @spec write(Keyword.t()) :: any() | {:error, String.t()}
  def write([{arg, _} | _] = named_args) when is_atom(arg) do
    named_args = Keyword.validate!(named_args, [:name,:fs])
    Enum.map(named_args, fn {named_arg, value} -> {named_arg, Evision.Internal.Structurise.from_struct(value)} end)
    |> :evision_nif.face_FacemarkAAM_write()
    |> to_struct()
  end

  @doc """
  write

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **fs**: `Evision.FileStorage`
  - **name**: `String`

  Has overloading in C++

  Python prototype (for reference only):
  ```python3
  write(fs, name) -> None
  ```
  """
  @spec write(Evision.Face.FacemarkAAM.t(), Evision.FileStorage.t(), binary()) :: Evision.Face.FacemarkAAM.t() | {:error, String.t()}
  def write(self, fs, name) when is_struct(fs, Evision.FileStorage) and is_binary(name)
  do
    positional = [
      fs: Evision.Internal.Structurise.from_struct(fs),
      name: Evision.Internal.Structurise.from_struct(name)
    ]
    :evision_nif.face_FacemarkAAM_write(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end

  @doc """
  Stores algorithm parameters in a file storage

  ##### Positional Arguments
  - **self**: `Evision.Face.FacemarkAAM.t()`
  - **fs**: `Evision.FileStorage`

  Python prototype (for reference only):
  ```python3
  write(fs) -> None
  ```
  """
  @spec write(Evision.Face.FacemarkAAM.t(), Evision.FileStorage.t()) :: Evision.Face.FacemarkAAM.t() | {:error, String.t()}
  def write(self, fs) when is_struct(fs, Evision.FileStorage)
  do
    positional = [
      fs: Evision.Internal.Structurise.from_struct(fs)
    ]
    :evision_nif.face_FacemarkAAM_write(Evision.Internal.Structurise.from_struct(self), positional)
    |> to_struct()
  end
end
