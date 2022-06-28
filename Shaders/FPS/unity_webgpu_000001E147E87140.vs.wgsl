struct VGlobals {
  x_Time : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Cutoff : f32,
  x_DisplaceAmount : f32,
  @size(8)
  padding : u32,
  x_Noise_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(17) var x_Gradient : texture_2d<f32>;

@group(0) @binding(18) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_43 : VGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_216 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_218 : vec4<f32> = in_POSITION0;
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.w, x_218.w, x_218.w)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_227.y, x_227.y, x_227.y, x_227.y) * x_231);
  let x_234 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_234 * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + x_238);
  let x_241 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_242 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_241 * vec4<f32>(x_242.z, x_242.z, x_242.z, x_242.z)) + x_245);
  let x_252 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_253 : vec4<f32> = u_xlat1;
  let x_256 : vec4<f32> = u_xlat2;
  gl_Position = ((x_252 * vec4<f32>(x_253.w, x_253.w, x_253.w, x_253.w)) + x_256);
  let x_261 : vec4<f32> = in_TEXCOORD0;
  let x_265 : vec4<f32> = x_43.x_Noise_ST;
  let x_269 : vec4<f32> = x_43.x_Noise_ST;
  let x_271 : vec2<f32> = ((vec2<f32>(x_261.x, x_261.y) * vec2<f32>(x_265.x, x_265.y)) + vec2<f32>(x_269.z, x_269.w));
  let x_272 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_274 : vec4<f32> = in_TEXCOORD0;
  let x_278 : vec4<f32> = x_43.x_MainTex_ST;
  let x_282 : vec4<f32> = x_43.x_MainTex_ST;
  let x_284 : vec2<f32> = ((vec2<f32>(x_274.x, x_274.y) * vec2<f32>(x_278.x, x_278.y)) + vec2<f32>(x_282.z, x_282.w));
  let x_285 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_285.x, x_285.y, x_284.x, x_284.y);
  let x_289 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_289;
  let x_293 : vec3<f32> = in_NORMAL0;
  let x_295 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_293, vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec3<f32> = in_NORMAL0;
  let x_301 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_299, vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_306 : vec3<f32> = in_NORMAL0;
  let x_308 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_306, vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_319 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_319);
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : vec4<f32> = in_TANGENT0;
  let x_333 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_335 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.y, x_333.z, x_333.x));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_339 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_341 : vec4<f32> = in_TANGENT0;
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.y, x_339.z, x_339.x) * vec3<f32>(x_341.x, x_341.x, x_341.x)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_350 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_352 : vec4<f32> = in_TANGENT0;
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.y, x_350.z, x_350.x) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat2;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_367 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_367);
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = (vec3<f32>(x_370.x, x_370.x, x_370.x) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat1;
  let x_385 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_383.z, x_383.x, x_383.y) * vec3<f32>(x_385.y, x_385.z, x_385.x)) + -(x_388));
  let x_393 : f32 = in_TANGENT0.w;
  let x_395 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat0.x = (x_393 * x_395);
  let x_398 : vec4<f32> = u_xlat0;
  let x_400 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_398.x, x_398.x, x_398.x) * x_400);
  let x_403 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_403;
  let x_406 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_406;
  let x_409 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_409;
  let x_413 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_413;
  let x_417 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_417;
  let x_420 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_420;
  let x_423 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_423;
  let x_426 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_426;
  let x_429 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_429;
  let x_432 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_432;
  let x_435 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_435;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

