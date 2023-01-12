type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_SinTime : vec4<f32>,
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
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_22 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(5) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(17) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat16 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_26 : f32 = x_22.x_DisplacementScale;
  let x_28 : f32 = x_22.x_DisplacementScale;
  let x_30 : f32 = x_22.x_DisplacementScale;
  let x_31 : vec3<f32> = vec3<f32>(x_26, x_28, x_30);
  let x_36 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = in_COLOR0;
  let x_44 : vec3<f32> = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.z, x_42.z, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_51 : f32 = x_22.x_SinTime.y;
  let x_54 : f32 = x_22.x_DisplacementSpeed;
  u_xlat1.y = (x_51 * x_54);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_63 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = in_COLOR0;
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.y, x_65.y, x_65.y)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_83.x, x_83.y, x_83.z), 0.0f);
  u_xlat0 = x_85;
  let x_91 : i32 = x_22.x_DisplacementIndex;
  u_xlati1 = x_91;
  let x_92 : vec4<f32> = u_xlat0;
  let x_102 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_107 : vec4<u32> = indexable[x_102];
  u_xlat0.x = dot(x_92, bitcast<vec4<f32>>(x_107));
  let x_112 : f32 = u_xlat0.x;
  let x_115 : f32 = x_22.x_Displacement;
  u_xlat0.x = (x_112 * x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_119 * x_122);
  let x_127 : vec3<f32> = in_NORMAL0;
  let x_128 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = in_POSITION0;
  let x_133 : vec3<f32> = ((x_127 * vec3<f32>(x_128.x, x_128.x, x_128.x)) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_136.y, x_136.y, x_136.y, x_136.y) * x_142);
  let x_145 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_145 * vec4<f32>(x_146.x, x_146.x, x_146.x, x_146.x)) + x_149);
  let x_153 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_154 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_153 * vec4<f32>(x_154.z, x_154.z, x_154.z, x_154.z)) + x_157);
  let x_159 : vec4<f32> = u_xlat0;
  let x_162 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  u_xlat1 = (x_159 + x_162);
  let x_165 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  let x_167 : vec4<f32> = in_POSITION0;
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167.w, x_167.w, x_167.w)) + vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = x_22.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_176.y, x_176.y, x_176.y, x_176.y) * x_180);
  let x_183 : vec4<f32> = x_22.unity_MatrixVP[0i];
  let x_184 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_183 * vec4<f32>(x_184.x, x_184.x, x_184.x, x_184.x)) + x_187);
  let x_190 : vec4<f32> = x_22.unity_MatrixVP[2i];
  let x_191 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_190 * vec4<f32>(x_191.z, x_191.z, x_191.z, x_191.z)) + x_194);
  let x_197 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_198 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_197 * vec4<f32>(x_198.w, x_198.w, x_198.w, x_198.w)) + x_201);
  let x_207 : vec4<f32> = u_xlat1;
  gl_Position = x_207;
  let x_213 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_213;
  let x_218 : vec4<f32> = in_TEXCOORD0;
  let x_222 : vec4<f32> = x_22.x_MainTex_ST;
  let x_226 : vec4<f32> = x_22.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_222.x, x_222.y)) + vec2<f32>(x_226.z, x_226.w));
  let x_231 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_231;
  let x_235 : vec4<f32> = in_TANGENT0;
  let x_238 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  let x_240 : vec3<f32> = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_238.y, x_238.z, x_238.x));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_246 : vec4<f32> = in_TANGENT0;
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.y, x_244.z, x_244.x) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_257 : vec4<f32> = in_TANGENT0;
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.y, x_255.z, x_255.x) * vec3<f32>(x_257.z, x_257.z, x_257.z)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = u_xlat1;
  let x_268 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat15;
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : vec3<f32> = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_281;
  let x_284 : f32 = in_TANGENT0.w;
  let x_287 : f32 = x_22.unity_WorldTransformParams.w;
  u_xlat15 = (x_284 * x_287);
  let x_289 : vec3<f32> = in_NORMAL0;
  let x_292 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_289, vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_296 : vec3<f32> = in_NORMAL0;
  let x_298 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_296, vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec3<f32> = in_NORMAL0;
  let x_304 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_302, vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_309 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_314);
  let x_316 : f32 = u_xlat16;
  let x_318 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_316, x_316, x_316, x_316) * vec4<f32>(x_318.x, x_318.y, x_318.z, x_318.z));
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.w, x_324.x, x_324.y));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat2;
  let x_331 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = ((vec3<f32>(x_329.y, x_329.w, x_329.x) * vec3<f32>(x_331.y, x_331.z, x_331.x)) + -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : f32 = u_xlat15;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = (vec3<f32>(x_340, x_340, x_340) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_348;
  let x_351 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_351;
  let x_355 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_355;
  let x_359 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_359;
  let x_362 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_362;
  let x_365 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_365;
  let x_368 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_368;
  let x_371 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_371;
  let x_374 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_374;
  let x_377 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_377;
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_379.x, x_379.x, x_379.x, x_379.x)) + x_383);
  let x_385 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_385.y, x_385.y, x_385.y, x_385.y)) + x_389);
  let x_391 : vec4<f32> = u_xlat0;
  let x_395 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_391.z, x_391.z, x_391.z, x_391.z)) + x_395);
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_398.y, x_398.y, x_398.y, x_398.y) * x_400);
  let x_402 : vec4<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_402 * x_403);
  let x_405 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_405 * x_406) + x_408);
  let x_410 : vec4<f32> = u_xlat1;
  let x_411 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_410 * vec4<f32>(x_411.x, x_411.x, x_411.x, x_411.x)) + x_414);
  let x_416 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat2;
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_416 * vec4<f32>(x_417.w, x_417.w, x_417.z, x_417.w)) + x_420);
  let x_422 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_422 * x_423) + x_425);
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_427, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_431);
  let x_433 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat0 = ((x_433 * x_436) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_441 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_441);
  let x_443 : vec4<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_443 * x_444);
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_446, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_449 : vec4<f32> = u_xlat0;
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_449 * x_450);
  let x_452 : vec4<f32> = u_xlat0;
  let x_456 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_458 : vec3<f32> = (vec3<f32>(x_452.y, x_452.y, x_452.y) * vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<f32> = u_xlat1;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464.x, x_464.x, x_464.x)) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_475 : vec4<f32> = u_xlat0;
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = ((vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_475.z, x_475.z, x_475.z)) + vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_484 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_486 : vec4<f32> = u_xlat0;
  let x_489 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_486.w, x_486.w, x_486.w)) + vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = u_xlat2.y;
  let x_497 : f32 = u_xlat2.y;
  u_xlat15 = (x_495 * x_497);
  let x_500 : f32 = u_xlat2.x;
  let x_502 : f32 = u_xlat2.x;
  let x_504 : f32 = u_xlat15;
  u_xlat15 = ((x_500 * x_502) + -(x_504));
  let x_507 : vec4<f32> = u_xlat2;
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_507.y, x_507.w, x_507.z, x_507.x) * x_509);
  let x_513 : vec4<f32> = x_22.unity_SHBr;
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_513, x_514);
  let x_519 : vec4<f32> = x_22.unity_SHBg;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_22.unity_SHBb;
  let x_526 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_22.unity_SHC;
  let x_533 : f32 = u_xlat15;
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_533, x_533, x_533)) + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_543 : vec4<f32> = u_xlat0;
  let x_545 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

