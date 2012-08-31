data Chess_piece =  Empty | W_pawn | W_rook | W_knight | W_bishop
                    | W_queen | W_king | B_pawn | B_rook | B_knight
                    | B_bishop | B_queen | B_king
                    deriving (Eq,Read)

type Chess_board = [[Chess_piece]]

instance Show Chess_piece where
    show Empty = " "
    show W_king = "\x2654"
    show W_queen = "\x2655"
    show W_rook = "\x2656"
    show W_bishop = "\x2657"
    show W_knight = "\x2658"
    show W_pawn = "\x2659"
    show B_king = "\x265a"
    show B_queen = "\x265b"
    show B_rook = "\x265c"
    show B_bishop = "\x265d"
    show B_knight = "\x265e"
    show B_pawn = "\x265f"
