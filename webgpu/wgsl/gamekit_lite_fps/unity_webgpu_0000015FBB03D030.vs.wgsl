type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  let x_89 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_98 : vec4<f32> = in_TANGENT0;
  let x_101 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_103 : vec3<f32> = (vec3<f32>(x_98.y, x_98.y, x_98.y) * vec3<f32>(x_101.y, x_101.z, x_101.x));
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_109 : vec4<f32> = in_TANGENT0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.y, x_107.z, x_107.x) * vec3<f32>(x_109.x, x_109.x, x_109.x)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec4<f32> = in_TANGENT0;
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.y, x_118.z, x_118.x) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_135);
  let x_137 : f32 = u_xlat15;
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec3<f32> = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_147 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_147;
  let x_154 : f32 = in_TANGENT0.w;
  let x_158 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_154 * x_158);
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_165 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_162, vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec3<f32> = in_NORMAL0;
  let x_171 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_169, vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = in_NORMAL0;
  let x_177 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_175, vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_182 : vec4<f32> = u_xlat2;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat16;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_189, x_189, x_189, x_189) * vec4<f32>(x_191.x, x_191.y, x_191.z, x_191.z));
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.w, x_197.x, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat2;
  let x_204 : vec4<f32> = u_xlat1;
  let x_207 : vec4<f32> = u_xlat3;
  let x_210 : vec3<f32> = ((vec3<f32>(x_202.y, x_202.w, x_202.x) * vec3<f32>(x_204.y, x_204.z, x_204.x)) + -(vec3<f32>(x_207.x, x_207.y, x_207.z)));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : f32 = u_xlat15;
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec3<f32> = (vec3<f32>(x_213, x_213, x_213) * vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : f32 = u_xlat3.x;
  vs_TEXCOORD0.y = x_221;
  let x_224 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_224;
  let x_227 : f32 = u_xlat2.x;
  vs_TEXCOORD0.z = x_227;
  let x_231 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_231;
  let x_235 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_235;
  let x_238 : f32 = u_xlat3.y;
  vs_TEXCOORD1.y = x_238;
  let x_241 : f32 = u_xlat3.z;
  vs_TEXCOORD2.y = x_241;
  let x_244 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_244;
  let x_247 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_247;
  let x_250 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_250;
  let x_253 : f32 = u_xlat2.w;
  vs_TEXCOORD2.z = x_253;
  let x_257 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_257;
  let x_263 : vec2<f32> = in_TEXCOORD0;
  let x_266 : vec4<f32> = x_20.x_MainTex_ST;
  let x_270 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_263 * vec2<f32>(x_266.x, x_266.y)) + vec2<f32>(x_270.z, x_270.w));
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_273.x, x_273.x, x_273.x, x_273.x)) + x_277);
  let x_279 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_279.y, x_279.y, x_279.y, x_279.y)) + x_283);
  let x_285 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_285.z, x_285.z, x_285.z, x_285.z)) + x_289);
  let x_292 : vec4<f32> = u_xlat2;
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_292.y, x_292.y, x_292.y, x_292.y) * x_294);
  let x_296 : vec4<f32> = u_xlat3;
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_296 * x_297);
  let x_299 : vec4<f32> = u_xlat1;
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_299 * x_300) + x_302);
  let x_304 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_304 * vec4<f32>(x_305.x, x_305.x, x_305.x, x_305.x)) + x_308);
  let x_310 : vec4<f32> = u_xlat0;
  let x_311 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_310 * vec4<f32>(x_311.w, x_311.w, x_311.z, x_311.w)) + x_314);
  let x_316 : vec4<f32> = u_xlat0;
  let x_317 : vec4<f32> = u_xlat0;
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_316 * x_317) + x_319);
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_321, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_325);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_327 * x_329) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_334);
  let x_336 : vec4<f32> = u_xlat1;
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_336 * x_337);
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_339, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_343 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_343 * x_344);
  let x_346 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_352 : vec3<f32> = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_358 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.x, x_358.x)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.z, x_369.z, x_369.z)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_380 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = ((vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.w, x_380.w, x_380.w)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = u_xlat2.y;
  let x_391 : f32 = u_xlat2.y;
  u_xlat15 = (x_389 * x_391);
  let x_394 : f32 = u_xlat2.x;
  let x_396 : f32 = u_xlat2.x;
  let x_398 : f32 = u_xlat15;
  u_xlat15 = ((x_394 * x_396) + -(x_398));
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_401.y, x_401.w, x_401.z, x_401.x) * x_403);
  let x_407 : vec4<f32> = x_20.unity_SHBr;
  let x_408 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_407, x_408);
  let x_413 : vec4<f32> = x_20.unity_SHBg;
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_413, x_414);
  let x_419 : vec4<f32> = x_20.unity_SHBb;
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_419, x_420);
  let x_425 : vec4<f32> = x_20.unity_SHC;
  let x_427 : f32 = u_xlat15;
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

