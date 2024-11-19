defmodule Chess.Piece do
  use Ecto.Schema
#  import Ecto.Changeset
#  alias Chess.{Board, Repo, Accounts}

  schema "startconfigurations" do
    field :type, Ecto.Enum, values: [:rook, :knight, :bishop, :queen, :king, :pawn]
    field :color, :string

    timestamps(type: :utc_datetime)
  end

  def glyphs() do
    %{:white =>
        %{:rook => "♖", :knight => "♘", :bishop => "♗", :queen => "♕", :king => "♔", :pawn => "♙",
	  :dragon => "🐉", 
	  :wizard => "🧙‍♂️",
	  :ninja => "🥷",  
	  :phoenix => "🦅"},
      :black =>
        %{:rook => "♜", :knight => "♞", :bishop => "♝", :queen => "♛", :king => "♚", :pawn => "♟",
          :dragon => "🐉",
          :wizard => "🧙‍♂️",
          :ninja => "🥷",
          :phoenix => "🦅"}
    }
  end
end
