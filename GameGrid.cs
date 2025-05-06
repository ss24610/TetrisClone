namespace Tetris
{
    public class GameGrid
    {

        private readonly int[,] grid;
        public int Rows { get;  } 
        public int Columns { get; }

        //indexer to provide easy access to array, can use indexing
        //directly on GameGrid object
        public int this[int r, int c]
        {
            get => grid[r, c];
            set => grid[r, c] = value;
        }

        public GameGrid(int rows, int columns)
        {
            Rows = rows;
            Columns = columns;
            grid = new int[rows, columns];

        }

        // checks if given row/column is inside grid or not
        public bool IsInside(int r, int c)
        {
            //to be inside grid,row must be >= 0 and must be less than Rows
            return r>=0 && r< Rows && c>=0 && c< Columns;


        }

        public bool IsEmpty(int r, int c)
        {
            return IsInside(r, c) && grid[r, c] == 0;

        }

        public bool IsRowFull(int r)
        {
            for (int c = 0; c < Columns; c++)
            {
                if (grid[r, c] == 0) return false;

            }

                return true;
        }

        public bool IsRowEmpty(int r)
        {
            for(int c = 0; c < Columns; c++)
            {
                if(grid[r, c] != 0)
                {
                    return false;
                }
            }

            return true;
        }


        public void ClearRow(int r)
        {
            for(int c =0; c < Columns; c++)
            {
                grid[r, c] = 0;
            }
        }

        public void DropRow(int r, int drop)
        {
            for(int c = 0;c < Columns; c++)
            {
                grid[r + drop, c] = grid[r, c];
                grid[r,c] = 0;
            }
        }

        public int ClearFullRows()
        {
            //check if current row is cleared, if it is inc cleared
            //if cleared > 0, move current row down by number of rows cleared
            int cleared = 0;

            for(int r = Rows-1; r >= 0; r--)
            {
                if (IsRowFull(r))
                {
                    ClearRow(r);
                    cleared++;

                }

                else if (cleared > 0)
                {
                    DropRow(r,cleared);
                }
            }

            return cleared;

        }


    }
}
