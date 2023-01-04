type Arr = array<vec4<f32>, 16u>;

struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(21) var<uniform> x_122 : VGlobals;

@group(0) @binding(9) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShaderInfoTex : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> in_TEXCOORD3 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati16 : i32;

var<private> u_xlatb23 : bool;

var<private> u_xlat23 : f32;

var<private> u_xlatu23 : u32;

var<private> in_TEXCOORD6 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD4 : vec4<f32>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlat21 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatu21 : u32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb6 : vec3<bool>;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_366 : f32;
  var x_640 : f32;
  var x_652 : f32;
  var x_664 : f32;
  var x_715 : f32;
  var x_730 : vec2<f32>;
  var x_756 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_TEXCOORD2;
  u_xlat0 = (vec4<f32>(x_12.x, x_12.x, x_12.z, x_12.z) * vec4<f32>(255.0f, 8160.0f, 255.0f, 8160.0f));
  let x_22 : vec4<f32> = u_xlat0;
  let x_24 : vec4<f32> = u_xlat0;
  u_xlatb1 = (vec4<f32>(x_22.y, x_22.y, x_22.w, x_22.w) >= -(vec4<f32>(x_24.y, x_24.y, x_24.w, x_24.w)));
  let x_33 : bool = u_xlatb1.x;
  u_xlat1.x = select(-32.0f, 32.0f, x_33);
  let x_41 : bool = u_xlatb1.y;
  u_xlat1.y = select(-0.03125f, 0.03125f, x_41);
  let x_48 : bool = u_xlatb1.z;
  u_xlat1.z = select(-32.0f, 32.0f, x_48);
  let x_53 : bool = u_xlatb1.w;
  u_xlat1.w = select(-0.03125f, 0.03125f, x_53);
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec2<f32> = (vec2<f32>(x_57.x, x_57.z) * vec2<f32>(x_59.y, x_59.w));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_62.z, x_62.w);
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec2<f32> = fract(vec2<f32>(x_64.x, x_64.y));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_67.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat1;
  let x_73 : vec2<f32> = (vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.x, x_71.z));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_78 : vec4<f32> = in_TEXCOORD2;
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat14 = ((vec2<f32>(x_78.x, x_78.z) * vec2<f32>(255.0f, 255.0f)) + -(vec2<f32>(x_82.x, x_82.y)));
  let x_89 : f32 = in_TEXCOORD1.x;
  let x_92 : f32 = u_xlat0.x;
  u_xlat1.x = ((x_89 * 8160.0f) + x_92);
  let x_95 : vec2<f32> = u_xlat14;
  let x_98 : vec2<f32> = (x_95 * vec2<f32>(0.09375f, 0.03125f));
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_99.y, x_98.y, x_99.w);
  let x_102 : f32 = in_TEXCOORD1.y;
  let x_106 : f32 = u_xlat0.x;
  u_xlat1.y = ((x_102 * 2040.0f) + x_106);
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_110.x, x_110.y, x_110.x, x_110.y) + vec4<f32>(0.5f, 0.5f, 0.5f, 1.5f));
  let x_116 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  u_xlat2 = (x_116 * vec4<f32>(x_127.x, x_127.y, x_127.x, x_127.y));
  let x_130 : vec4<f32> = u_xlat1;
  let x_134 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) + vec2<f32>(0.5f, 2.5f));
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_135.y, x_135.z, x_134.y);
  let x_137 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  let x_142 : vec2<f32> = (vec2<f32>(x_137.x, x_137.w) * vec2<f32>(x_140.x, x_140.y));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_143.y, x_143.z, x_142.y);
  let x_155 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_155.x, x_155.y), 0.0f);
  u_xlat1 = x_158;
  let x_162 : vec4<f32> = u_xlat2;
  let x_164 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_162.z, x_162.w), 0.0f);
  u_xlat2 = x_164;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_169.x, x_169.w), 0.0f);
  u_xlat3 = x_171;
  let x_174 : f32 = in_TEXCOORD3.x;
  u_xlat0.x = (x_174 * 255.0f);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_178);
  let x_182 : vec4<f32> = u_xlat0;
  u_xlatb4 = (vec4<f32>(x_182.x, x_182.x, x_182.x, x_182.x) == vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_192 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_192);
  let x_196 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_196);
  let x_200 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_200);
  let x_204 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_204);
  let x_207 : vec4<f32> = u_xlat5;
  let x_209 : vec4<f32> = u_xlat5;
  let x_211 : vec2<f32> = (vec2<f32>(x_207.z, x_207.z) + vec2<f32>(x_209.w, x_209.y));
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_211.x, x_212.y, x_212.z, x_211.y);
  let x_215 : f32 = u_xlat5.y;
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = (x_215 + x_217);
  let x_221 : f32 = u_xlat5.x;
  let x_223 : f32 = u_xlat0.x;
  u_xlat0.x = (x_221 + x_223);
  let x_227 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_227, 1.0f);
  let x_231 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_231) + 1.0f);
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = in_POSITION0;
  u_xlat15.x = dot(x_236, x_238);
  let x_241 : vec4<f32> = u_xlat2;
  let x_242 : vec4<f32> = in_POSITION0;
  u_xlat15.y = dot(x_241, x_242);
  let x_245 : vec4<f32> = u_xlat3;
  let x_246 : vec4<f32> = in_POSITION0;
  u_xlat1.x = dot(x_245, x_246);
  let x_249 : vec2<f32> = u_xlat15;
  let x_254 : vec4<f32> = x_122.unity_ObjectToWorld[1i];
  u_xlat2 = (vec4<f32>(x_249.y, x_249.y, x_249.y, x_249.y) * x_254);
  let x_257 : vec4<f32> = x_122.unity_ObjectToWorld[0i];
  let x_258 : vec2<f32> = u_xlat15;
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_257 * vec4<f32>(x_258.x, x_258.x, x_258.x, x_258.x)) + x_261);
  let x_264 : vec4<f32> = x_122.unity_ObjectToWorld[2i];
  let x_265 : vec4<f32> = u_xlat1;
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_264 * vec4<f32>(x_265.x, x_265.x, x_265.x, x_265.x)) + x_268);
  let x_270 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  u_xlat2 = (x_270 + x_273);
  let x_275 : vec4<f32> = u_xlat2;
  let x_278 : vec4<f32> = x_122.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_275.y, x_275.y, x_275.y, x_275.y) * x_278);
  let x_281 : vec4<f32> = x_122.unity_MatrixVP[0i];
  let x_282 : vec4<f32> = u_xlat2;
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_281 * vec4<f32>(x_282.x, x_282.x, x_282.x, x_282.x)) + x_285);
  let x_288 : vec4<f32> = x_122.unity_MatrixVP[2i];
  let x_289 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_288 * vec4<f32>(x_289.z, x_289.z, x_289.z, x_289.z)) + x_292);
  let x_299 : vec4<f32> = x_122.unity_MatrixVP[3i];
  let x_300 : vec4<f32> = u_xlat2;
  let x_303 : vec4<f32> = u_xlat3;
  gl_Position = ((x_299 * vec4<f32>(x_300.w, x_300.w, x_300.w, x_300.w)) + x_303);
  u_xlat1.y = 0.0f;
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlati16 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    let x_320 : f32 = u_xlat2.y;
    u_xlatb23 = (x_320 >= 7.0f);
    u_xlati16 = 0i;
    let x_323 : bool = u_xlatb23;
    if (x_323) {
      break;
    }
    let x_329 : f32 = u_xlat2.y;
    let x_331 : f32 = u_xlat2.y;
    u_xlat23 = (x_329 + x_331);
    let x_335 : f32 = u_xlat23;
    u_xlatu23 = u32(x_335);
    let x_338 : f32 = in_TEXCOORD6;
    let x_339 : u32 = u_xlatu23;
    let x_343 : f32 = x_122.x_TextureInfo[bitcast<i32>(x_339)].x;
    u_xlatb23 = (x_338 == x_343);
    let x_345 : bool = u_xlatb23;
    if (x_345) {
      let x_349 : f32 = u_xlat2.y;
      u_xlat2.x = x_349;
      u_xlati16 = -1i;
      break;
    }
    let x_354 : f32 = u_xlat2.y;
    u_xlat1.x = (x_354 + 1.0f);
    let x_357 : vec4<f32> = u_xlat1;
    let x_358 : vec2<f32> = vec2<f32>(x_357.y, x_357.x);
    let x_359 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
    let x_362 : bool = u_xlatb23;
    u_xlatb16 = x_362;
  }
  let x_363 : i32 = u_xlati16;
  if ((x_363 != 0i)) {
    let x_370 : f32 = u_xlat2.x;
    x_366 = x_370;
  } else {
    x_366 = 7.0f;
  }
  let x_372 : f32 = x_366;
  u_xlat1.x = x_372;
  let x_375 : bool = u_xlatb4.w;
  u_xlat2.x = select(0.0f, 2.0f, x_375);
  let x_379 : bool = u_xlatb4.x;
  u_xlat2.y = select(0.0f, 4.0f, x_379);
  let x_383 : f32 = u_xlat0.x;
  let x_385 : f32 = u_xlat2.x;
  u_xlat0.x = (x_383 + x_385);
  let x_389 : f32 = u_xlat0.w;
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_389 * 3.0f) + x_392);
  let x_397 : f32 = u_xlat2.y;
  let x_399 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = (x_397 + x_399);
  let x_404 : vec4<f32> = in_TEXCOORD4;
  u_xlat0.x = dot(vec2<f32>(x_404.z, x_404.w), vec2<f32>(65025.0f, 255.0f));
  let x_414 : vec4<f32> = in_TEXCOORD3;
  let x_416 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_414.z, x_414.w, x_414.z, x_414.z));
  u_xlatb2 = vec2<bool>(x_416.x, x_416.y);
  let x_420 : bool = u_xlatb2.x;
  u_xlat21 = select(0.0f, 1.0f, x_420);
  let x_424 : bool = u_xlatb2.x;
  u_xlat8 = select(2.0f, 3.0f, x_424);
  let x_427 : bool = u_xlatb2.y;
  let x_428 : f32 = u_xlat8;
  let x_429 : f32 = u_xlat21;
  vs_TEXCOORD1.w = select(x_429, x_428, x_427);
  let x_433 : bool = u_xlatb4.y;
  if (x_433) {
    let x_437 : f32 = u_xlat1.x;
    let x_439 : f32 = u_xlat1.x;
    u_xlat21 = (x_437 + x_439);
    let x_442 : f32 = u_xlat21;
    u_xlatu21 = u32(x_442);
    let x_447 : vec2<f32> = in_TEXCOORD0;
    let x_448 : u32 = u_xlatu21;
    let x_451 : vec4<f32> = x_122.x_TextureInfo[bitcast<i32>(x_448)];
    let x_453 : vec2<f32> = (x_447 * vec2<f32>(x_451.y, x_451.z));
    let x_454 : vec4<f32> = vs_TEXCOORD0;
    vs_TEXCOORD0 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  } else {
    let x_457 : vec2<f32> = in_TEXCOORD0;
    let x_458 : vec4<f32> = vs_TEXCOORD0;
    vs_TEXCOORD0 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
  }
  let x_461 : f32 = in_TEXCOORD4.x;
  let x_464 : f32 = u_xlat0.y;
  u_xlat3.x = ((x_461 * 8160.0f) + x_464);
  let x_468 : f32 = in_TEXCOORD4.y;
  let x_471 : f32 = u_xlat0.z;
  u_xlat3.y = ((x_468 * 2040.0f) + x_471);
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec2<f32>(x_475.x, x_475.y) + vec2<f32>(0.5f, 0.5f));
  let x_479 : vec2<f32> = u_xlat7;
  let x_481 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  u_xlat7 = (x_479 * vec2<f32>(x_481.x, x_481.y));
  let x_484 : vec4<f32> = in_TEXCOORD2;
  u_xlat3 = (vec4<f32>(x_484.w, x_484.w, x_484.y, x_484.y) * vec4<f32>(255.0f, 8160.0f, 255.0f, 8160.0f));
  let x_488 : vec4<f32> = u_xlat3;
  let x_490 : vec4<f32> = u_xlat3;
  u_xlatb5 = (vec4<f32>(x_488.y, x_488.y, x_488.w, x_488.w) >= -(vec4<f32>(x_490.y, x_490.y, x_490.w, x_490.w)));
  let x_495 : bool = u_xlatb5.x;
  u_xlat5.x = select(-32.0f, 32.0f, x_495);
  let x_499 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.03125f, 0.03125f, x_499);
  let x_503 : bool = u_xlatb5.z;
  u_xlat5.z = select(-32.0f, 32.0f, x_503);
  let x_507 : bool = u_xlatb5.w;
  u_xlat5.w = select(-0.03125f, 0.03125f, x_507);
  let x_511 : vec4<f32> = u_xlat3;
  let x_513 : vec4<f32> = u_xlat5;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.z, x_511.x) * vec3<f32>(x_513.y, x_513.w, x_513.y));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_516.y, x_515.y, x_515.z);
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec3<f32> = fract(vec3<f32>(x_518.x, x_518.z, x_518.w));
  let x_521 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_520.x, x_521.y, x_520.y, x_520.z);
  let x_523 : vec4<f32> = u_xlat2;
  let x_525 : vec4<f32> = u_xlat5;
  let x_527 : vec3<f32> = (vec3<f32>(x_523.x, x_523.z, x_523.w) * vec3<f32>(x_525.x, x_525.z, x_525.x));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_528.y, x_527.y, x_527.z);
  let x_530 : vec4<f32> = in_TEXCOORD2;
  let x_534 : vec4<f32> = u_xlat2;
  let x_537 : vec3<f32> = ((vec3<f32>(x_530.w, x_530.y, x_530.w) * vec3<f32>(255.0f, 255.0f, 255.0f)) + -(vec3<f32>(x_534.x, x_534.z, x_534.w)));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat3;
  let x_544 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(0.03125f, 0.03125f, 0.125f));
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_550 : f32 = in_TEXCOORD4.z;
  let x_553 : f32 = u_xlat2.w;
  u_xlat4.x = ((x_550 * 8160.0f) + x_553);
  let x_556 : vec4<f32> = in_TEXCOORD4;
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec2<f32> = ((vec2<f32>(x_556.w, x_556.w) * vec2<f32>(2040.0f, 2040.0f)) + vec2<f32>(x_560.x, x_560.z));
  let x_563 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_563.x, x_562.x, x_562.y);
  let x_565 : vec3<f32> = u_xlat4;
  let x_567 : vec2<f32> = (vec2<f32>(x_565.x, x_565.y) + vec2<f32>(0.5f, 0.5f));
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_567.x, x_568.y, x_568.z, x_567.y);
  let x_570 : vec4<f32> = u_xlat2;
  let x_573 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  let x_575 : vec2<f32> = (vec2<f32>(x_570.x, x_570.w) * vec2<f32>(x_573.x, x_573.y));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_576.y, x_576.z, x_575.y);
  let x_579 : bool = u_xlatb2.y;
  if (x_579) {
    let x_585 : vec4<f32> = u_xlat2;
    let x_587 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_585.x, x_585.w), 0.0f);
    u_xlat5 = vec4<f32>(x_587.w, x_587.x, x_587.y, x_587.z);
    let x_590 : vec4<f32> = u_xlat5;
    let x_591 : vec3<f32> = vec3<f32>(x_590.y, x_590.z, x_590.w);
    let x_592 : vec4<f32> = vs_COLOR0;
    vs_COLOR0 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  } else {
    let x_596 : vec4<f32> = in_COLOR0;
    let x_603 : vec3<f32> = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(0.084971003f, 0.084971003f, 0.084971003f)) + vec3<f32>(-0.000163029f, -0.000163029f, -0.000163029f));
    let x_604 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_603.x, x_604.y, x_603.y, x_603.z);
    let x_607 : vec4<f32> = in_COLOR0;
    u_xlat12 = ((vec3<f32>(x_607.x, x_607.y, x_607.z) * vec3<f32>(0.265884995f, 0.265884995f, 0.265884995f)) + vec3<f32>(0.736584008f, 0.736584008f, 0.736584008f));
    let x_615 : vec4<f32> = in_COLOR0;
    let x_617 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_615.x, x_615.y, x_615.z) * x_617) + vec3<f32>(-0.00980184f, -0.00980184f, -0.00980184f));
    let x_622 : vec4<f32> = in_COLOR0;
    let x_624 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_622.x, x_622.y, x_622.z) * x_624) + vec3<f32>(0.00319697f, 0.00319697f, 0.00319697f));
    let x_632 : vec4<f32> = in_COLOR0;
    let x_636 : vec4<bool> = (vec4<f32>(x_632.x, x_632.y, x_632.z, x_632.x) < vec4<f32>(0.072549f, 0.072549f, 0.072549f, 0.0f));
    u_xlatb6 = vec3<bool>(x_636.x, x_636.y, x_636.z);
    let x_639 : bool = u_xlatb6.x;
    if (x_639) {
      let x_644 : f32 = u_xlat3.x;
      x_640 = x_644;
    } else {
      let x_647 : f32 = u_xlat12.x;
      x_640 = x_647;
    }
    let x_648 : f32 = x_640;
    vs_COLOR0.x = x_648;
    let x_651 : bool = u_xlatb6.y;
    if (x_651) {
      let x_656 : f32 = u_xlat3.z;
      x_652 = x_656;
    } else {
      let x_659 : f32 = u_xlat12.y;
      x_652 = x_659;
    }
    let x_660 : f32 = x_652;
    vs_COLOR0.y = x_660;
    let x_663 : bool = u_xlatb6.z;
    if (x_663) {
      let x_668 : f32 = u_xlat3.w;
      x_664 = x_668;
    } else {
      let x_671 : f32 = u_xlat12.z;
      x_664 = x_671;
    }
    let x_672 : f32 = x_664;
    vs_COLOR0.z = x_672;
    let x_675 : f32 = in_COLOR0.w;
    u_xlat5.x = x_675;
  }
  let x_679 : f32 = in_TEXCOORD1.z;
  let x_682 : f32 = u_xlat2.z;
  u_xlat6.x = ((x_679 * 8160.0f) + x_682);
  let x_686 : f32 = in_TEXCOORD1.w;
  let x_689 : f32 = u_xlat3.y;
  u_xlat6.y = ((x_686 * 2040.0f) + x_689);
  let x_693 : vec2<f32> = u_xlat6;
  u_xlat9 = (x_693 + vec2<f32>(0.5f, 0.5f));
  let x_695 : vec2<f32> = u_xlat9;
  let x_697 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  u_xlat9 = (x_695 * vec2<f32>(x_697.x, x_697.y));
  let x_703 : vec2<f32> = u_xlat7;
  let x_704 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_703, 0.0f);
  u_xlat7.x = x_704.w;
  let x_708 : f32 = u_xlat7.x;
  let x_710 : f32 = u_xlat5.x;
  vs_COLOR0.w = (x_708 * x_710);
  let x_714 : bool = u_xlatb4.w;
  if (x_714) {
    let x_719 : f32 = u_xlat7.x;
    x_715 = x_719;
  } else {
    let x_722 : f32 = u_xlat0.x;
    x_715 = x_722;
  }
  let x_723 : f32 = x_715;
  vs_TEXCOORD1.z = x_723;
  let x_728 : bool = u_xlatb4.w;
  if (x_728) {
    let x_733 : vec3<f32> = u_xlat4;
    x_730 = vec2<f32>(x_733.x, x_733.z);
  } else {
    let x_736 : vec4<f32> = u_xlat2;
    x_730 = vec2<f32>(x_736.x, x_736.w);
  }
  let x_738 : vec2<f32> = x_730;
  vs_TEXCOORD3 = x_738;
  let x_742 : vec2<f32> = u_xlat9;
  let x_743 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_742, 0.0f);
  u_xlat0 = x_743;
  let x_744 : vec2<f32> = u_xlat15;
  let x_745 : vec4<f32> = u_xlat0;
  let x_748 : vec4<f32> = u_xlat0;
  let x_750 : vec2<f32> = ((x_744 * vec2<f32>(x_745.x, x_745.y)) + vec2<f32>(x_748.z, x_748.w));
  let x_751 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_751.x, x_751.y, x_750.x, x_750.y);
  let x_755 : bool = u_xlatb4.w;
  if (x_755) {
    let x_760 : f32 = in_TEXCOORD3.y;
    x_756 = x_760;
  } else {
    let x_764 : f32 = in_TEXCOORD5.x;
    x_756 = x_764;
  }
  let x_765 : f32 = x_756;
  vs_TEXCOORD4.x = x_765;
  let x_768 : f32 = u_xlat1.x;
  vs_TEXCOORD1.y = x_768;
  let x_770 : vec4<f32> = in_TEXCOORD5;
  let x_771 : vec3<f32> = vec3<f32>(x_770.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_772.x, x_771.x, x_771.y, x_771.z);
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
fn main(@location(4) in_TEXCOORD2_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec4<f32>, @location(5) in_TEXCOORD3_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(8) in_TEXCOORD6_param : f32, @location(6) in_TEXCOORD4_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(7) in_TEXCOORD5_param : vec4<f32>) -> main_out {
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD3 = in_TEXCOORD3_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD6 = in_TEXCOORD6_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD5 = in_TEXCOORD5_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

