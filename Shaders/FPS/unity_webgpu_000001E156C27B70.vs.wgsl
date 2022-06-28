struct VGlobals {
  x_Time : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Cutoff : f32,
  x_DisplaceAmount : f32,
  @size(8)
  padding : u32,
  x_Noise_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(17) var<uniform> x_43 : VGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.x;
  let x_33 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + 1.0f);
  let x_39 : f32 = u_xlat0.x;
  let x_48 : f32 = x_43.x_Cutoff;
  u_xlat0.x = (x_39 + -(x_48));
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * -3.333333254f);
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_58, 0.0f, 1.0f);
  let x_65 : f32 = u_xlat0.x;
  u_xlat4.x = ((x_65 * -2.0f) + 3.0f);
  let x_72 : f32 = u_xlat0.x;
  let x_74 : f32 = u_xlat0.x;
  u_xlat0.x = (x_72 * x_74);
  let x_78 : f32 = u_xlat0.x;
  let x_80 : f32 = u_xlat4.x;
  u_xlat0.x = (x_78 * x_80);
  let x_84 : vec4<f32> = in_POSITION0;
  let x_89 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_91 : vec2<f32> = (vec2<f32>(x_84.y, x_84.y) * vec2<f32>(x_89.x, x_89.y));
  let x_92 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_91.x, x_91.y, x_92.z);
  let x_96 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_98 : vec4<f32> = in_POSITION0;
  let x_101 : vec3<f32> = u_xlat4;
  let x_103 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_98.x, x_98.x)) + vec2<f32>(x_101.x, x_101.y));
  let x_104 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_103.x, x_103.y, x_104.z);
  let x_109 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_111 : vec4<f32> = in_POSITION0;
  let x_114 : vec3<f32> = u_xlat4;
  let x_116 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_111.z, x_111.z)) + vec2<f32>(x_114.x, x_114.y));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_116.x, x_116.y, x_117.w);
  let x_120 : f32 = x_43.x_Time.x;
  let x_125 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_120 * 30.0f) + x_125);
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec2<f32> = (vec2<f32>(x_128.x, x_128.z) * vec2<f32>(0.5f, 0.5f));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_140 : vec3<f32> = u_xlat4;
  let x_142 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_140.x, x_140.y), 0.0f);
  u_xlat4 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat4;
  let x_147 : vec3<f32> = in_NORMAL0;
  u_xlat4 = (x_144 * x_147);
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = u_xlat4;
  let x_152 : vec3<f32> = (vec3<f32>(x_149.x, x_149.x, x_149.x) * x_151);
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : f32 = x_43.x_Cutoff;
  let x_160 : f32 = x_43.x_Cutoff;
  let x_162 : f32 = x_43.x_Cutoff;
  let x_163 : vec3<f32> = vec3<f32>(x_158, x_160, x_162);
  let x_168 : vec3<f32> = (vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec4<f32> = u_xlat0;
  let x_175 : f32 = x_43.x_DisplaceAmount;
  let x_177 : f32 = x_43.x_DisplaceAmount;
  let x_179 : f32 = x_43.x_DisplaceAmount;
  let x_180 : vec3<f32> = vec3<f32>(x_175, x_177, x_179);
  let x_186 : vec4<f32> = in_POSITION0;
  let x_188 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_180.x, x_180.y, x_180.z)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_191.y, x_191.y, x_191.y, x_191.y) * x_194);
  let x_197 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_198 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_197 * vec4<f32>(x_198.x, x_198.x, x_198.x, x_198.x)) + x_201);
  let x_204 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_205 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_204 * vec4<f32>(x_205.z, x_205.z, x_205.z, x_205.z)) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat1 = (x_210 + x_213);
  let x_216 : vec4<f32> = u_xlat1;
  let x_220 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_216.y, x_216.y, x_216.y, x_216.y) * x_220);
  let x_223 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_223 * vec4<f32>(x_224.x, x_224.x, x_224.x, x_224.x)) + x_227);
  let x_230 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_231 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_230 * vec4<f32>(x_231.z, x_231.z, x_231.z, x_231.z)) + x_234);
  let x_241 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_242 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat2;
  gl_Position = ((x_241 * vec4<f32>(x_242.w, x_242.w, x_242.w, x_242.w)) + x_245);
  let x_250 : vec4<f32> = in_TEXCOORD0;
  let x_254 : vec4<f32> = x_43.x_Noise_ST;
  let x_258 : vec4<f32> = x_43.x_Noise_ST;
  let x_260 : vec2<f32> = ((vec2<f32>(x_250.x, x_250.y) * vec2<f32>(x_254.x, x_254.y)) + vec2<f32>(x_258.z, x_258.w));
  let x_261 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_261.w);
  let x_263 : vec4<f32> = in_TEXCOORD0;
  let x_267 : vec4<f32> = x_43.x_MainTex_ST;
  let x_271 : vec4<f32> = x_43.x_MainTex_ST;
  let x_273 : vec2<f32> = ((vec2<f32>(x_263.x, x_263.y) * vec2<f32>(x_267.x, x_267.y)) + vec2<f32>(x_271.z, x_271.w));
  let x_274 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_274.x, x_274.y, x_273.x, x_273.y);
  let x_276 : vec3<f32> = in_NORMAL0;
  let x_278 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_276, vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_282 : vec3<f32> = in_NORMAL0;
  let x_284 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_282, vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_289 : vec3<f32> = in_NORMAL0;
  let x_291 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_289, vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_301);
  let x_303 : f32 = u_xlat13;
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = (vec3<f32>(x_303, x_303, x_303) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = in_TANGENT0;
  let x_314 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_316 : vec3<f32> = (vec3<f32>(x_311.y, x_311.y, x_311.y) * vec3<f32>(x_314.y, x_314.z, x_314.x));
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_322 : vec4<f32> = in_TANGENT0;
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.y, x_320.z, x_320.x) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_333 : vec4<f32> = in_TANGENT0;
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.y, x_331.z, x_331.x) * vec3<f32>(x_333.z, x_333.z, x_333.z)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_346);
  let x_348 : f32 = u_xlat13;
  let x_350 : vec4<f32> = u_xlat2;
  let x_352 : vec3<f32> = (vec3<f32>(x_348, x_348, x_348) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec4<f32> = u_xlat1;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_361.z, x_361.x, x_361.y) * vec3<f32>(x_363.y, x_363.z, x_363.x)) + -(x_366));
  let x_372 : f32 = in_TANGENT0.w;
  let x_374 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat13 = (x_372 * x_374);
  let x_376 : f32 = u_xlat13;
  let x_378 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_376, x_376, x_376) * x_378);
  let x_383 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_383;
  let x_387 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_387;
  let x_390 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_390;
  let x_394 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_394;
  let x_398 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_398;
  let x_401 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_401;
  let x_404 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_404;
  let x_407 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_407;
  let x_410 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_410;
  let x_414 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_416 : vec4<f32> = in_POSITION0;
  let x_419 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.w, x_416.w, x_416.w)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_423 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_424 : vec4<f32> = in_POSITION0;
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_423 * vec4<f32>(x_424.w, x_424.w, x_424.w, x_424.w)) + x_427);
  let x_429 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = x_43.unity_WorldToLight[1i];
  let x_435 : vec3<f32> = (vec3<f32>(x_429.y, x_429.y, x_429.y) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : vec4<f32> = x_43.unity_WorldToLight[0i];
  let x_441 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = u_xlat1;
  let x_446 : vec3<f32> = ((vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(x_441.x, x_441.x, x_441.x)) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_450 : vec4<f32> = x_43.unity_WorldToLight[2i];
  let x_452 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = ((vec3<f32>(x_450.x, x_450.y, x_450.z) * vec3<f32>(x_452.z, x_452.z, x_452.z)) + vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : vec4<f32> = x_43.unity_WorldToLight[3i];
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464.w, x_464.w, x_464.w)) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

