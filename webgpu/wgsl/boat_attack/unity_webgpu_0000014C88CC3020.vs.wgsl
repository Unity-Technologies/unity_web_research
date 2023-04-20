diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ScreenParams : vec4<f32>,
  /* @offset(32) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(96) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(160) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(176) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(240) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(304) */
  x_FaceDilate : f32,
  /* @offset(320) */
  x_EnvMatrix : mat4x4<f32>,
  /* @offset(384) */
  x_WeightNormal : f32,
  /* @offset(388) */
  x_WeightBold : f32,
  /* @offset(392) */
  x_ScaleRatioA : f32,
  /* @offset(396) */
  x_VertexOffsetX : f32,
  /* @offset(400) */
  x_VertexOffsetY : f32,
  /* @offset(404) */
  x_GradientScale : f32,
  /* @offset(408) */
  x_ScaleX : f32,
  /* @offset(412) */
  x_ScaleY : f32,
  /* @offset(416) */
  x_PerspectiveFilter : f32,
  /* @offset(420) */
  x_Sharpness : f32,
  /* @offset(432) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(448) */
  x_FaceTex_ST : vec4<f32>,
  /* @offset(464) */
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD9 : f32;

var<private> u_xlat12 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati4 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_34 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_34.y, x_34.y, x_34.y, x_34.y) * x_40);
  let x_44 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_45 : vec3<f32> = u_xlat0;
  let x_48 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_44 * vec4<f32>(x_45.x, x_45.x, x_45.x, x_45.x)) + x_48);
  let x_51 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_51 * vec4<f32>(x_52.z, x_52.z, x_52.z, x_52.z)) + x_55);
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_58 + x_61);
  let x_64 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_66 : vec4<f32> = in_POSITION0;
  let x_69 : vec4<f32> = u_xlat1;
  let x_71 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_66.w, x_66.w, x_66.w)) + vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_79 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_75.y, x_75.y, x_75.y, x_75.y) * x_79);
  let x_82 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_83 : vec4<f32> = u_xlat2;
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_82 * vec4<f32>(x_83.x, x_83.x, x_83.x, x_83.x)) + x_86);
  let x_89 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_90 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_89 * vec4<f32>(x_90.z, x_90.z, x_90.z, x_90.z)) + x_93);
  let x_96 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_97 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_96 * vec4<f32>(x_97.w, x_97.w, x_97.w, x_97.w)) + x_100);
  let x_108 : vec4<f32> = u_xlat3;
  gl_Position = x_108;
  let x_116 : f32 = u_xlat3.z;
  vs_TEXCOORD9 = x_116;
  let x_122 : f32 = in_TEXCOORD1.x;
  u_xlat12 = (x_122 * 0.000244140625f);
  let x_125 : f32 = u_xlat12;
  u_xlat3.x = floor(x_125);
  let x_129 : f32 = u_xlat3.x;
  let x_134 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_129) * 4096.0f) + x_134);
  let x_137 : vec4<f32> = u_xlat3;
  let x_141 : vec2<f32> = (vec2<f32>(x_137.x, x_137.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_142 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_145 : vec4<f32> = u_xlat3;
  let x_149 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_153 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_155 : vec2<f32> = ((vec2<f32>(x_145.x, x_145.y) * vec2<f32>(x_149.x, x_149.y)) + vec2<f32>(x_153.z, x_153.w));
  let x_156 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_156.x, x_156.y, x_155.x, x_155.y);
  let x_160 : vec4<f32> = u_xlat3;
  let x_164 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_168 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164.x, x_164.y)) + vec2<f32>(x_168.z, x_168.w));
  let x_172 : vec4<f32> = in_TEXCOORD0;
  let x_176 : vec4<f32> = x_19.x_MainTex_ST;
  let x_180 : vec4<f32> = x_19.x_MainTex_ST;
  let x_182 : vec2<f32> = ((vec2<f32>(x_172.x, x_172.y) * vec2<f32>(x_176.x, x_176.y)) + vec2<f32>(x_180.z, x_180.w));
  let x_183 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
  let x_186 : f32 = u_xlat2.y;
  let x_189 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat12 = (x_186 * x_189);
  let x_192 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_194 : f32 = u_xlat2.x;
  let x_196 : f32 = u_xlat12;
  u_xlat12 = ((x_192 * x_194) + x_196);
  let x_199 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_201 : f32 = u_xlat2.z;
  let x_203 : f32 = u_xlat12;
  u_xlat12 = ((x_199 * x_201) + x_203);
  let x_206 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_208 : f32 = u_xlat2.w;
  let x_210 : f32 = u_xlat12;
  u_xlat12 = ((x_206 * x_208) + x_210);
  let x_213 : vec4<f32> = x_19.x_ScreenParams;
  let x_217 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_219 : vec2<f32> = (vec2<f32>(x_213.y, x_213.y) * vec2<f32>(x_217.x, x_217.y));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_223 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_226 : vec4<f32> = x_19.x_ScreenParams;
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec2<f32> = ((vec2<f32>(x_223.x, x_223.y) * vec2<f32>(x_226.x, x_226.x)) + vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat2;
  let x_238 : f32 = x_19.x_ScaleX;
  let x_241 : f32 = x_19.x_ScaleY;
  let x_243 : vec2<f32> = (vec2<f32>(x_234.x, x_234.y) * vec2<f32>(x_238, x_241));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_244.z, x_244.w);
  let x_246 : f32 = u_xlat12;
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec2<f32> = (vec2<f32>(x_246, x_246) / vec2<f32>(x_248.x, x_248.y));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat2;
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec2<f32>(x_253.x, x_253.y), vec2<f32>(x_255.x, x_255.y));
  let x_258 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_258);
  let x_262 : f32 = in_TEXCOORD1.y;
  let x_266 : f32 = x_19.x_GradientScale;
  u_xlat13 = (abs(x_262) * x_266);
  let x_270 : f32 = x_19.x_Sharpness;
  u_xlat2.x = (x_270 + 1.0f);
  let x_274 : f32 = u_xlat13;
  let x_276 : f32 = u_xlat2.x;
  u_xlat13 = (x_274 * x_276);
  let x_278 : f32 = u_xlat12;
  let x_279 : f32 = u_xlat13;
  u_xlat2.x = (x_278 * x_279);
  let x_285 : f32 = x_19.x_PerspectiveFilter;
  u_xlat6.x = (-(x_285) + 1.0f);
  let x_290 : f32 = u_xlat6.x;
  let x_292 : f32 = u_xlat2.x;
  u_xlat2.x = (x_290 * x_292);
  let x_295 : f32 = u_xlat12;
  let x_296 : f32 = u_xlat13;
  let x_299 : f32 = u_xlat2.x;
  u_xlat12 = ((x_295 * x_296) + -(x_299));
  let x_304 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_307 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat6 = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_311 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_314 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_317 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_314.x, x_314.x, x_314.x)) + x_317);
  let x_320 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_323 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_326 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_323.z, x_323.z, x_323.z)) + x_326);
  let x_328 : vec3<f32> = u_xlat6;
  let x_330 : vec4<f32> = x_19.unity_WorldToObject[3i];
  u_xlat6 = (x_328 + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_334 : f32 = in_POSITION0.z;
  u_xlat0.z = x_334;
  let x_336 : vec3<f32> = u_xlat0;
  let x_338 : vec3<f32> = u_xlat6;
  u_xlat0 = (-(x_336) + x_338);
  let x_342 : vec3<f32> = in_NORMAL0;
  let x_343 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_342, x_343);
  let x_350 : f32 = u_xlat0.x;
  u_xlati4 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_350)));
  let x_358 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_358 < 0.0f)));
  let x_362 : i32 = u_xlati4;
  let x_364 : i32 = u_xlati0;
  u_xlati0 = (-(x_362) + x_364);
  let x_366 : i32 = u_xlati0;
  u_xlat0.x = f32(x_366);
  let x_369 : vec3<f32> = u_xlat0;
  let x_371 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec3<f32>(x_369.x, x_369.x, x_369.x) * x_371);
  let x_373 : vec3<f32> = u_xlat0;
  let x_375 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_373, vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_379 : vec3<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_379, vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_385 : vec3<f32> = u_xlat0;
  let x_387 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_385, vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_391 : vec4<f32> = u_xlat3;
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_398 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_398);
  let x_401 : vec3<f32> = u_xlat0;
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_401.x, x_401.x, x_401.x) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat1;
  let x_410 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  u_xlat6 = (-(vec3<f32>(x_406.x, x_406.y, x_406.z)) + x_410);
  let x_414 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_414.x, x_414.y, x_414.z);
  let x_416 : vec3<f32> = u_xlat6;
  let x_417 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_416, x_417);
  let x_421 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_421);
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat6;
  let x_427 : vec3<f32> = (vec3<f32>(x_424.x, x_424.x, x_424.x) * x_426);
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec3<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_430.y, x_430.z, x_430.x), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_438 : f32 = u_xlat1.x;
  let x_440 : f32 = u_xlat12;
  let x_443 : f32 = u_xlat2.x;
  vs_TEXCOORD6.y = ((abs(x_438) * x_440) + x_443);
  let x_449 : f32 = in_TEXCOORD1.y;
  u_xlatb12 = (0.0f >= x_449);
  let x_451 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_451);
  let x_455 : f32 = x_19.x_WeightNormal;
  let x_459 : f32 = x_19.x_WeightBold;
  u_xlat1.x = (-(x_455) + x_459);
  let x_462 : f32 = u_xlat12;
  let x_464 : f32 = u_xlat1.x;
  let x_467 : f32 = x_19.x_WeightNormal;
  u_xlat12 = ((x_462 * x_464) + x_467);
  let x_469 : f32 = u_xlat12;
  let x_474 : f32 = x_19.x_FaceDilate;
  u_xlat12 = ((x_469 * 0.25f) + x_474);
  let x_476 : f32 = u_xlat12;
  let x_479 : f32 = x_19.x_ScaleRatioA;
  u_xlat12 = (x_476 * x_479);
  let x_481 : f32 = u_xlat12;
  vs_TEXCOORD6.x = (x_481 * 0.5f);
  let x_487 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_487;
  let x_490 : vec4<f32> = in_TANGENT0;
  let x_493 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_495 : vec3<f32> = (vec3<f32>(x_490.y, x_490.y, x_490.y) * vec3<f32>(x_493.y, x_493.z, x_493.x));
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_501 : vec4<f32> = in_TANGENT0;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.y, x_499.z, x_499.x) * vec3<f32>(x_501.x, x_501.x, x_501.x)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_512 : vec4<f32> = in_TANGENT0;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = ((vec3<f32>(x_510.y, x_510.z, x_510.x) * vec3<f32>(x_512.z, x_512.z, x_512.z)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_520.x, x_520.y, x_520.z), vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_525);
  let x_527 : f32 = u_xlat12;
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec3<f32> = (vec3<f32>(x_527, x_527, x_527) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = (x_534 * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat0;
  let x_542 : vec4<f32> = u_xlat1;
  let x_545 : vec4<f32> = u_xlat3;
  let x_548 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.x, x_540.y) * vec3<f32>(x_542.y, x_542.z, x_542.x)) + -(vec3<f32>(x_545.x, x_545.y, x_545.z)));
  let x_549 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_553 : f32 = in_TANGENT0.w;
  let x_556 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat4 = (x_553 * x_556);
  let x_558 : f32 = u_xlat4;
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec3<f32> = (vec3<f32>(x_558, x_558, x_558) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_566 : f32 = u_xlat3.x;
  vs_TEXCOORD2.y = x_566;
  let x_569 : f32 = u_xlat1.z;
  vs_TEXCOORD2.x = x_569;
  let x_573 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_573;
  let x_577 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_577;
  let x_580 : f32 = u_xlat1.x;
  vs_TEXCOORD3.x = x_580;
  let x_583 : f32 = u_xlat1.y;
  vs_TEXCOORD4.x = x_583;
  let x_586 : f32 = u_xlat3.y;
  vs_TEXCOORD3.y = x_586;
  let x_589 : f32 = u_xlat3.z;
  vs_TEXCOORD4.y = x_589;
  let x_593 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_593;
  let x_594 : vec3<f32> = u_xlat6;
  let x_598 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_594.y, x_594.y, x_594.y) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_602 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_604 : vec3<f32> = u_xlat6;
  let x_607 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604.x, x_604.x, x_604.x)) + x_607);
  let x_611 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_613 : vec3<f32> = u_xlat6;
  let x_616 : vec3<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613.z, x_613.z, x_613.z)) + x_616);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD9_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(7)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD6_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(8)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD9, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}


