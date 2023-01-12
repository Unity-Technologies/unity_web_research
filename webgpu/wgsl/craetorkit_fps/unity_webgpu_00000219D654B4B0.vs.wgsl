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
  let x_210 : vec4<f32> = in_TEXCOORD0;
  let x_214 : vec4<f32> = x_133.x_Gradient_ST;
  let x_218 : vec4<f32> = x_133.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214.x, x_214.y)) + vec2<f32>(x_218.z, x_218.w));
  let x_225 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_225;
  let x_226 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_133.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_226, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_235 : vec4<f32> = x_133.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_233, vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec3<f32> = in_NORMAL0;
  let x_241 : vec4<f32> = x_133.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_239, vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_251);
  let x_253 : f32 = u_xlat18;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = (vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = vec3<f32>(x_262.x, x_262.y, x_262.z);
  let x_265 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = x_133.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_268.x, x_268.x, x_268.x, x_268.x)) + x_272);
  let x_275 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = x_133.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_275.y, x_275.y, x_275.y, x_275.y)) + x_279);
  let x_281 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = x_133.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_281.z, x_281.z, x_281.z, x_281.z)) + x_285);
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_288.y, x_288.y, x_288.y, x_288.y) * x_290);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_292 * x_293);
  let x_295 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_295 * x_296) + x_298);
  let x_300 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_300 * vec4<f32>(x_301.x, x_301.x, x_301.x, x_301.x)) + x_304);
  let x_306 : vec4<f32> = u_xlat0;
  let x_307 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_306 * vec4<f32>(x_307.z, x_307.z, x_307.z, x_307.z)) + x_310);
  let x_312 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_312 * x_313) + x_315);
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_317, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_321);
  let x_323 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = x_133.unity_4LightAtten0;
  u_xlat0 = ((x_323 * x_326) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_330);
  let x_332 : vec4<f32> = u_xlat3;
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_332 * x_333);
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_335, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_338 : vec4<f32> = u_xlat0;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_338 * x_339);
  let x_341 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = x_133.unity_LightColor[1i];
  let x_347 : vec3<f32> = (vec3<f32>(x_341.y, x_341.y, x_341.y) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_351 : vec4<f32> = x_133.unity_LightColor[0i];
  let x_353 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = u_xlat3;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.x, x_353.x, x_353.x)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : vec4<f32> = x_133.unity_LightColor[2i];
  let x_364 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = u_xlat3;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.z, x_364.z, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec4<f32> = x_133.unity_LightColor[3i];
  let x_375 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec3<f32> = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.w, x_375.w, x_375.w)) + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : f32 = u_xlat2.y;
  let x_386 : f32 = u_xlat2.y;
  u_xlat18 = (x_384 * x_386);
  let x_389 : f32 = u_xlat2.x;
  let x_391 : f32 = u_xlat2.x;
  let x_393 : f32 = u_xlat18;
  u_xlat18 = ((x_389 * x_391) + -(x_393));
  let x_396 : vec4<f32> = u_xlat2;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_396.y, x_396.z, x_396.z, x_396.x) * vec4<f32>(x_398.x, x_398.y, x_398.z, x_398.z));
  let x_403 : vec4<f32> = x_133.unity_SHBr;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_403, x_404);
  let x_409 : vec4<f32> = x_133.unity_SHBg;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_409, x_410);
  let x_415 : vec4<f32> = x_133.unity_SHBb;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_415, x_416);
  let x_421 : vec4<f32> = x_133.unity_SHC;
  let x_423 : f32 = u_xlat18;
  let x_426 : vec4<f32> = u_xlat3;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423, x_423, x_423)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_438 : f32 = u_xlat1.y;
  let x_441 : f32 = x_133.x_ProjectionParams.x;
  u_xlat0.x = (x_438 * x_441);
  let x_445 : f32 = u_xlat0.x;
  u_xlat0.w = (x_445 * 0.5f);
  let x_449 : vec4<f32> = u_xlat1;
  let x_452 : vec2<f32> = (vec2<f32>(x_449.x, x_449.w) * vec2<f32>(0.5f, 0.5f));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_452.x, x_453.y, x_452.y, x_453.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_457 : vec2<f32> = vec2<f32>(x_456.z, x_456.w);
  let x_458 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_458.x, x_458.y, x_457.x, x_457.y);
  let x_460 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat0;
  let x_464 : vec2<f32> = (vec2<f32>(x_460.z, x_460.z) + vec2<f32>(x_462.x, x_462.w));
  let x_465 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD6);
}

