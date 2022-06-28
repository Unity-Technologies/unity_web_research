type Arr = array<vec4<f32>, 8u>;

type Arr_1 = array<vec4<f32>, 60u>;

struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
  x_Transforms : Arr_1,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> u_xlati0 : i32;

var<private> u_xlati1 : vec2<i32>;

var<private> u_xlat13 : vec2<f32>;

var<private> in_TEXCOORD3 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(13) var<uniform> x_115 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> in_TEXCOORD6 : f32;

var<private> u_xlati7 : i32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD4 : vec4<f32>;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu7 : u32;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_387 : f32;
  var x_470 : f32;
  var x_482 : f32;
  var x_494 : f32;
  var x_640 : f32;
  var x_653 : vec2<f32>;
  var x_664 : f32;
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
    let x_391 : f32 = u_xlat7.x;
    x_387 = x_391;
  } else {
    let x_393 : f32 = u_xlat19;
    x_387 = x_393;
  }
  let x_394 : f32 = x_387;
  vs_TEXCOORD1.w = x_394;
  let x_397 : bool = u_xlatb2.y;
  if (x_397) {
    let x_401 : f32 = u_xlat0.x;
    let x_403 : f32 = u_xlat0.x;
    u_xlat7.x = (x_401 + x_403);
    let x_409 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_409);
    let x_413 : vec2<f32> = in_TEXCOORD0;
    let x_414 : u32 = u_xlatu7;
    let x_417 : vec4<f32> = x_115.x_TextureInfo[bitcast<i32>(x_414)];
    let x_419 : vec2<f32> = (x_413 * vec2<f32>(x_417.y, x_417.z));
    let x_420 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  } else {
    let x_423 : vec2<f32> = in_TEXCOORD0;
    let x_424 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  }
  let x_427 : vec4<f32> = in_COLOR0;
  u_xlat7 = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(0.084971003f, 0.084971003f, 0.084971003f)) + vec3<f32>(-0.000163029f, -0.000163029f, -0.000163029f));
  let x_436 : vec4<f32> = in_COLOR0;
  u_xlat2 = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(0.265884995f, 0.265884995f, 0.265884995f)) + vec3<f32>(0.736584008f, 0.736584008f, 0.736584008f));
  let x_444 : vec4<f32> = in_COLOR0;
  let x_446 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * x_446) + vec3<f32>(-0.00980184f, -0.00980184f, -0.00980184f));
  let x_451 : vec4<f32> = in_COLOR0;
  let x_453 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * x_453) + vec3<f32>(0.00319697f, 0.00319697f, 0.00319697f));
  let x_461 : vec4<f32> = in_COLOR0;
  let x_465 : vec4<bool> = (vec4<f32>(x_461.x, x_461.y, x_461.z, x_461.x) < vec4<f32>(0.072549f, 0.072549f, 0.072549f, 0.0f));
  u_xlatb4 = vec3<bool>(x_465.x, x_465.y, x_465.z);
  let x_469 : bool = u_xlatb4.x;
  if (x_469) {
    let x_474 : f32 = u_xlat7.x;
    x_470 = x_474;
  } else {
    let x_477 : f32 = u_xlat2.x;
    x_470 = x_477;
  }
  let x_478 : f32 = x_470;
  vs_COLOR0.x = x_478;
  let x_481 : bool = u_xlatb4.y;
  if (x_481) {
    let x_486 : f32 = u_xlat7.y;
    x_482 = x_486;
  } else {
    let x_489 : f32 = u_xlat2.y;
    x_482 = x_489;
  }
  let x_490 : f32 = x_482;
  vs_COLOR0.y = x_490;
  let x_493 : bool = u_xlatb4.z;
  if (x_493) {
    let x_498 : f32 = u_xlat7.z;
    x_494 = x_498;
  } else {
    let x_501 : f32 = u_xlat2.z;
    x_494 = x_501;
  }
  let x_502 : f32 = x_494;
  vs_COLOR0.z = x_502;
  let x_506 : f32 = u_xlat0.z;
  let x_508 : f32 = u_xlat0.z;
  u_xlatb12 = (x_506 >= -(x_508));
  let x_511 : bool = u_xlatb12;
  let x_519 : vec2<f32> = select(vec2<f32>(-32.0f, -0.03125f), vec2<f32>(32.0f, 0.03125f), vec2<bool>(x_511, x_511));
  let x_520 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_519.x, x_519.y, x_520.z);
  let x_524 : f32 = u_xlat0.y;
  let x_526 : f32 = u_xlat7.y;
  u_xlat6.x = (x_524 * x_526);
  let x_530 : f32 = u_xlat6.x;
  u_xlat6.x = fract(x_530);
  let x_534 : f32 = u_xlat6.x;
  let x_536 : f32 = u_xlat7.x;
  u_xlat6.x = (x_534 * x_536);
  let x_541 : f32 = in_TEXCOORD2.z;
  let x_544 : f32 = u_xlat6.x;
  u_xlat12 = ((x_541 * 255.0f) + -(x_544));
  let x_547 : vec4<f32> = in_TEXCOORD4;
  let x_551 : vec2<f32> = (vec2<f32>(x_547.y, x_547.w) * vec2<f32>(2040.0f, 2040.0f));
  let x_552 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_551.x, x_551.y, x_552.z);
  let x_556 : f32 = in_TEXCOORD4.x;
  let x_559 : f32 = u_xlat6.x;
  u_xlat16.x = ((x_556 * 8160.0f) + x_559);
  let x_562 : f32 = u_xlat12;
  let x_565 : f32 = u_xlat7.x;
  u_xlat16.y = ((x_562 * 0.03125f) + x_565);
  let x_568 : vec2<f32> = u_xlat16;
  u_xlat6 = (x_568 + vec2<f32>(0.5f, 0.5f));
  let x_573 : vec2<f32> = u_xlat6;
  let x_575 : vec4<f32> = x_115.x_ShaderInfoTex_TexelSize;
  let x_577 : vec2<f32> = (x_573 * vec2<f32>(x_575.x, x_575.y));
  let x_578 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_578.x, x_578.y, x_577.x, x_577.y);
  let x_581 : f32 = in_TEXCOORD2.w;
  u_xlat6.x = (x_581 * 8160.0f);
  let x_586 : f32 = u_xlat6.x;
  let x_588 : f32 = u_xlat6.x;
  u_xlatb6 = (x_586 >= -(x_588));
  let x_591 : bool = u_xlatb6;
  u_xlat6 = select(vec2<f32>(-32.0f, -0.03125f), vec2<f32>(32.0f, 0.03125f), vec2<bool>(x_591, x_591));
  let x_595 : f32 = u_xlat6.y;
  let x_597 : f32 = u_xlat0.w;
  u_xlat12 = (x_595 * x_597);
  let x_599 : f32 = u_xlat12;
  u_xlat12 = fract(x_599);
  let x_601 : f32 = u_xlat12;
  let x_603 : f32 = u_xlat6.x;
  u_xlat6.x = (x_601 * x_603);
  let x_607 : f32 = in_TEXCOORD2.w;
  let x_610 : f32 = u_xlat6.x;
  u_xlat12 = ((x_607 * 255.0f) + -(x_610));
  let x_614 : f32 = in_TEXCOORD4.z;
  let x_617 : f32 = u_xlat6.x;
  u_xlat2.x = ((x_614 * 8160.0f) + x_617);
  let x_620 : f32 = u_xlat12;
  let x_625 : vec3<f32> = u_xlat7;
  let x_627 : vec2<f32> = ((vec2<f32>(x_620, x_620) * vec2<f32>(0.03125f, 0.125f)) + vec2<f32>(x_625.y, x_625.y));
  let x_628 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_628.x, x_627.x, x_627.y);
  let x_630 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec2<f32>(x_630.x, x_630.y) + vec2<f32>(0.5f, 0.5f));
  let x_633 : vec2<f32> = u_xlat6;
  let x_635 : vec4<f32> = x_115.x_ShaderInfoTex_TexelSize;
  u_xlat6 = (x_633 * vec2<f32>(x_635.x, x_635.y));
  let x_639 : bool = u_xlatb2.w;
  if (x_639) {
    x_640 = 1.0f;
  } else {
    let x_645 : f32 = u_xlat1.x;
    x_640 = x_645;
  }
  let x_646 : f32 = x_640;
  vs_TEXCOORD1.z = x_646;
  let x_651 : bool = u_xlatb2.w;
  if (x_651) {
    let x_656 : vec3<f32> = u_xlat2;
    x_653 = vec2<f32>(x_656.x, x_656.z);
  } else {
    let x_659 : vec2<f32> = u_xlat6;
    x_653 = x_659;
  }
  let x_660 : vec2<f32> = x_653;
  vs_TEXCOORD3 = x_660;
  let x_663 : bool = u_xlatb2.w;
  if (x_663) {
    let x_668 : f32 = in_TEXCOORD3.y;
    x_664 = x_668;
  } else {
    let x_672 : f32 = in_TEXCOORD5.x;
    x_664 = x_672;
  }
  let x_673 : f32 = x_664;
  vs_TEXCOORD4.x = x_673;
  let x_676 : f32 = in_COLOR0.w;
  vs_COLOR0.w = x_676;
  let x_679 : vec4<f32> = u_xlat3;
  vs_TEXCOORD0 = x_679;
  let x_681 : f32 = u_xlat0.x;
  vs_TEXCOORD1.y = x_681;
  let x_684 : f32 = in_TEXCOORD2.y;
  vs_TEXCOORD2.x = (x_684 * 255.0f);
  vs_TEXCOORD2.y = 0.0f;
  let x_688 : vec4<f32> = in_TEXCOORD5;
  let x_689 : vec3<f32> = vec3<f32>(x_688.y, x_688.z, x_688.w);
  let x_690 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_690.x, x_689.x, x_689.y, x_689.z);
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

