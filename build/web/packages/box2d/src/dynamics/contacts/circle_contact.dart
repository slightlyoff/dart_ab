// Copyright 2012 Google Inc. All Rights Reserved.
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

part of box2d;

class CircleContact extends Contact {
  CircleContact(DefaultWorldPool argPool) : super(argPool) { }

  void init(Fixture fA, Fixture fB) {
    assert(ShapeType.CIRCLE == fA.type);
    assert(ShapeType.CIRCLE == fB.type);
    super.init(fA, fB);
  }

  void evaluate(Manifold argManifold, Transform xfA, Transform xfB) {
    pool.collision.collideCircles(argManifold, fixtureA.shape, xfA,
        fixtureB.shape, xfB);
  }
}
