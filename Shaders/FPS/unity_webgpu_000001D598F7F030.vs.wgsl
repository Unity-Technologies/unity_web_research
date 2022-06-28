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
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

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
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_102 : vec3<f32> = in_NORMAL0;
  let x_105 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_102, vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_125 : vec3<f32> = u_xlat3;
  let x_126 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_125, x_126);
  let x_128 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_128);
  let x_130 : f32 = u_xlat18;
  let x_132 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_130, x_130, x_130) * x_132);
  let x_136 : vec3<f32> = u_xlat3;
  vs_TEXCOORD0 = x_136;
  let x_138 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_138.x, x_138.y, x_138.z);
  let x_142 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_142;
  let x_148 : vec2<f32> = in_TEXCOORD0;
  let x_151 : vec4<f32> = x_20.x_MainTex_ST;
  let x_155 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_148 * vec2<f32>(x_151.x, x_151.y)) + vec2<f32>(x_155.z, x_155.w));
  let x_159 : f32 = u_xlat1.y;
  let x_163 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat18 = (x_159 * x_163);
  let x_166 : f32 = x_20.unity_MatrixV[0i].z;
  let x_168 : f32 = u_xlat1.x;
  let x_170 : f32 = u_xlat18;
  u_xlat18 = ((x_166 * x_168) + x_170);
  let x_173 : f32 = x_20.unity_MatrixV[2i].z;
  let x_175 : f32 = u_xlat1.z;
  let x_177 : f32 = u_xlat18;
  u_xlat18 = ((x_173 * x_175) + x_177);
  let x_180 : f32 = x_20.unity_MatrixV[3i].z;
  let x_183 : f32 = u_xlat1.w;
  let x_185 : f32 = u_xlat18;
  u_xlat18 = ((x_180 * x_183) + x_185);
  let x_188 : f32 = u_xlat18;
  vs_TEXCOORD3.z = -(x_188);
  let x_192 : vec4<f32> = u_xlat1;
  let x_195 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_197 : vec3<f32> = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_195.x, x_195.y, x_195.w));
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_203 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.w) * vec3<f32>(x_203.x, x_203.x, x_203.x)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_214 : vec4<f32> = u_xlat1;
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.w) * vec3<f32>(x_214.z, x_214.z, x_214.z)) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.w) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_234;
  u_xlat4.x = 0.5f;
  u_xlat4.z = 0.5f;
  let x_240 : f32 = x_20.x_ProjectionParams.x;
  u_xlat4.y = x_240;
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat2;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.w) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = u_xlat2;
  let x_258 : vec2<f32> = vec2<f32>(x_257.z, x_257.w);
  let x_259 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_259.x, x_259.y, x_258.x, x_258.y);
  let x_262 : f32 = u_xlat1.y;
  u_xlat1.w = (x_262 * 0.5f);
  let x_265 : vec4<f32> = u_xlat1;
  let x_267 : vec4<f32> = u_xlat1;
  let x_269 : vec2<f32> = (vec2<f32>(x_265.z, x_265.z) + vec2<f32>(x_267.x, x_267.w));
  let x_270 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_272.x, x_272.x, x_272.x, x_272.x)) + x_276);
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_278.y, x_278.y, x_278.y, x_278.y)) + x_282);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_284.z, x_284.z, x_284.z, x_284.z)) + x_288);
  let x_291 : vec3<f32> = u_xlat3;
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_291.y, x_291.y, x_291.y, x_291.y) * x_293);
  let x_295 : vec4<f32> = u_xlat2;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_295 * x_296);
  let x_298 : vec4<f32> = u_xlat1;
  let x_299 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_298 * x_299) + x_301);
  let x_303 : vec4<f32> = u_xlat1;
  let x_304 : vec3<f32> = u_xlat3;
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_303 * vec4<f32>(x_304.x, x_304.x, x_304.x, x_304.x)) + x_307);
  let x_309 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = u_xlat3;
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_309 * vec4<f32>(x_310.z, x_310.z, x_310.z, x_310.z)) + x_313);
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_315 * x_316) + x_318);
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_320, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_324);
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_326 * x_329) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_334);
  let x_336 : vec4<f32> = u_xlat1;
  let x_337 : vec4<f32> = u_xlat2;
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
  let x_389 : f32 = u_xlat3.y;
  let x_391 : f32 = u_xlat3.y;
  u_xlat18 = (x_389 * x_391);
  let x_394 : f32 = u_xlat3.x;
  let x_396 : f32 = u_xlat3.x;
  let x_398 : f32 = u_xlat18;
  u_xlat18 = ((x_394 * x_396) + -(x_398));
  let x_401 : vec3<f32> = u_xlat3;
  let x_403 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_401.y, x_401.z, x_401.z, x_401.x) * vec4<f32>(x_403.x, x_403.y, x_403.z, x_403.z));
  let x_408 : vec4<f32> = x_20.unity_SHBr;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_408, x_409);
  let x_414 : vec4<f32> = x_20.unity_SHBg;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_20.unity_SHBb;
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_20.unity_SHC;
  let x_428 : f32 = u_xlat18;
  let x_431 : vec4<f32> = u_xlat2;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_428, x_428, x_428)) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_443 : f32 = u_xlat4.y;
  u_xlat4.w = (x_443 * 0.5f);
  let x_446 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = u_xlat4;
  let x_450 : vec2<f32> = (vec2<f32>(x_446.z, x_446.z) + vec2<f32>(x_448.x, x_448.w));
  let x_451 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}

