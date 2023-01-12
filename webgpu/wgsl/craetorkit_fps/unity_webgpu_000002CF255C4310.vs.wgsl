type Arr = array<vec4<f32>, 16u>;

struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
}

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_131 : VGlobals;

@group(0) @binding(8) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShaderInfoTex : sampler;

var<private> in_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD7 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD4 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : vec4<bool>;
  var u_xlat2 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlat7 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlati1 : i32;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var u_xlatu18 : u32;
  var x_376 : f32;
  var u_xlatb2 : vec2<bool>;
  var u_xlat9 : vec3<f32>;
  var x_439 : f32;
  var u_xlatu9 : u32;
  var u_xlat11 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var x_648 : f32;
  var x_660 : f32;
  var x_672 : f32;
  var u_xlat16 : f32;
  var x_727 : f32;
  var x_740 : vec2<f32>;
  var x_767 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_TEXCOORD2;
  u_xlat0 = (vec4<f32>(x_12.x, x_12.z, x_12.w, x_12.y) * vec4<f32>(255.0f, 255.0f, 255.0f, 255.0f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = round(x_17);
  let x_20 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_20 * vec4<f32>(32.0f, 32.0f, 32.0f, 32.0f));
  let x_28 : vec4<f32> = u_xlat1;
  let x_29 : vec4<f32> = u_xlat1;
  u_xlatb1 = (x_28 >= -(x_29));
  let x_37 : bool = u_xlatb1.x;
  u_xlat2.x = select(-32.0f, 32.0f, x_37);
  let x_43 : bool = u_xlatb1.x;
  u_xlat2.y = select(-0.03125f, 0.03125f, x_43);
  let x_50 : bool = u_xlatb1.y;
  u_xlat2.z = select(-32.0f, 32.0f, x_50);
  let x_55 : bool = u_xlatb1.y;
  u_xlat2.w = select(-0.03125f, 0.03125f, x_55);
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat2;
  let x_64 : vec2<f32> = (vec2<f32>(x_60.x, x_60.y) * vec2<f32>(x_62.y, x_62.w));
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_64.x, x_64.y, x_65.z, x_65.w);
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = fract(vec2<f32>(x_67.x, x_67.y));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(x_77.x, x_77.z));
  let x_80 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_79.x, x_80.y, x_79.y);
  let x_82 : vec4<f32> = u_xlat2;
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec2<f32> = ((-(vec2<f32>(x_82.x, x_82.z)) * vec2<f32>(x_85.x, x_85.y)) + vec2<f32>(x_88.x, x_88.y));
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_96 : f32 = in_TEXCOORD1.x;
  let x_100 : f32 = u_xlat10.x;
  u_xlat1.x = ((x_96 * 8160.0f) + x_100);
  let x_103 : vec4<f32> = u_xlat0;
  let x_107 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(0.09375f, 0.03125f));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
  let x_111 : f32 = in_TEXCOORD1.y;
  let x_115 : f32 = u_xlat0.x;
  u_xlat1.y = ((x_111 * 2040.0f) + x_115);
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_119.x, x_119.y, x_119.x, x_119.y) + vec4<f32>(0.5f, 0.5f, 0.5f, 1.5f));
  let x_125 : vec4<f32> = u_xlat3;
  let x_136 : vec4<f32> = x_131.x_ShaderInfoTex_TexelSize;
  u_xlat3 = (x_125 * vec4<f32>(x_136.x, x_136.y, x_136.x, x_136.y));
  let x_139 : vec4<f32> = u_xlat1;
  let x_143 : vec2<f32> = (vec2<f32>(x_139.x, x_139.y) + vec2<f32>(0.5f, 2.5f));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_144.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat1;
  let x_149 : vec4<f32> = x_131.x_ShaderInfoTex_TexelSize;
  let x_151 : vec2<f32> = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_149.x, x_149.y));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_165 : vec4<f32> = u_xlat3;
  let x_168 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_165.x, x_165.y), 0.0f);
  u_xlat4 = x_168;
  let x_172 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_172.z, x_172.w), 0.0f);
  u_xlat3 = x_174;
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_179.x, x_179.y), 0.0f);
  u_xlat5 = x_181;
  let x_184 : f32 = in_TEXCOORD3.x;
  u_xlat0.x = (x_184 * 255.0f);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_188);
  let x_192 : vec4<f32> = u_xlat0;
  u_xlatb6 = (vec4<f32>(x_192.x, x_192.x, x_192.x, x_192.x) == vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_202);
  let x_206 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_214);
  let x_217 : vec4<f32> = u_xlat7;
  let x_219 : vec4<f32> = u_xlat7;
  let x_221 : vec2<f32> = (vec2<f32>(x_217.z, x_217.z) + vec2<f32>(x_219.w, x_219.y));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_222.z, x_222.w);
  let x_225 : f32 = u_xlat7.y;
  let x_227 : f32 = u_xlat1.x;
  u_xlat0.x = (x_225 + x_227);
  let x_231 : f32 = u_xlat7.x;
  let x_233 : f32 = u_xlat0.x;
  u_xlat0.x = (x_231 + x_233);
  let x_237 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_237, 1.0f);
  let x_241 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_241) + 1.0f);
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec4<f32> = in_POSITION0;
  u_xlat20.x = dot(x_247, x_249);
  let x_252 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = in_POSITION0;
  u_xlat20.y = dot(x_252, x_253);
  let x_256 : vec4<f32> = u_xlat5;
  let x_257 : vec4<f32> = in_POSITION0;
  u_xlat1.x = dot(x_256, x_257);
  let x_260 : vec2<f32> = u_xlat20;
  let x_265 : vec4<f32> = x_131.unity_ObjectToWorld[1i];
  u_xlat3 = (vec4<f32>(x_260.y, x_260.y, x_260.y, x_260.y) * x_265);
  let x_268 : vec4<f32> = x_131.unity_ObjectToWorld[0i];
  let x_269 : vec2<f32> = u_xlat20;
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_268 * vec4<f32>(x_269.x, x_269.x, x_269.x, x_269.x)) + x_272);
  let x_275 : vec4<f32> = x_131.unity_ObjectToWorld[2i];
  let x_276 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_275 * vec4<f32>(x_276.x, x_276.x, x_276.x, x_276.x)) + x_279);
  let x_281 : vec4<f32> = u_xlat3;
  let x_284 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  u_xlat3 = (x_281 + x_284);
  let x_286 : vec4<f32> = u_xlat3;
  let x_289 : vec4<f32> = x_131.unity_MatrixVP[1i];
  u_xlat5 = (vec4<f32>(x_286.y, x_286.y, x_286.y, x_286.y) * x_289);
  let x_292 : vec4<f32> = x_131.unity_MatrixVP[0i];
  let x_293 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_292 * vec4<f32>(x_293.x, x_293.x, x_293.x, x_293.x)) + x_296);
  let x_299 : vec4<f32> = x_131.unity_MatrixVP[2i];
  let x_300 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_299 * vec4<f32>(x_300.z, x_300.z, x_300.z, x_300.z)) + x_303);
  let x_310 : vec4<f32> = x_131.unity_MatrixVP[3i];
  let x_311 : vec4<f32> = u_xlat3;
  let x_314 : vec4<f32> = u_xlat5;
  gl_Position = ((x_310 * vec4<f32>(x_311.w, x_311.w, x_311.w, x_311.w)) + x_314);
  u_xlat2.y = 0.0f;
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlati1 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    let x_331 : f32 = u_xlat3.y;
    u_xlatb18 = (x_331 >= 7.0f);
    u_xlati1 = 0i;
    let x_334 : bool = u_xlatb18;
    if (x_334) {
      break;
    }
    let x_340 : f32 = u_xlat3.y;
    let x_342 : f32 = u_xlat3.y;
    u_xlat18 = (x_340 + x_342);
    let x_346 : f32 = u_xlat18;
    u_xlatu18 = u32(x_346);
    let x_349 : f32 = in_TEXCOORD7;
    let x_350 : u32 = u_xlatu18;
    let x_354 : f32 = x_131.x_TextureInfo[bitcast<i32>(x_350)].x;
    u_xlatb18 = (x_349 == x_354);
    let x_356 : bool = u_xlatb18;
    if (x_356) {
      let x_360 : f32 = u_xlat3.y;
      u_xlat3.x = x_360;
      u_xlati1 = -1i;
      break;
    }
    let x_365 : f32 = u_xlat3.y;
    u_xlat2.x = (x_365 + 1.0f);
    let x_368 : vec4<f32> = u_xlat2;
    let x_369 : vec2<f32> = vec2<f32>(x_368.y, x_368.x);
    let x_370 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    let x_372 : bool = u_xlatb18;
    u_xlatb1.x = x_372;
  }
  let x_374 : i32 = u_xlati1;
  if ((x_374 != 0i)) {
    let x_380 : f32 = u_xlat3.x;
    x_376 = x_380;
  } else {
    x_376 = 7.0f;
  }
  let x_382 : f32 = x_376;
  u_xlat1.x = x_382;
  let x_385 : bool = u_xlatb6.w;
  u_xlat2.x = select(0.0f, 2.0f, x_385);
  let x_389 : bool = u_xlatb6.x;
  u_xlat2.y = select(0.0f, 4.0f, x_389);
  let x_393 : f32 = u_xlat0.x;
  let x_395 : f32 = u_xlat2.x;
  u_xlat0.x = (x_393 + x_395);
  let x_399 : f32 = u_xlat1.y;
  let x_402 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_399 * 3.0f) + x_402);
  let x_407 : f32 = u_xlat2.y;
  let x_409 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = (x_407 + x_409);
  let x_414 : vec4<f32> = in_TEXCOORD5;
  u_xlat0.x = dot(vec2<f32>(x_414.x, x_414.y), vec2<f32>(65025.0f, 255.0f));
  let x_424 : vec4<f32> = in_TEXCOORD3;
  let x_426 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_424.z, x_424.w, x_424.z, x_424.z));
  u_xlatb2 = vec2<bool>(x_426.x, x_426.y);
  let x_430 : bool = u_xlatb2.x;
  u_xlat9.x = select(0.0f, 1.0f, x_430);
  let x_434 : bool = u_xlatb2.x;
  u_xlat2.x = select(2.0f, 3.0f, x_434);
  let x_438 : bool = u_xlatb2.y;
  if (x_438) {
    let x_443 : f32 = u_xlat2.x;
    x_439 = x_443;
  } else {
    let x_446 : f32 = u_xlat9.x;
    x_439 = x_446;
  }
  let x_447 : f32 = x_439;
  vs_TEXCOORD1.w = x_447;
  let x_450 : bool = u_xlatb6.y;
  if (x_450) {
    let x_454 : f32 = u_xlat1.x;
    let x_456 : f32 = u_xlat1.x;
    u_xlat9.x = (x_454 + x_456);
    let x_461 : f32 = u_xlat9.x;
    u_xlatu9 = u32(x_461);
    let x_466 : vec2<f32> = in_TEXCOORD0;
    let x_467 : u32 = u_xlatu9;
    let x_470 : vec4<f32> = x_131.x_TextureInfo[bitcast<i32>(x_467)];
    let x_472 : vec2<f32> = (x_466 * vec2<f32>(x_470.y, x_470.z));
    let x_473 : vec4<f32> = vs_TEXCOORD0;
    vs_TEXCOORD0 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
  } else {
    let x_476 : vec2<f32> = in_TEXCOORD0;
    let x_477 : vec4<f32> = vs_TEXCOORD0;
    vs_TEXCOORD0 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
  }
  let x_481 : f32 = in_TEXCOORD4.x;
  let x_484 : f32 = u_xlat10.z;
  u_xlat3.x = ((x_481 * 8160.0f) + x_484);
  let x_488 : f32 = in_TEXCOORD4.y;
  let x_491 : f32 = u_xlat0.y;
  u_xlat3.y = ((x_488 * 2040.0f) + x_491);
  let x_494 : vec4<f32> = u_xlat3;
  let x_497 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) + vec2<f32>(0.5f, 0.5f));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_498.y, x_497.y, x_498.w);
  let x_500 : vec4<f32> = u_xlat2;
  let x_503 : vec4<f32> = x_131.x_ShaderInfoTex_TexelSize;
  let x_505 : vec2<f32> = (vec2<f32>(x_500.x, x_500.z) * vec2<f32>(x_503.x, x_503.y));
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_505.x, x_506.y, x_505.y, x_506.w);
  let x_509 : bool = u_xlatb1.z;
  u_xlat3.x = select(-32.0f, 32.0f, x_509);
  let x_513 : bool = u_xlatb1.z;
  u_xlat3.y = select(-0.03125f, 0.03125f, x_513);
  let x_517 : bool = u_xlatb1.w;
  u_xlat3.z = select(-32.0f, 32.0f, x_517);
  let x_521 : bool = u_xlatb1.w;
  u_xlat3.w = select(-0.03125f, 0.03125f, x_521);
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_524.z, x_524.w, x_524.z) * vec3<f32>(x_526.y, x_526.w, x_526.y));
  let x_529 : vec3<f32> = u_xlat9;
  u_xlat9 = fract(x_529);
  let x_532 : vec3<f32> = u_xlat9;
  let x_534 : vec4<f32> = u_xlat3;
  let x_536 : vec2<f32> = (vec2<f32>(x_532.y, x_532.z) * vec2<f32>(x_534.z, x_534.x));
  let x_537 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_536.x, x_537.y, x_536.y);
  let x_540 : vec4<f32> = u_xlat3;
  let x_543 : vec3<f32> = u_xlat9;
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat8 = ((-(vec3<f32>(x_540.x, x_540.z, x_540.x)) * x_543) + vec3<f32>(x_545.z, x_545.w, x_545.z));
  let x_548 : vec3<f32> = u_xlat8;
  u_xlat8 = (x_548 * vec3<f32>(0.03125f, 0.03125f, 0.125f));
  let x_553 : f32 = in_TEXCOORD4.z;
  let x_556 : f32 = u_xlat11.z;
  u_xlat5.x = ((x_553 * 8160.0f) + x_556);
  let x_559 : vec4<f32> = in_TEXCOORD4;
  let x_563 : vec3<f32> = u_xlat8;
  let x_565 : vec2<f32> = ((vec2<f32>(x_559.w, x_559.w) * vec2<f32>(2040.0f, 2040.0f)) + vec2<f32>(x_563.x, x_563.z));
  let x_566 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_566.x, x_565.x, x_565.y, x_566.w);
  let x_568 : vec4<f32> = u_xlat5;
  let x_570 : vec2<f32> = (vec2<f32>(x_568.x, x_568.y) + vec2<f32>(0.5f, 0.5f));
  let x_571 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_570.x, x_571.y, x_570.y);
  let x_573 : vec3<f32> = u_xlat8;
  let x_576 : vec4<f32> = x_131.x_ShaderInfoTex_TexelSize;
  let x_578 : vec2<f32> = (vec2<f32>(x_573.x, x_573.z) * vec2<f32>(x_576.x, x_576.y));
  let x_579 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_578.x, x_579.y, x_578.y);
  let x_582 : bool = u_xlatb2.y;
  if (x_582) {
    let x_588 : vec3<f32> = u_xlat8;
    let x_590 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_588.x, x_588.z), 0.0f);
    u_xlat7 = vec4<f32>(x_590.w, x_590.x, x_590.y, x_590.z);
    let x_593 : vec4<f32> = u_xlat7;
    let x_594 : vec3<f32> = vec3<f32>(x_593.y, x_593.z, x_593.w);
    let x_595 : vec4<f32> = vs_COLOR0;
    vs_COLOR0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  } else {
    let x_599 : vec4<f32> = in_COLOR0;
    u_xlat9 = ((vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(0.084971003f, 0.084971003f, 0.084971003f)) + vec3<f32>(-0.000163029f, -0.000163029f, -0.000163029f));
    let x_607 : vec4<f32> = in_COLOR0;
    let x_614 : vec3<f32> = ((vec3<f32>(x_607.x, x_607.y, x_607.z) * vec3<f32>(0.265884995f, 0.265884995f, 0.265884995f)) + vec3<f32>(0.736584008f, 0.736584008f, 0.736584008f));
    let x_615 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_614.x, x_615.y, x_614.y, x_614.z);
    let x_617 : vec4<f32> = in_COLOR0;
    let x_619 : vec4<f32> = u_xlat3;
    let x_624 : vec3<f32> = ((vec3<f32>(x_617.x, x_617.y, x_617.z) * vec3<f32>(x_619.x, x_619.z, x_619.w)) + vec3<f32>(-0.00980184f, -0.00980184f, -0.00980184f));
    let x_625 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_624.x, x_625.y, x_624.y, x_624.z);
    let x_627 : vec4<f32> = in_COLOR0;
    let x_629 : vec4<f32> = u_xlat3;
    let x_634 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(x_629.x, x_629.z, x_629.w)) + vec3<f32>(0.00319697f, 0.00319697f, 0.00319697f));
    let x_635 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_634.x, x_635.y, x_634.y, x_634.z);
    let x_637 : vec4<f32> = in_COLOR0;
    let x_641 : vec4<bool> = (vec4<f32>(x_637.x, x_637.y, x_637.z, x_637.x) < vec4<f32>(0.072549f, 0.072549f, 0.072549f, 0.0f));
    let x_643 : vec3<bool> = vec3<bool>(x_641.x, x_641.y, x_641.z);
    let x_644 : vec4<bool> = u_xlatb6;
    u_xlatb6 = vec4<bool>(x_643.x, x_643.y, x_643.z, x_644.w);
    let x_647 : bool = u_xlatb6.x;
    if (x_647) {
      let x_652 : f32 = u_xlat9.x;
      x_648 = x_652;
    } else {
      let x_655 : f32 = u_xlat3.x;
      x_648 = x_655;
    }
    let x_656 : f32 = x_648;
    vs_COLOR0.x = x_656;
    let x_659 : bool = u_xlatb6.y;
    if (x_659) {
      let x_664 : f32 = u_xlat9.y;
      x_660 = x_664;
    } else {
      let x_667 : f32 = u_xlat3.z;
      x_660 = x_667;
    }
    let x_668 : f32 = x_660;
    vs_COLOR0.y = x_668;
    let x_671 : bool = u_xlatb6.z;
    if (x_671) {
      let x_676 : f32 = u_xlat9.z;
      x_672 = x_676;
    } else {
      let x_679 : f32 = u_xlat3.w;
      x_672 = x_679;
    }
    let x_680 : f32 = x_672;
    vs_COLOR0.z = x_680;
    let x_683 : f32 = in_COLOR0.w;
    u_xlat7.x = x_683;
  }
  let x_686 : f32 = in_TEXCOORD1.z;
  let x_689 : f32 = u_xlat11.x;
  u_xlat3.x = ((x_686 * 8160.0f) + x_689);
  let x_693 : f32 = in_TEXCOORD1.w;
  let x_696 : f32 = u_xlat8.y;
  u_xlat3.y = ((x_693 * 2040.0f) + x_696);
  let x_699 : vec4<f32> = u_xlat3;
  let x_701 : vec2<f32> = (vec2<f32>(x_699.x, x_699.y) + vec2<f32>(0.5f, 0.5f));
  let x_702 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_701.x, x_701.y, x_702.z);
  let x_704 : vec3<f32> = u_xlat9;
  let x_707 : vec4<f32> = x_131.x_ShaderInfoTex_TexelSize;
  let x_709 : vec2<f32> = (vec2<f32>(x_704.x, x_704.y) * vec2<f32>(x_707.x, x_707.y));
  let x_710 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_709.x, x_709.y, x_710.z);
  let x_716 : vec4<f32> = u_xlat2;
  let x_718 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_716.x, x_716.z), 0.0f);
  u_xlat16 = x_718.w;
  let x_720 : f32 = u_xlat16;
  let x_722 : f32 = u_xlat7.x;
  vs_COLOR0.w = (x_720 * x_722);
  let x_726 : bool = u_xlatb6.w;
  if (x_726) {
    let x_730 : f32 = u_xlat16;
    x_727 = x_730;
  } else {
    let x_733 : f32 = u_xlat0.x;
    x_727 = x_733;
  }
  let x_734 : f32 = x_727;
  vs_TEXCOORD1.z = x_734;
  let x_739 : bool = u_xlatb6.w;
  if (x_739) {
    let x_743 : vec4<f32> = u_xlat5;
    x_740 = vec2<f32>(x_743.x, x_743.z);
  } else {
    let x_746 : vec3<f32> = u_xlat8;
    x_740 = vec2<f32>(x_746.x, x_746.z);
  }
  let x_748 : vec2<f32> = x_740;
  vs_TEXCOORD3 = x_748;
  let x_752 : vec3<f32> = u_xlat9;
  let x_754 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_752.x, x_752.y), 0.0f);
  u_xlat0 = x_754;
  let x_755 : vec2<f32> = u_xlat20;
  let x_756 : vec4<f32> = u_xlat0;
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec2<f32> = ((x_755 * vec2<f32>(x_756.x, x_756.y)) + vec2<f32>(x_759.z, x_759.w));
  let x_762 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_762.x, x_762.y, x_761.x, x_761.y);
  let x_766 : bool = u_xlatb6.w;
  if (x_766) {
    let x_771 : f32 = in_TEXCOORD3.y;
    x_767 = x_771;
  } else {
    let x_775 : f32 = in_TEXCOORD6.x;
    x_767 = x_775;
  }
  let x_776 : f32 = x_767;
  vs_TEXCOORD4.x = x_776;
  let x_779 : f32 = u_xlat1.x;
  vs_TEXCOORD1.y = x_779;
  let x_781 : vec4<f32> = in_TEXCOORD6;
  let x_782 : vec3<f32> = vec3<f32>(x_781.y, x_781.z, x_781.w);
  let x_783 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_783.x, x_782.x, x_782.y, x_782.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2) @interpolate(flat)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(3) @interpolate(flat)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD2_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec4<f32>, @location(5) in_TEXCOORD3_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(9) in_TEXCOORD7_param : f32, @location(7) in_TEXCOORD5_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(6) in_TEXCOORD4_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(8) in_TEXCOORD6_param : vec4<f32>) -> main_out {
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD3 = in_TEXCOORD3_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD7 = in_TEXCOORD7_param;
  in_TEXCOORD5 = in_TEXCOORD5_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD6 = in_TEXCOORD6_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

