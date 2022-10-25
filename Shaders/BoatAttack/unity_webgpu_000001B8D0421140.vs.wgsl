type Arr = array<vec4<f32>, 8u>;

type Arr_1 = array<vec4<f32>, 60u>;

struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
  x_Transforms : Arr_1,
}

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD3 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_115 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD6 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD4 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlati0 : i32;
  var u_xlati1 : vec2<i32>;
  var u_xlat13 : vec2<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat3 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlati7 : i32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var x_386 : f32;
  var u_xlatu7 : u32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var x_469 : f32;
  var x_481 : f32;
  var x_493 : f32;
  var u_xlatb12 : bool;
  var u_xlat6 : vec2<f32>;
  var u_xlat12 : f32;
  var u_xlat16 : vec2<f32>;
  var u_xlatb6 : bool;
  var x_639 : f32;
  var x_651 : vec2<f32>;
  var x_662 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_TEXCOORD2;
  u_xlat0 = (vec4<f32>(x_12.x, x_12.z, x_12.z, x_12.w) * vec4<f32>(765.0f, 255.0f, 8160.0f, 255.0f));
  let x_26 : f32 = u_xlat0.x;
  u_xlati0 = i32(x_26);
  let x_31 : i32 = u_xlati0;
  u_xlati1 = (vec2<i32>(x_31, x_31) + vec2<i32>(1i, 2i));
  let x_43 : f32 = in_TEXCOORD3.x;
  u_xlat13.x = (x_43 * 255.0f);
  let x_47 : f32 = u_xlat13.x;
  u_xlat13.x = round(x_47);
  let x_54 : vec2<f32> = u_xlat13;
  u_xlatb2 = (vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x) == vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_65 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_65);
  let x_71 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_76);
  let x_81 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_81);
  let x_84 : vec4<f32> = u_xlat3;
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat13 = (vec2<f32>(x_84.z, x_84.z) + vec2<f32>(x_86.w, x_86.y));
  let x_90 : f32 = u_xlat3.y;
  let x_92 : f32 = u_xlat13.x;
  u_xlat13.x = (x_90 + x_92);
  let x_96 : f32 = u_xlat3.x;
  let x_98 : f32 = u_xlat13.x;
  u_xlat13.x = (x_96 + x_98);
  let x_105 : f32 = u_xlat13.x;
  u_xlat1.z = min(x_105, 1.0f);
  let x_117 : i32 = u_xlati0;
  let x_120 : vec4<f32> = x_115.x_Transforms[x_117];
  let x_122 : vec4<f32> = in_POSITION0;
  u_xlat3.z = dot(x_120, x_122);
  let x_126 : i32 = u_xlati1.x;
  let x_128 : vec4<f32> = x_115.x_Transforms[x_126];
  let x_129 : vec4<f32> = in_POSITION0;
  u_xlat3.w = dot(x_128, x_129);
  let x_133 : i32 = u_xlati1.y;
  let x_135 : vec4<f32> = x_115.x_Transforms[x_133];
  let x_136 : vec4<f32> = in_POSITION0;
  u_xlat0.x = dot(x_135, x_136);
  let x_140 : vec4<f32> = u_xlat3;
  let x_144 : vec4<f32> = x_115.unity_ObjectToWorld[1i];
  u_xlat4 = (vec4<f32>(x_140.w, x_140.w, x_140.w, x_140.w) * x_144);
  let x_147 : vec4<f32> = x_115.unity_ObjectToWorld[0i];
  let x_148 : vec4<f32> = u_xlat3;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_147 * vec4<f32>(x_148.z, x_148.z, x_148.z, x_148.z)) + x_151);
  let x_154 : vec4<f32> = x_115.unity_ObjectToWorld[2i];
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_154 * vec4<f32>(x_155.x, x_155.x, x_155.x, x_155.x)) + x_158);
  let x_160 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = x_115.unity_ObjectToWorld[3i];
  u_xlat4 = (x_160 + x_163);
  let x_166 : vec4<f32> = u_xlat4;
  let x_169 : vec4<f32> = x_115.unity_MatrixVP[1i];
  u_xlat5 = (vec4<f32>(x_166.y, x_166.y, x_166.y, x_166.y) * x_169);
  let x_172 : vec4<f32> = x_115.unity_MatrixVP[0i];
  let x_173 : vec4<f32> = u_xlat4;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_172 * vec4<f32>(x_173.x, x_173.x, x_173.x, x_173.x)) + x_176);
  let x_179 : vec4<f32> = x_115.unity_MatrixVP[2i];
  let x_180 : vec4<f32> = u_xlat4;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_179 * vec4<f32>(x_180.z, x_180.z, x_180.z, x_180.z)) + x_183);
  let x_190 : vec4<f32> = x_115.unity_MatrixVP[3i];
  let x_191 : vec4<f32> = u_xlat4;
  let x_194 : vec4<f32> = u_xlat5;
  gl_Position = ((x_190 * vec4<f32>(x_191.w, x_191.w, x_191.w, x_191.w)) + x_194);
  let x_199 : f32 = in_TEXCOORD6;
  let x_203 : f32 = x_115.x_TextureInfo[2i].x;
  u_xlat0.x = (-(x_199) + x_203);
  let x_207 : f32 = u_xlat0.x;
  u_xlati1.x = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_207)));
  let x_214 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_214 < 0.0f)));
  let x_219 : i32 = u_xlati1.x;
  let x_221 : i32 = u_xlati0;
  u_xlati0 = (-(x_219) + x_221);
  let x_223 : i32 = u_xlati0;
  let x_225 : i32 = u_xlati0;
  u_xlati0 = max(-(x_223), x_225);
  let x_227 : i32 = u_xlati0;
  u_xlat0.x = f32(x_227);
  let x_231 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_231) + 1.0f);
  let x_235 : f32 = in_TEXCOORD6;
  let x_238 : f32 = x_115.x_TextureInfo[4i].x;
  u_xlat1.x = (-(x_235) + x_238);
  let x_243 : f32 = u_xlat1.x;
  u_xlati7 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_243)));
  let x_248 : f32 = u_xlat1.x;
  u_xlati1.x = bitcast<i32>(select(0u, 4294967295u, (x_248 < 0.0f)));
  let x_253 : i32 = u_xlati7;
  let x_256 : i32 = u_xlati1.x;
  u_xlati1.x = (-(x_253) + x_256);
  let x_260 : i32 = u_xlati1.x;
  let x_263 : i32 = u_xlati1.x;
  u_xlati1.x = max(-(x_260), x_263);
  let x_267 : i32 = u_xlati1.x;
  u_xlat1.x = f32(x_267);
  let x_270 : vec3<f32> = u_xlat1;
  let x_274 : vec2<f32> = (-(vec2<f32>(x_270.x, x_270.z)) + vec2<f32>(1.0f, 1.0f));
  let x_275 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_274.x, x_275.y, x_274.y);
  let x_278 : f32 = u_xlat1.x;
  let x_281 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_278 * 2.0f) + x_281);
  let x_284 : f32 = in_TEXCOORD6;
  let x_288 : f32 = x_115.x_TextureInfo[6i].x;
  u_xlat1.x = (-(x_284) + x_288);
  let x_292 : f32 = u_xlat1.x;
  u_xlati7 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_292)));
  let x_297 : f32 = u_xlat1.x;
  u_xlati1.x = bitcast<i32>(select(0u, 4294967295u, (x_297 < 0.0f)));
  let x_302 : i32 = u_xlati7;
  let x_305 : i32 = u_xlati1.x;
  u_xlati1.x = (-(x_302) + x_305);
  let x_309 : i32 = u_xlati1.x;
  let x_312 : i32 = u_xlati1.x;
  u_xlati1.x = max(-(x_309), x_312);
  let x_316 : i32 = u_xlati1.x;
  u_xlat1.x = f32(x_316);
  let x_320 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_320) + 1.0f);
  let x_325 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_325 * 3.0f) + x_328);
  let x_332 : bool = u_xlatb2.w;
  u_xlat1.x = select(0.0f, 2.0f, x_332);
  let x_336 : bool = u_xlatb2.x;
  u_xlat1.y = select(0.0f, 4.0f, x_336);
  let x_340 : f32 = u_xlat1.x;
  let x_342 : f32 = u_xlat1.z;
  u_xlat1.x = (x_340 + x_342);
  let x_346 : f32 = u_xlat13.y;
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_346 * 3.0f) + x_349);
  let x_354 : f32 = u_xlat1.y;
  let x_356 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = (x_354 + x_356);
  let x_361 : vec4<f32> = in_TEXCOORD4;
  u_xlat1.x = dot(vec2<f32>(x_361.z, x_361.w), vec2<f32>(65025.0f, 255.0f));
  let x_371 : vec4<f32> = in_TEXCOORD3;
  let x_373 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_371.z, x_371.w, x_371.z, x_371.z));
  u_xlatb7 = vec2<bool>(x_373.x, x_373.y);
  let x_377 : bool = u_xlatb7.x;
  u_xlat19 = select(0.0f, 1.0f, x_377);
  let x_381 : bool = u_xlatb7.x;
  u_xlat7.x = select(2.0f, 3.0f, x_381);
  let x_385 : bool = u_xlatb7.y;
  if (x_385) {
    let x_390 : f32 = u_xlat7.x;
    x_386 = x_390;
  } else {
    let x_392 : f32 = u_xlat19;
    x_386 = x_392;
  }
  let x_393 : f32 = x_386;
  vs_TEXCOORD1.w = x_393;
  let x_396 : bool = u_xlatb2.y;
  if (x_396) {
    let x_400 : f32 = u_xlat0.x;
    let x_402 : f32 = u_xlat0.x;
    u_xlat7.x = (x_400 + x_402);
    let x_408 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_408);
    let x_412 : vec2<f32> = in_TEXCOORD0;
    let x_413 : u32 = u_xlatu7;
    let x_416 : vec4<f32> = x_115.x_TextureInfo[bitcast<i32>(x_413)];
    let x_418 : vec2<f32> = (x_412 * vec2<f32>(x_416.y, x_416.z));
    let x_419 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  } else {
    let x_422 : vec2<f32> = in_TEXCOORD0;
    let x_423 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  }
  let x_426 : vec4<f32> = in_COLOR0;
  u_xlat7 = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(0.084971003f, 0.084971003f, 0.084971003f)) + vec3<f32>(-0.000163029f, -0.000163029f, -0.000163029f));
  let x_435 : vec4<f32> = in_COLOR0;
  u_xlat2 = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(0.265884995f, 0.265884995f, 0.265884995f)) + vec3<f32>(0.736584008f, 0.736584008f, 0.736584008f));
  let x_443 : vec4<f32> = in_COLOR0;
  let x_445 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * x_445) + vec3<f32>(-0.00980184f, -0.00980184f, -0.00980184f));
  let x_450 : vec4<f32> = in_COLOR0;
  let x_452 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_450.x, x_450.y, x_450.z) * x_452) + vec3<f32>(0.00319697f, 0.00319697f, 0.00319697f));
  let x_460 : vec4<f32> = in_COLOR0;
  let x_464 : vec4<bool> = (vec4<f32>(x_460.x, x_460.y, x_460.z, x_460.x) < vec4<f32>(0.072549f, 0.072549f, 0.072549f, 0.0f));
  u_xlatb4 = vec3<bool>(x_464.x, x_464.y, x_464.z);
  let x_468 : bool = u_xlatb4.x;
  if (x_468) {
    let x_473 : f32 = u_xlat7.x;
    x_469 = x_473;
  } else {
    let x_476 : f32 = u_xlat2.x;
    x_469 = x_476;
  }
  let x_477 : f32 = x_469;
  vs_COLOR0.x = x_477;
  let x_480 : bool = u_xlatb4.y;
  if (x_480) {
    let x_485 : f32 = u_xlat7.y;
    x_481 = x_485;
  } else {
    let x_488 : f32 = u_xlat2.y;
    x_481 = x_488;
  }
  let x_489 : f32 = x_481;
  vs_COLOR0.y = x_489;
  let x_492 : bool = u_xlatb4.z;
  if (x_492) {
    let x_497 : f32 = u_xlat7.z;
    x_493 = x_497;
  } else {
    let x_500 : f32 = u_xlat2.z;
    x_493 = x_500;
  }
  let x_501 : f32 = x_493;
  vs_COLOR0.z = x_501;
  let x_505 : f32 = u_xlat0.z;
  let x_507 : f32 = u_xlat0.z;
  u_xlatb12 = (x_505 >= -(x_507));
  let x_510 : bool = u_xlatb12;
  let x_518 : vec2<f32> = select(vec2<f32>(-32.0f, -0.03125f), vec2<f32>(32.0f, 0.03125f), vec2<bool>(x_510, x_510));
  let x_519 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_518.x, x_518.y, x_519.z);
  let x_523 : f32 = u_xlat0.y;
  let x_525 : f32 = u_xlat7.y;
  u_xlat6.x = (x_523 * x_525);
  let x_529 : f32 = u_xlat6.x;
  u_xlat6.x = fract(x_529);
  let x_533 : f32 = u_xlat6.x;
  let x_535 : f32 = u_xlat7.x;
  u_xlat6.x = (x_533 * x_535);
  let x_540 : f32 = in_TEXCOORD2.z;
  let x_543 : f32 = u_xlat6.x;
  u_xlat12 = ((x_540 * 255.0f) + -(x_543));
  let x_546 : vec4<f32> = in_TEXCOORD4;
  let x_550 : vec2<f32> = (vec2<f32>(x_546.y, x_546.w) * vec2<f32>(2040.0f, 2040.0f));
  let x_551 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_550.x, x_550.y, x_551.z);
  let x_555 : f32 = in_TEXCOORD4.x;
  let x_558 : f32 = u_xlat6.x;
  u_xlat16.x = ((x_555 * 8160.0f) + x_558);
  let x_561 : f32 = u_xlat12;
  let x_564 : f32 = u_xlat7.x;
  u_xlat16.y = ((x_561 * 0.03125f) + x_564);
  let x_567 : vec2<f32> = u_xlat16;
  u_xlat6 = (x_567 + vec2<f32>(0.5f, 0.5f));
  let x_572 : vec2<f32> = u_xlat6;
  let x_574 : vec4<f32> = x_115.x_ShaderInfoTex_TexelSize;
  let x_576 : vec2<f32> = (x_572 * vec2<f32>(x_574.x, x_574.y));
  let x_577 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_577.x, x_577.y, x_576.x, x_576.y);
  let x_580 : f32 = in_TEXCOORD2.w;
  u_xlat6.x = (x_580 * 8160.0f);
  let x_585 : f32 = u_xlat6.x;
  let x_587 : f32 = u_xlat6.x;
  u_xlatb6 = (x_585 >= -(x_587));
  let x_590 : bool = u_xlatb6;
  u_xlat6 = select(vec2<f32>(-32.0f, -0.03125f), vec2<f32>(32.0f, 0.03125f), vec2<bool>(x_590, x_590));
  let x_594 : f32 = u_xlat6.y;
  let x_596 : f32 = u_xlat0.w;
  u_xlat12 = (x_594 * x_596);
  let x_598 : f32 = u_xlat12;
  u_xlat12 = fract(x_598);
  let x_600 : f32 = u_xlat12;
  let x_602 : f32 = u_xlat6.x;
  u_xlat6.x = (x_600 * x_602);
  let x_606 : f32 = in_TEXCOORD2.w;
  let x_609 : f32 = u_xlat6.x;
  u_xlat12 = ((x_606 * 255.0f) + -(x_609));
  let x_613 : f32 = in_TEXCOORD4.z;
  let x_616 : f32 = u_xlat6.x;
  u_xlat2.x = ((x_613 * 8160.0f) + x_616);
  let x_619 : f32 = u_xlat12;
  let x_624 : vec3<f32> = u_xlat7;
  let x_626 : vec2<f32> = ((vec2<f32>(x_619, x_619) * vec2<f32>(0.03125f, 0.125f)) + vec2<f32>(x_624.y, x_624.y));
  let x_627 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_627.x, x_626.x, x_626.y);
  let x_629 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec2<f32>(x_629.x, x_629.y) + vec2<f32>(0.5f, 0.5f));
  let x_632 : vec2<f32> = u_xlat6;
  let x_634 : vec4<f32> = x_115.x_ShaderInfoTex_TexelSize;
  u_xlat6 = (x_632 * vec2<f32>(x_634.x, x_634.y));
  let x_638 : bool = u_xlatb2.w;
  if (x_638) {
    x_639 = 1.0f;
  } else {
    let x_644 : f32 = u_xlat1.x;
    x_639 = x_644;
  }
  let x_645 : f32 = x_639;
  vs_TEXCOORD1.z = x_645;
  let x_650 : bool = u_xlatb2.w;
  if (x_650) {
    let x_654 : vec3<f32> = u_xlat2;
    x_651 = vec2<f32>(x_654.x, x_654.z);
  } else {
    let x_657 : vec2<f32> = u_xlat6;
    x_651 = x_657;
  }
  let x_658 : vec2<f32> = x_651;
  vs_TEXCOORD3 = x_658;
  let x_661 : bool = u_xlatb2.w;
  if (x_661) {
    let x_666 : f32 = in_TEXCOORD3.y;
    x_662 = x_666;
  } else {
    let x_670 : f32 = in_TEXCOORD5.x;
    x_662 = x_670;
  }
  let x_671 : f32 = x_662;
  vs_TEXCOORD4.x = x_671;
  let x_674 : f32 = in_COLOR0.w;
  vs_COLOR0.w = x_674;
  let x_677 : vec4<f32> = u_xlat3;
  vs_TEXCOORD0 = x_677;
  let x_679 : f32 = u_xlat0.x;
  vs_TEXCOORD1.y = x_679;
  let x_682 : f32 = in_TEXCOORD2.y;
  vs_TEXCOORD2.x = (x_682 * 255.0f);
  vs_TEXCOORD2.y = 0.0f;
  let x_686 : vec4<f32> = in_TEXCOORD5;
  let x_687 : vec3<f32> = vec3<f32>(x_686.y, x_686.z, x_686.w);
  let x_688 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_688.x, x_687.x, x_687.y, x_687.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD2_param : vec4<f32>, @location(4) in_TEXCOORD3_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(7) in_TEXCOORD6_param : f32, @location(5) in_TEXCOORD4_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(6) in_TEXCOORD5_param : vec4<f32>) -> main_out {
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD3 = in_TEXCOORD3_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD6 = in_TEXCOORD6_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD5 = in_TEXCOORD5_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD0);
}

