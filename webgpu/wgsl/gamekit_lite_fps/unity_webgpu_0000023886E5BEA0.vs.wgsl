type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_Time : vec4<f32>,
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

@group(0) @binding(16) var<uniform> x_45 : VGlobals;

var<private> u_xlat5 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

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
  let x_50 : f32 = x_45.x_Cutoff;
  u_xlat0.x = (x_39 + -(x_50));
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 * -3.333333254f);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_60, 0.0f, 1.0f);
  let x_67 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_67 * -2.0f) + 3.0f);
  let x_74 : f32 = u_xlat0.x;
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (x_74 * x_76);
  let x_80 : f32 = u_xlat0.x;
  let x_82 : f32 = u_xlat5.x;
  u_xlat0.x = (x_80 * x_82);
  let x_86 : vec4<f32> = in_POSITION0;
  let x_92 : vec4<f32> = x_45.unity_ObjectToWorld[1i];
  let x_94 : vec2<f32> = (vec2<f32>(x_86.y, x_86.y) * vec2<f32>(x_92.x, x_92.y));
  let x_95 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_94.x, x_94.y, x_95.z);
  let x_99 : vec4<f32> = x_45.unity_ObjectToWorld[0i];
  let x_101 : vec4<f32> = in_POSITION0;
  let x_104 : vec3<f32> = u_xlat5;
  let x_106 : vec2<f32> = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_101.x, x_101.x)) + vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_106.x, x_106.y, x_107.z);
  let x_112 : vec4<f32> = x_45.unity_ObjectToWorld[2i];
  let x_114 : vec4<f32> = in_POSITION0;
  let x_117 : vec3<f32> = u_xlat5;
  let x_119 : vec2<f32> = ((vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_114.z, x_114.z)) + vec2<f32>(x_117.x, x_117.y));
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_119.x, x_119.y, x_120.w);
  let x_123 : f32 = x_45.x_Time.x;
  let x_128 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_123 * 30.0f) + x_128);
  let x_131 : vec4<f32> = u_xlat1;
  let x_135 : vec2<f32> = (vec2<f32>(x_131.x, x_131.z) * vec2<f32>(0.5f, 0.5f));
  let x_136 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_135.x, x_135.y, x_136.z);
  let x_143 : vec3<f32> = u_xlat5;
  let x_145 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_143.x, x_143.y), 0.0f);
  u_xlat5 = vec3<f32>(x_145.x, x_145.y, x_145.z);
  let x_147 : vec3<f32> = u_xlat5;
  let x_150 : vec3<f32> = in_NORMAL0;
  u_xlat5 = (x_147 * x_150);
  let x_152 : vec4<f32> = u_xlat0;
  let x_154 : vec3<f32> = u_xlat5;
  let x_155 : vec3<f32> = (vec3<f32>(x_152.x, x_152.x, x_152.x) * x_154);
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : f32 = x_45.x_Cutoff;
  let x_163 : f32 = x_45.x_Cutoff;
  let x_165 : f32 = x_45.x_Cutoff;
  let x_166 : vec3<f32> = vec3<f32>(x_161, x_163, x_165);
  let x_171 : vec3<f32> = (vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : f32 = x_45.x_DisplaceAmount;
  let x_180 : f32 = x_45.x_DisplaceAmount;
  let x_182 : f32 = x_45.x_DisplaceAmount;
  let x_183 : vec3<f32> = vec3<f32>(x_178, x_180, x_182);
  let x_189 : vec4<f32> = in_POSITION0;
  let x_191 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_183.x, x_183.y, x_183.z)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = x_45.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_194.y, x_194.y, x_194.y, x_194.y) * x_197);
  let x_200 : vec4<f32> = x_45.unity_ObjectToWorld[0i];
  let x_201 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_200 * vec4<f32>(x_201.x, x_201.x, x_201.x, x_201.x)) + x_204);
  let x_207 : vec4<f32> = x_45.unity_ObjectToWorld[2i];
  let x_208 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_207 * vec4<f32>(x_208.z, x_208.z, x_208.z, x_208.z)) + x_211);
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = x_45.unity_ObjectToWorld[3i];
  u_xlat1 = (x_213 + x_216);
  let x_219 : vec4<f32> = x_45.unity_ObjectToWorld[3i];
  let x_221 : vec4<f32> = in_POSITION0;
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = x_45.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_230.y, x_230.y, x_230.y, x_230.y) * x_234);
  let x_237 : vec4<f32> = x_45.unity_MatrixVP[0i];
  let x_238 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_237 * vec4<f32>(x_238.x, x_238.x, x_238.x, x_238.x)) + x_241);
  let x_244 : vec4<f32> = x_45.unity_MatrixVP[2i];
  let x_245 : vec4<f32> = u_xlat1;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_244 * vec4<f32>(x_245.z, x_245.z, x_245.z, x_245.z)) + x_248);
  let x_255 : vec4<f32> = x_45.unity_MatrixVP[3i];
  let x_256 : vec4<f32> = u_xlat1;
  let x_259 : vec4<f32> = u_xlat2;
  gl_Position = ((x_255 * vec4<f32>(x_256.w, x_256.w, x_256.w, x_256.w)) + x_259);
  let x_264 : vec4<f32> = in_TEXCOORD0;
  let x_268 : vec4<f32> = x_45.x_Noise_ST;
  let x_272 : vec4<f32> = x_45.x_Noise_ST;
  let x_274 : vec2<f32> = ((vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_268.x, x_268.y)) + vec2<f32>(x_272.z, x_272.w));
  let x_275 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_275.w);
  let x_277 : vec4<f32> = in_TEXCOORD0;
  let x_281 : vec4<f32> = x_45.x_MainTex_ST;
  let x_285 : vec4<f32> = x_45.x_MainTex_ST;
  let x_287 : vec2<f32> = ((vec2<f32>(x_277.x, x_277.y) * vec2<f32>(x_281.x, x_281.y)) + vec2<f32>(x_285.z, x_285.w));
  let x_288 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_288.x, x_288.y, x_287.x, x_287.y);
  let x_292 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_292;
  let x_297 : vec4<f32> = in_TANGENT0;
  let x_300 : vec4<f32> = x_45.unity_ObjectToWorld[1i];
  let x_302 : vec3<f32> = (vec3<f32>(x_297.y, x_297.y, x_297.y) * vec3<f32>(x_300.y, x_300.z, x_300.x));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec4<f32> = x_45.unity_ObjectToWorld[0i];
  let x_308 : vec4<f32> = in_TANGENT0;
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.y, x_306.z, x_306.x) * vec3<f32>(x_308.x, x_308.x, x_308.x)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : vec4<f32> = x_45.unity_ObjectToWorld[2i];
  let x_319 : vec4<f32> = in_TANGENT0;
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec3<f32> = ((vec3<f32>(x_317.y, x_317.z, x_317.x) * vec3<f32>(x_319.z, x_319.z, x_319.z)) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_333);
  let x_335 : f32 = u_xlat15;
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = (vec3<f32>(x_335, x_335, x_335) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_344 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_344;
  let x_348 : f32 = in_TANGENT0.w;
  let x_351 : f32 = x_45.unity_WorldTransformParams.w;
  u_xlat15 = (x_348 * x_351);
  let x_353 : vec3<f32> = in_NORMAL0;
  let x_356 : vec4<f32> = x_45.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_353, vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec3<f32> = in_NORMAL0;
  let x_362 : vec4<f32> = x_45.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_360, vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_366 : vec3<f32> = in_NORMAL0;
  let x_368 : vec4<f32> = x_45.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_366, vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_373 : vec4<f32> = u_xlat2;
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_378);
  let x_380 : f32 = u_xlat16;
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_380, x_380, x_380, x_380) * vec4<f32>(x_382.x, x_382.y, x_382.z, x_382.z));
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat2;
  let x_390 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388.w, x_388.x, x_388.y));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat2;
  let x_395 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = u_xlat3;
  let x_401 : vec3<f32> = ((vec3<f32>(x_393.y, x_393.w, x_393.x) * vec3<f32>(x_395.y, x_395.z, x_395.x)) + -(vec3<f32>(x_398.x, x_398.y, x_398.z)));
  let x_402 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : f32 = u_xlat15;
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec3<f32> = (vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_412;
  let x_415 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_415;
  let x_419 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_419;
  let x_423 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_423;
  let x_426 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_426;
  let x_429 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_429;
  let x_432 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_432;
  let x_435 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_435;
  let x_438 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_438;
  let x_441 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_441;
  let x_443 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = x_45.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_443.x, x_443.x, x_443.x, x_443.x)) + x_447);
  let x_449 : vec4<f32> = u_xlat0;
  let x_453 : vec4<f32> = x_45.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_449.y, x_449.y, x_449.y, x_449.y)) + x_453);
  let x_455 : vec4<f32> = u_xlat0;
  let x_459 : vec4<f32> = x_45.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_455.z, x_455.z, x_455.z, x_455.z)) + x_459);
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_462.y, x_462.y, x_462.y, x_462.y) * x_464);
  let x_466 : vec4<f32> = u_xlat3;
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_466 * x_467);
  let x_469 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = u_xlat1;
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_469 * x_470) + x_472);
  let x_474 : vec4<f32> = u_xlat1;
  let x_475 : vec4<f32> = u_xlat2;
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_474 * vec4<f32>(x_475.x, x_475.x, x_475.x, x_475.x)) + x_478);
  let x_480 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = u_xlat2;
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_480 * vec4<f32>(x_481.w, x_481.w, x_481.z, x_481.w)) + x_484);
  let x_486 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = u_xlat0;
  let x_489 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_486 * x_487) + x_489);
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_491, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_495);
  let x_497 : vec4<f32> = u_xlat0;
  let x_500 : vec4<f32> = x_45.unity_4LightAtten0;
  u_xlat0 = ((x_497 * x_500) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_504);
  let x_506 : vec4<f32> = u_xlat1;
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_506 * x_507);
  let x_509 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_509, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_512 : vec4<f32> = u_xlat0;
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_512 * x_513);
  let x_515 : vec4<f32> = u_xlat0;
  let x_519 : vec4<f32> = x_45.unity_LightColor[1i];
  let x_521 : vec3<f32> = (vec3<f32>(x_515.y, x_515.y, x_515.y) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec4<f32> = x_45.unity_LightColor[0i];
  let x_527 : vec4<f32> = u_xlat0;
  let x_530 : vec4<f32> = u_xlat1;
  let x_532 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.x, x_527.x, x_527.x)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : vec4<f32> = x_45.unity_LightColor[2i];
  let x_538 : vec4<f32> = u_xlat0;
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec3<f32> = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.z, x_538.z, x_538.z)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : vec4<f32> = x_45.unity_LightColor[3i];
  let x_549 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat0;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_549.w, x_549.w, x_549.w)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : f32 = u_xlat2.y;
  let x_560 : f32 = u_xlat2.y;
  u_xlat15 = (x_558 * x_560);
  let x_563 : f32 = u_xlat2.x;
  let x_565 : f32 = u_xlat2.x;
  let x_567 : f32 = u_xlat15;
  u_xlat15 = ((x_563 * x_565) + -(x_567));
  let x_570 : vec4<f32> = u_xlat2;
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_570.y, x_570.w, x_570.z, x_570.x) * x_572);
  let x_576 : vec4<f32> = x_45.unity_SHBr;
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_576, x_577);
  let x_582 : vec4<f32> = x_45.unity_SHBg;
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_582, x_583);
  let x_588 : vec4<f32> = x_45.unity_SHBb;
  let x_589 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_588, x_589);
  let x_594 : vec4<f32> = x_45.unity_SHC;
  let x_596 : f32 = u_xlat15;
  let x_599 : vec4<f32> = u_xlat2;
  let x_601 : vec3<f32> = ((vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596)) + vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_606 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(x_608.x, x_608.y, x_608.z));
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

