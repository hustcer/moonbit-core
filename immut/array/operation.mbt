// Copyright 2024 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
fn immutable_set[T](arr : FixedArray[T], i : Int, v : T) -> FixedArray[T] {
  let arr = arr.copy()
  arr[i] = v
  arr
}

///|
fn immutable_push[T](arr : FixedArray[T], val : T) -> FixedArray[T] {
  let len = arr.length()
  let new_arr = FixedArray::make(len + 1, val)
  arr.blit_to(new_arr, len~)
  new_arr[len] = val
  new_arr
}

///|
fn shr_as_uint(x : Int, y : Int) -> Int {
  (x.reinterpret_as_uint() >> y).reinterpret_as_int()
}
