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

@group(0) @binding(4) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(16) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

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
  let x_201 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = u_xlat2;
  gl_Position = ((x_201 * vec4<f32>(x_202.w, x_202.w, x_202.w, x_202.w)) + x_205);
  let x_213 : vec4<f32> = in_TEXCOORD0;
  let x_217 : vec4<f32> = x_22.x_MainTex_ST;
  let x_221 : vec4<f32> = x_22.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_217.x, x_217.y)) + vec2<f32>(x_221.z, x_221.w));
  let x_226 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_226;
  let x_231 : vec4<f32> = in_TANGENT0;
  let x_234 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  let x_236 : vec3<f32> = (vec3<f32>(x_231.y, x_231.y, x_231.y) * vec3<f32>(x_234.y, x_234.z, x_234.x));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_242 : vec4<f32> = in_TANGENT0;
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.y, x_240.z, x_240.x) * vec3<f32>(x_242.x, x_242.x, x_242.x)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_253 : vec4<f32> = in_TANGENT0;
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.y, x_251.z, x_251.x) * vec3<f32>(x_253.z, x_253.z, x_253.z)) + vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec4<f32> = u_xlat1;
  let x_264 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_267);
  let x_269 : f32 = u_xlat15;
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec3<f32> = (vec3<f32>(x_269, x_269, x_269) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_277;
  let x_280 : f32 = in_TANGENT0.w;
  let x_283 : f32 = x_22.unity_WorldTransformParams.w;
  u_xlat15 = (x_280 * x_283);
  let x_285 : vec3<f32> = in_NORMAL0;
  let x_288 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_285, vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_292 : vec3<f32> = in_NORMAL0;
  let x_294 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_292, vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec3<f32> = in_NORMAL0;
  let x_300 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_298, vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_305.x, x_305.y, x_305.z), vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_310);
  let x_312 : f32 = u_xlat16;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_312, x_312, x_312, x_312) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.w, x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_325.y, x_325.w, x_325.x) * vec3<f32>(x_327.y, x_327.z, x_327.x)) + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : f32 = u_xlat15;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_344;
  let x_347 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_347;
  let x_351 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_351;
  let x_355 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_355;
  let x_358 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_358;
  let x_361 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_361;
  let x_364 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_364;
  let x_367 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_367;
  let x_370 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_370;
  let x_373 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_373;
  let x_375 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_375.x, x_375.x, x_375.x, x_375.x)) + x_379);
  let x_381 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_381.y, x_381.y, x_381.y, x_381.y)) + x_385);
  let x_387 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_387.z, x_387.z, x_387.z, x_387.z)) + x_391);
  let x_394 : vec4<f32> = u_xlat2;
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_394.y, x_394.y, x_394.y, x_394.y) * x_396);
  let x_398 : vec4<f32> = u_xlat3;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_398 * x_399);
  let x_401 : vec4<f32> = u_xlat1;
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_401 * x_402) + x_404);
  let x_406 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = u_xlat2;
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_406 * vec4<f32>(x_407.x, x_407.x, x_407.x, x_407.x)) + x_410);
  let x_412 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = u_xlat2;
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_412 * vec4<f32>(x_413.w, x_413.w, x_413.z, x_413.w)) + x_416);
  let x_418 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_418 * x_419) + x_421);
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_423, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_427);
  let x_429 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat0 = ((x_429 * x_432) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_437);
  let x_439 : vec4<f32> = u_xlat1;
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_439 * x_440);
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_442, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_445 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_445 * x_446);
  let x_448 : vec4<f32> = u_xlat0;
  let x_452 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_454 : vec3<f32> = (vec3<f32>(x_448.y, x_448.y, x_448.y) * vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_458 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_460 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.x, x_460.x, x_460.x)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_469 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_471 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471.z, x_471.z, x_471.z)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = u_xlat0;
  let x_487 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.w, x_482.w, x_482.w)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_491 : f32 = u_xlat2.y;
  let x_493 : f32 = u_xlat2.y;
  u_xlat15 = (x_491 * x_493);
  let x_496 : f32 = u_xlat2.x;
  let x_498 : f32 = u_xlat2.x;
  let x_500 : f32 = u_xlat15;
  u_xlat15 = ((x_496 * x_498) + -(x_500));
  let x_503 : vec4<f32> = u_xlat2;
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_503.y, x_503.w, x_503.z, x_503.x) * x_505);
  let x_509 : vec4<f32> = x_22.unity_SHBr;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_509, x_510);
  let x_515 : vec4<f32> = x_22.unity_SHBg;
  let x_516 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_515, x_516);
  let x_521 : vec4<f32> = x_22.unity_SHBb;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_521, x_522);
  let x_527 : vec4<f32> = x_22.unity_SHC;
  let x_529 : f32 = u_xlat15;
  let x_532 : vec4<f32> = u_xlat2;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(x_529, x_529, x_529)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_539 : vec4<f32> = u_xlat0;
  let x_541 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_539.x, x_539.y, x_539.z) + vec3<f32>(x_541.x, x_541.y, x_541.z));
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

