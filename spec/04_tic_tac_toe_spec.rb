require 'spec_helper'

describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map {|x| x.count('X')}
      expect(xs_per_row).to be == [1, 2, 1]
    end

    it "returns how many times O was played in each row" do
      os_per_row = data.map {|x| x.count('O')}
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    it "returns an array of [row, column] array coordinates for each usage of X" do

    x_coordinates = []                                         # this is my final outermost array

    data.each_with_index do |row, index|                       # for each row
      row_index = ''                                           # set a variable for index of that row

      if row.include?("X")                                     # does row include X? if yes:
        row_index = index                                        # store index of that row

        column_index = ''                                        # and set a variable for the column index
        row.each_with_index do |column, index|                   # for each column (still within each row)
          if column.include?("X")                                   # does column include X? if yes:
            column_index = index                                       # store index of that column
            single_coordinate = [row_index, column_index]               # create an array for that X coordinate with row & column indices
            x_coordinates << single_coordinate                          # push the X coordinate array to final outermost array
          end
        end
      end
    end

    expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    it "returns an array of [row, column] array coordinates for each usage of O" do
      o_coordinates = []

      data.each_with_index do |row, index|
        row_index = ''
        if row.include?("X")
          row_index = index

          column_index = ''
          row.each_with_index do |column, index|
            if column.include?("O")
              column_index = index
              single_coordinate = [row_index, column_index]
              o_coordinates << single_coordinate
            end
          end
        end
      end

      expect(o_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    it "determines whether X or O won" do

      winner = ''                           # This ignores diagonal wins
      row_of_xs = ['X', 'X', 'X']
      row_of_os = ['O', 'O', 'O']

      data.each do |row|
        if row == row_of_xs
          winner = 'X'
        elsif row == row_of_os
          winner = 'O'
        else
          winner = ''
        end
      end

      data.transpose.each do |row|
        if row == row_of_xs
          winner = 'X'
        elsif row == row_of_os
          winner = 'O'
        else
          winner = ''
        end
      end

      expect(winner).to be == 'O'
    end
  end
end
