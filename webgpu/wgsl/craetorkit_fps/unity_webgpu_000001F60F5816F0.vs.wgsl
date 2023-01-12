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
  unity_MatrixVP : mat4x4<f32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(8) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_133 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.y;
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(x_38.x, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_47 : vec2<f32> = (vec2<f32>(x_43.x, x_43.y) * vec2<f32>(0.02f, 0.02f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_52 : vec4<f32> = in_TEXCOORD0;
  u_xlat12 = (vec2<f32>(x_52.z, x_52.z) + vec2<f32>(-1.0f, -0.300000012f));
  let x_58 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_58 * vec2<f32>(-9.999998093f, 50.000049591f));
  let x_63 : vec2<f32> = u_xlat12;
  u_xlat12 = clamp(x_63, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = u_xlat12;
  let x_75 : vec4<f32> = in_POSITION0;
  let x_77 : vec2<f32> = ((vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.y, x_71.y)) + vec2<f32>(x_75.x, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_78.y, x_77.y, x_78.w);
  let x_81 : f32 = u_xlat12.x;
  let x_85 : f32 = in_TEXCOORD0.y;
  u_xlat0.y = (-(x_81) + x_85);
  let x_89 : f32 = in_TEXCOORD0.x;
  u_xlat0.x = x_89;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_94.x, x_94.y), 0.0f);
  u_xlat0.x = x_96.x;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x) * vec4<f32>(x_101.x, x_101.y, x_101.z, x_101.x));
  let x_105 : f32 = in_POSITION0.y;
  u_xlat1.y = x_105;
  let x_107 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(0.449999988f, 0.449999988f, 0.449999988f)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_120 : f32 = u_xlat0.w;
  let x_124 : f32 = u_xlat0.y;
  u_xlat6 = ((x_120 * 0.25f) + x_124);
  let x_126 : f32 = u_xlat6;
  let x_139 : vec4<f32> = x_133.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_126, x_126, x_126, x_126) * x_139);
  let x_143 : vec4<f32> = x_133.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_151 : vec4<f32> = x_133.unity_ObjectToWorld[2i];
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_151 * vec4<f32>(x_152.z, x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = x_133.unity_ObjectToWorld[3i];
  u_xlat1 = (x_157 + x_160);
  let x_163 : vec4<f32> = x_133.unity_ObjectToWorld[3i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.w, x_165.w, x_165.w)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = x_133.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_178);
  let x_181 : vec4<f32> = x_133.unity_MatrixVP[0i];
  let x_182 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_181 * vec4<f32>(x_182.x, x_182.x, x_182.x, x_182.x)) + x_185);
  let x_188 : vec4<f32> = x_133.unity_MatrixVP[2i];
  let x_189 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_188 * vec4<f32>(x_189.z, x_189.z, x_189.z, x_189.z)) + x_192);
  let x_195 : vec4<f32> = x_133.unity_MatrixVP[3i];
  let x_196 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_195 * vec4<f32>(x_196.w, x_196.w, x_196.w, x_196.w)) + x_199);
  let x_205 : vec4<f32> = u_xlat1;
  gl_Position = x_205;
  let x_212 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_212;
  let x_215 : vec4<f32> = in_TEXCOORD0;
  let x_219 : vec4<f32> = x_133.x_Gradient_ST;
  let x_223 : vec4<f32> = x_133.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_215.x, x_215.y) * vec2<f32>(x_219.x, x_219.y)) + vec2<f32>(x_223.z, x_223.w));
  let x_228 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_228;
  let x_229 : vec3<f32> = in_NORMAL0;
  let x_232 : vec4<f32> = x_133.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_229, vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_238 : vec4<f32> = x_133.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_242 : vec3<f32> = in_NORMAL0;
  let x_244 : vec4<f32> = x_133.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_242, vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_249 : vec4<f32> = u_xlat2;
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_254);
  let x_256 : f32 = u_xlat18;
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = (vec3<f32>(x_256, x_256, x_256) * vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_265 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_268.x, x_268.y, x_268.z);
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = x_133.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_271.x, x_271.x, x_271.x, x_271.x)) + x_275);
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = x_133.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_278.y, x_278.y, x_278.y, x_278.y)) + x_282);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = x_133.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_284.z, x_284.z, x_284.z, x_284.z)) + x_288);
  let x_291 : vec4<f32> = u_xlat2;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_291.y, x_291.y, x_291.y, x_291.y) * x_293);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_295 * x_296);
  let x_298 : vec4<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_298 * x_299) + x_301);
  let x_303 : vec4<f32> = u_xlat3;
  let x_304 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_303 * vec4<f32>(x_304.x, x_304.x, x_304.x, x_304.x)) + x_307);
  let x_309 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = u_xlat2;
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_309 * vec4<f32>(x_310.z, x_310.z, x_310.z, x_310.z)) + x_313);
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_315 * x_316) + x_318);
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_320, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_324);
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_133.unity_4LightAtten0;
  u_xlat0 = ((x_326 * x_329) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_333);
  let x_335 : vec4<f32> = u_xlat3;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_335 * x_336);
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_338, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_341 : vec4<f32> = u_xlat0;
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_341 * x_342);
  let x_344 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_133.unity_LightColor[1i];
  let x_350 : vec3<f32> = (vec3<f32>(x_344.y, x_344.y, x_344.y) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_133.unity_LightColor[0i];
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat3;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = x_133.unity_LightColor[2i];
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = x_133.unity_LightColor[3i];
  let x_378 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.w, x_378.w, x_378.w)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : f32 = u_xlat2.y;
  let x_389 : f32 = u_xlat2.y;
  u_xlat18 = (x_387 * x_389);
  let x_392 : f32 = u_xlat2.x;
  let x_394 : f32 = u_xlat2.x;
  let x_396 : f32 = u_xlat18;
  u_xlat18 = ((x_392 * x_394) + -(x_396));
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_399.y, x_399.z, x_399.z, x_399.x) * vec4<f32>(x_401.x, x_401.y, x_401.z, x_401.z));
  let x_406 : vec4<f32> = x_133.unity_SHBr;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_406, x_407);
  let x_412 : vec4<f32> = x_133.unity_SHBg;
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_412, x_413);
  let x_418 : vec4<f32> = x_133.unity_SHBb;
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_418, x_419);
  let x_424 : vec4<f32> = x_133.unity_SHC;
  let x_426 : f32 = u_xlat18;
  let x_429 : vec4<f32> = u_xlat3;
  let x_431 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426, x_426, x_426)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : f32 = u_xlat1.y;
  let x_444 : f32 = x_133.x_ProjectionParams.x;
  u_xlat0.x = (x_441 * x_444);
  let x_448 : f32 = u_xlat0.x;
  u_xlat0.w = (x_448 * 0.5f);
  let x_452 : vec4<f32> = u_xlat1;
  let x_455 : vec2<f32> = (vec2<f32>(x_452.x, x_452.w) * vec2<f32>(0.5f, 0.5f));
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_456.y, x_455.y, x_456.w);
  let x_459 : vec4<f32> = u_xlat1;
  let x_460 : vec2<f32> = vec2<f32>(x_459.z, x_459.w);
  let x_461 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_461.x, x_461.y, x_460.x, x_460.y);
  let x_463 : vec4<f32> = u_xlat0;
  let x_465 : vec4<f32> = u_xlat0;
  let x_467 : vec2<f32> = (vec2<f32>(x_463.z, x_463.z) + vec2<f32>(x_465.x, x_465.w));
  let x_468 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(3)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD6);
}

