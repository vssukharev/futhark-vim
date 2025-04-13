
def concat [n][m] (xs: [n]i32) (ys: [m]i32) =
  map (\i -> if i < n then xs[i] else ys[i-n]) (0..<n+m)

def dotprod [n] (xs: [n]i32) (ys: [n]i32): i32 =
  reduce (+) 0 (map2 (*) xs ys)

def indices_of_nonzero (xs: []i32): []i64 =
  let xs_and_is = zip xs (indices xs)
  
  let xs_and_is' = filter (\(x,_) -> x != 0) xs_and_is
  let (_, is') = unzip xs_and_is'
  in is'
  
def singleton (x: i32): [1]i32 = [x]
 
def average [n] (xs: [n]f64) = reduce (+) 0 xs / f64.i64 n

def replicate_i32 (n: i64) (x: i32): [n]i32 =
  map (\_ -> x) (0..<n)

def matmult [n][m][p] (x: [n][m]i32) (y: [m][p]i32): [n][p]i32 =
  map (\xr -> map (dotprod xr) (transpose y)) x

def dup [n] (xs: [n]i32): []i32 =
  map (\i -> xs[i/2]) (0..<n*2)

def indices_i32 [n] (_: [n]i32): [n]i64 = 0..<n

type intvec [n] = [n]i32
def x: intvec [3] = [1,2,3]


