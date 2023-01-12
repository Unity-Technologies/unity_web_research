type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_102 : vec4<f32> = in_TEXCOORD0;
  let x_106 : vec4<f32> = x_20.x_MainTex_ST;
  let x_110 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(x_106.x, x_106.y)) + vec2<f32>(x_110.z, x_110.w));
  let x_114 : vec4<f32> = in_TANGENT0;
  let x_117 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_119 : vec3<f32> = (vec3<f32>(x_114.y, x_114.y, x_114.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_123 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_125 : vec4<f32> = in_TANGENT0;
  let x_128 : vec4<f32> = u_xlat2;
  let x_130 : vec3<f32> = ((vec3<f32>(x_123.y, x_123.z, x_123.x) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_134 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_136 : vec4<f32> = in_TANGENT0;
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec3<f32> = ((vec3<f32>(x_134.y, x_134.z, x_134.x) * vec3<f32>(x_136.z, x_136.z, x_136.z)) + vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_146 : vec4<f32> = u_xlat2;
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_146.x, x_146.y, x_146.z), vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_151);
  let x_153 : f32 = u_xlat18;
  let x_155 : vec4<f32> = u_xlat2;
  let x_157 : vec3<f32> = (vec3<f32>(x_153, x_153, x_153) * vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_163 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_163;
  let x_170 : f32 = in_TANGENT0.w;
  let x_174 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat18 = (x_170 * x_174);
  let x_179 : vec3<f32> = in_NORMAL0;
  let x_182 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_179, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : vec3<f32> = in_NORMAL0;
  let x_188 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_186, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : vec3<f32> = in_NORMAL0;
  let x_194 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_192, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat20 = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_204);
  let x_206 : f32 = u_xlat20;
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_206, x_206, x_206, x_206) * vec4<f32>(x_208.x, x_208.y, x_208.z, x_208.z));
  let x_212 : vec4<f32> = u_xlat2;
  let x_214 : vec4<f32> = u_xlat3;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.w, x_214.x, x_214.y));
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat3;
  let x_221 : vec4<f32> = u_xlat2;
  let x_224 : vec4<f32> = u_xlat4;
  let x_227 : vec3<f32> = ((vec3<f32>(x_219.y, x_219.w, x_219.x) * vec3<f32>(x_221.y, x_221.z, x_221.x)) + -(vec3<f32>(x_224.x, x_224.y, x_224.z)));
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : f32 = u_xlat18;
  let x_232 : vec4<f32> = u_xlat4;
  let x_234 : vec3<f32> = (vec3<f32>(x_230, x_230, x_230) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_238 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_238;
  let x_241 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_241;
  let x_244 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_244;
  let x_248 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_248;
  let x_252 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_252;
  let x_255 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_255;
  let x_258 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_258;
  let x_261 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_261;
  let x_264 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_264;
  let x_267 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_267;
  let x_270 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_270;
  let x_272 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_272.x, x_272.x, x_272.x, x_272.x)) + x_276);
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_278.y, x_278.y, x_278.y, x_278.y)) + x_282);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_284.z, x_284.z, x_284.z, x_284.z)) + x_288);
  let x_291 : vec4<f32> = u_xlat3;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_291.y, x_291.y, x_291.y, x_291.y) * x_293);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_295 * x_296);
  let x_298 : vec4<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_298 * x_299) + x_301);
  let x_303 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_303 * vec4<f32>(x_304.x, x_304.x, x_304.x, x_304.x)) + x_307);
  let x_309 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = u_xlat3;
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_309 * vec4<f32>(x_310.w, x_310.w, x_310.z, x_310.w)) + x_313);
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_315 * x_316) + x_318);
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_320, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_324);
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_326 * x_329) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_334);
  let x_336 : vec4<f32> = u_xlat2;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_336 * x_337);
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_339, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_343 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_343 * x_344);
  let x_346 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_352 : vec3<f32> = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_358 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat2;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.x, x_358.x)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.z, x_369.z, x_369.z)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_380 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = ((vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.w, x_380.w, x_380.w)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = u_xlat3.y;
  let x_391 : f32 = u_xlat3.y;
  u_xlat18 = (x_389 * x_391);
  let x_394 : f32 = u_xlat3.x;
  let x_396 : f32 = u_xlat3.x;
  let x_398 : f32 = u_xlat18;
  u_xlat18 = ((x_394 * x_396) + -(x_398));
  let x_401 : vec4<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_401.y, x_401.w, x_401.z, x_401.x) * x_403);
  let x_407 : vec4<f32> = x_20.unity_SHBr;
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_407, x_408);
  let x_413 : vec4<f32> = x_20.unity_SHBg;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_413, x_414);
  let x_419 : vec4<f32> = x_20.unity_SHBb;
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_419, x_420);
  let x_425 : vec4<f32> = x_20.unity_SHC;
  let x_427 : f32 = u_xlat18;
  let x_430 : vec4<f32> = u_xlat3;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_443 : f32 = u_xlat1.y;
  let x_445 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_443 * x_445);
  let x_449 : f32 = u_xlat0.x;
  u_xlat0.w = (x_449 * 0.5f);
  let x_453 : vec4<f32> = u_xlat1;
  let x_456 : vec2<f32> = (vec2<f32>(x_453.x, x_453.w) * vec2<f32>(0.5f, 0.5f));
  let x_457 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_456.x, x_457.y, x_456.y, x_457.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_461 : vec2<f32> = vec2<f32>(x_460.z, x_460.w);
  let x_462 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_462.x, x_462.y, x_461.x, x_461.y);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec2<f32> = (vec2<f32>(x_464.z, x_464.z) + vec2<f32>(x_466.x, x_466.w));
  let x_469 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

