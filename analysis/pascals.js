function createPascals(numRows) {
  const pascalTriangle = [];

  for (var i = 0; i < numRows; i++) {
    pascalTriangle[i] = new Array(i+1);

    for (var j = 0; j < i+1; j++) {
      if (j === 0 || j === i) {
        pascalTriangle[i][j] = 1;
      } else {
        pascalTriangle[i][j] = pascalTriangle[i-1][j-1] + pascalTriangle[i-1][j];
      }
    }
  }

  return pascalTriangle;
}

function getRow(rowIdx) {
  return createPascals(rowIdx + 1)[rowIdx];
}

function get(rowIdx, colIdx) {
  return getRow(rowIdx)[colIdx];
}

module.exports = { createPascals, getRow, get };
