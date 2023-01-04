type Arr = array<vec4<f32>, 16u>;

struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_ShaderInfoTex_TexelSize : vec4<f32>,
  x_TextureInfo : Arr,
}

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_122 : VGlobals;

@group(0) @binding(8) var x_ShaderInfoTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShaderInfoTex : sampler;

var<private> in_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD6 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec4<bool>;
  var u_xlat1 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlati16 : i32;
  var u_xlatb23 : bool;
  var u_xlat23 : f32;
  var u_xlatu23 : u32;
  var u_xlatb16 : bool;
  var x_365 : f32;
  var u_xlatb2 : vec2<bool>;
  var u_xlat21 : f32;
  var u_xlat8 : f32;
  var u_xlatu21 : u32;
  var u_xlat7 : vec2<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlat4 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb6 : vec3<bool>;
  var x_639 : f32;
  var x_651 : f32;
  var x_663 : f32;
  var u_xlat6 : vec2<f32>;
  var u_xlat9 : vec2<f32>;
  var x_714 : f32;
  var x_728 : vec2<f32>;
  var x_754 : f32;
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
    let x_369 : f32 = u_xlat2.x;
    x_365 = x_369;
  } else {
    x_365 = 7.0f;
  }
  let x_371 : f32 = x_365;
  u_xlat1.x = x_371;
  let x_374 : bool = u_xlatb4.w;
  u_xlat2.x = select(0.0f, 2.0f, x_374);
  let x_378 : bool = u_xlatb4.x;
  u_xlat2.y = select(0.0f, 4.0f, x_378);
  let x_382 : f32 = u_xlat0.x;
  let x_384 : f32 = u_xlat2.x;
  u_xlat0.x = (x_382 + x_384);
  let x_388 : f32 = u_xlat0.w;
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_388 * 3.0f) + x_391);
  let x_396 : f32 = u_xlat2.y;
  let x_398 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = (x_396 + x_398);
  let x_403 : vec4<f32> = in_TEXCOORD4;
  u_xlat0.x = dot(vec2<f32>(x_403.z, x_403.w), vec2<f32>(65025.0f, 255.0f));
  let x_413 : vec4<f32> = in_TEXCOORD3;
  let x_415 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_413.z, x_413.w, x_413.z, x_413.z));
  u_xlatb2 = vec2<bool>(x_415.x, x_415.y);
  let x_419 : bool = u_xlatb2.x;
  u_xlat21 = select(0.0f, 1.0f, x_419);
  let x_423 : bool = u_xlatb2.x;
  u_xlat8 = select(2.0f, 3.0f, x_423);
  let x_426 : bool = u_xlatb2.y;
  let x_427 : f32 = u_xlat8;
  let x_428 : f32 = u_xlat21;
  vs_TEXCOORD1.w = select(x_428, x_427, x_426);
  let x_432 : bool = u_xlatb4.y;
  if (x_432) {
    let x_436 : f32 = u_xlat1.x;
    let x_438 : f32 = u_xlat1.x;
    u_xlat21 = (x_436 + x_438);
    let x_441 : f32 = u_xlat21;
    u_xlatu21 = u32(x_441);
    let x_446 : vec2<f32> = in_TEXCOORD0;
    let x_447 : u32 = u_xlatu21;
    let x_450 : vec4<f32> = x_122.x_TextureInfo[bitcast<i32>(x_447)];
    let x_452 : vec2<f32> = (x_446 * vec2<f32>(x_450.y, x_450.z));
    let x_453 : vec4<f32> = vs_TEXCOORD0;
    vs_TEXCOORD0 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  } else {
    let x_456 : vec2<f32> = in_TEXCOORD0;
    let x_457 : vec4<f32> = vs_TEXCOORD0;
    vs_TEXCOORD0 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  }
  let x_460 : f32 = in_TEXCOORD4.x;
  let x_463 : f32 = u_xlat0.y;
  u_xlat3.x = ((x_460 * 8160.0f) + x_463);
  let x_467 : f32 = in_TEXCOORD4.y;
  let x_470 : f32 = u_xlat0.z;
  u_xlat3.y = ((x_467 * 2040.0f) + x_470);
  let x_474 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec2<f32>(x_474.x, x_474.y) + vec2<f32>(0.5f, 0.5f));
  let x_478 : vec2<f32> = u_xlat7;
  let x_480 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  u_xlat7 = (x_478 * vec2<f32>(x_480.x, x_480.y));
  let x_483 : vec4<f32> = in_TEXCOORD2;
  u_xlat3 = (vec4<f32>(x_483.w, x_483.w, x_483.y, x_483.y) * vec4<f32>(255.0f, 8160.0f, 255.0f, 8160.0f));
  let x_487 : vec4<f32> = u_xlat3;
  let x_489 : vec4<f32> = u_xlat3;
  u_xlatb5 = (vec4<f32>(x_487.y, x_487.y, x_487.w, x_487.w) >= -(vec4<f32>(x_489.y, x_489.y, x_489.w, x_489.w)));
  let x_494 : bool = u_xlatb5.x;
  u_xlat5.x = select(-32.0f, 32.0f, x_494);
  let x_498 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.03125f, 0.03125f, x_498);
  let x_502 : bool = u_xlatb5.z;
  u_xlat5.z = select(-32.0f, 32.0f, x_502);
  let x_506 : bool = u_xlatb5.w;
  u_xlat5.w = select(-0.03125f, 0.03125f, x_506);
  let x_510 : vec4<f32> = u_xlat3;
  let x_512 : vec4<f32> = u_xlat5;
  let x_514 : vec3<f32> = (vec3<f32>(x_510.x, x_510.z, x_510.x) * vec3<f32>(x_512.y, x_512.w, x_512.y));
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_514.x, x_515.y, x_514.y, x_514.z);
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec3<f32> = fract(vec3<f32>(x_517.x, x_517.z, x_517.w));
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_519.x, x_520.y, x_519.y, x_519.z);
  let x_522 : vec4<f32> = u_xlat2;
  let x_524 : vec4<f32> = u_xlat5;
  let x_526 : vec3<f32> = (vec3<f32>(x_522.x, x_522.z, x_522.w) * vec3<f32>(x_524.x, x_524.z, x_524.x));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_527.y, x_526.y, x_526.z);
  let x_529 : vec4<f32> = in_TEXCOORD2;
  let x_533 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.w, x_529.y, x_529.w) * vec3<f32>(255.0f, 255.0f, 255.0f)) + -(vec3<f32>(x_533.x, x_533.z, x_533.w)));
  let x_537 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat3;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(0.03125f, 0.03125f, 0.125f));
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_549 : f32 = in_TEXCOORD4.z;
  let x_552 : f32 = u_xlat2.w;
  u_xlat4.x = ((x_549 * 8160.0f) + x_552);
  let x_555 : vec4<f32> = in_TEXCOORD4;
  let x_559 : vec4<f32> = u_xlat3;
  let x_561 : vec2<f32> = ((vec2<f32>(x_555.w, x_555.w) * vec2<f32>(2040.0f, 2040.0f)) + vec2<f32>(x_559.x, x_559.z));
  let x_562 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_562.x, x_561.x, x_561.y);
  let x_564 : vec3<f32> = u_xlat4;
  let x_566 : vec2<f32> = (vec2<f32>(x_564.x, x_564.y) + vec2<f32>(0.5f, 0.5f));
  let x_567 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_566.x, x_567.y, x_567.z, x_566.y);
  let x_569 : vec4<f32> = u_xlat2;
  let x_572 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  let x_574 : vec2<f32> = (vec2<f32>(x_569.x, x_569.w) * vec2<f32>(x_572.x, x_572.y));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_575.y, x_575.z, x_574.y);
  let x_578 : bool = u_xlatb2.y;
  if (x_578) {
    let x_584 : vec4<f32> = u_xlat2;
    let x_586 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, vec2<f32>(x_584.x, x_584.w), 0.0f);
    u_xlat5 = vec4<f32>(x_586.w, x_586.x, x_586.y, x_586.z);
    let x_589 : vec4<f32> = u_xlat5;
    let x_590 : vec3<f32> = vec3<f32>(x_589.y, x_589.z, x_589.w);
    let x_591 : vec4<f32> = vs_COLOR0;
    vs_COLOR0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  } else {
    let x_595 : vec4<f32> = in_COLOR0;
    let x_602 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(0.084971003f, 0.084971003f, 0.084971003f)) + vec3<f32>(-0.000163029f, -0.000163029f, -0.000163029f));
    let x_603 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_602.x, x_603.y, x_602.y, x_602.z);
    let x_606 : vec4<f32> = in_COLOR0;
    u_xlat12 = ((vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(0.265884995f, 0.265884995f, 0.265884995f)) + vec3<f32>(0.736584008f, 0.736584008f, 0.736584008f));
    let x_614 : vec4<f32> = in_COLOR0;
    let x_616 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * x_616) + vec3<f32>(-0.00980184f, -0.00980184f, -0.00980184f));
    let x_621 : vec4<f32> = in_COLOR0;
    let x_623 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_621.x, x_621.y, x_621.z) * x_623) + vec3<f32>(0.00319697f, 0.00319697f, 0.00319697f));
    let x_631 : vec4<f32> = in_COLOR0;
    let x_635 : vec4<bool> = (vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x) < vec4<f32>(0.072549f, 0.072549f, 0.072549f, 0.0f));
    u_xlatb6 = vec3<bool>(x_635.x, x_635.y, x_635.z);
    let x_638 : bool = u_xlatb6.x;
    if (x_638) {
      let x_643 : f32 = u_xlat3.x;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat12.x;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    vs_COLOR0.x = x_647;
    let x_650 : bool = u_xlatb6.y;
    if (x_650) {
      let x_655 : f32 = u_xlat3.z;
      x_651 = x_655;
    } else {
      let x_658 : f32 = u_xlat12.y;
      x_651 = x_658;
    }
    let x_659 : f32 = x_651;
    vs_COLOR0.y = x_659;
    let x_662 : bool = u_xlatb6.z;
    if (x_662) {
      let x_667 : f32 = u_xlat3.w;
      x_663 = x_667;
    } else {
      let x_670 : f32 = u_xlat12.z;
      x_663 = x_670;
    }
    let x_671 : f32 = x_663;
    vs_COLOR0.z = x_671;
    let x_674 : f32 = in_COLOR0.w;
    u_xlat5.x = x_674;
  }
  let x_678 : f32 = in_TEXCOORD1.z;
  let x_681 : f32 = u_xlat2.z;
  u_xlat6.x = ((x_678 * 8160.0f) + x_681);
  let x_685 : f32 = in_TEXCOORD1.w;
  let x_688 : f32 = u_xlat3.y;
  u_xlat6.y = ((x_685 * 2040.0f) + x_688);
  let x_692 : vec2<f32> = u_xlat6;
  u_xlat9 = (x_692 + vec2<f32>(0.5f, 0.5f));
  let x_694 : vec2<f32> = u_xlat9;
  let x_696 : vec4<f32> = x_122.x_ShaderInfoTex_TexelSize;
  u_xlat9 = (x_694 * vec2<f32>(x_696.x, x_696.y));
  let x_702 : vec2<f32> = u_xlat7;
  let x_703 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_702, 0.0f);
  u_xlat7.x = x_703.w;
  let x_707 : f32 = u_xlat7.x;
  let x_709 : f32 = u_xlat5.x;
  vs_COLOR0.w = (x_707 * x_709);
  let x_713 : bool = u_xlatb4.w;
  if (x_713) {
    let x_718 : f32 = u_xlat7.x;
    x_714 = x_718;
  } else {
    let x_721 : f32 = u_xlat0.x;
    x_714 = x_721;
  }
  let x_722 : f32 = x_714;
  vs_TEXCOORD1.z = x_722;
  let x_727 : bool = u_xlatb4.w;
  if (x_727) {
    let x_731 : vec3<f32> = u_xlat4;
    x_728 = vec2<f32>(x_731.x, x_731.z);
  } else {
    let x_734 : vec4<f32> = u_xlat2;
    x_728 = vec2<f32>(x_734.x, x_734.w);
  }
  let x_736 : vec2<f32> = x_728;
  vs_TEXCOORD3 = x_736;
  let x_740 : vec2<f32> = u_xlat9;
  let x_741 : vec4<f32> = textureSampleLevel(x_ShaderInfoTex, sampler_ShaderInfoTex, x_740, 0.0f);
  u_xlat0 = x_741;
  let x_742 : vec2<f32> = u_xlat15;
  let x_743 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = u_xlat0;
  let x_748 : vec2<f32> = ((x_742 * vec2<f32>(x_743.x, x_743.y)) + vec2<f32>(x_746.z, x_746.w));
  let x_749 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_749.x, x_749.y, x_748.x, x_748.y);
  let x_753 : bool = u_xlatb4.w;
  if (x_753) {
    let x_758 : f32 = in_TEXCOORD3.y;
    x_754 = x_758;
  } else {
    let x_762 : f32 = in_TEXCOORD5.x;
    x_754 = x_762;
  }
  let x_763 : f32 = x_754;
  vs_TEXCOORD4.x = x_763;
  let x_766 : f32 = u_xlat1.x;
  vs_TEXCOORD1.y = x_766;
  let x_768 : vec4<f32> = in_TEXCOORD5;
  let x_769 : vec3<f32> = vec3<f32>(x_768.y, x_768.z, x_768.w);
  let x_770 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_770.x, x_769.x, x_769.y, x_769.z);
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

