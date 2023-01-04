type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
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
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FaceDilate : f32,
  @size(12)
  padding_1 : u32,
  x_EnvMatrix : mat4x4<f32>,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  @size(12)
  padding_2 : u32,
  x_MainTex_ST : vec4<f32>,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(9) var<uniform> x_22 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati5 : i32;

var<private> u_xlati0 : i32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : f32 = x_22.x_VertexOffsetX;
  let x_30 : f32 = x_22.x_VertexOffsetY;
  let x_32 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_27, x_30));
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_32.x, x_32.y, x_33.z, x_33.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_36.y, x_36.y, x_36.y, x_36.y) * x_42);
  let x_46 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_47 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_46 * vec4<f32>(x_47.x, x_47.x, x_47.x, x_47.x)) + x_50);
  let x_54 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.z, x_55.z, x_55.z, x_55.z)) + x_58);
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  u_xlat2 = (x_61 + x_64);
  let x_67 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  let x_69 : vec4<f32> = in_POSITION0;
  let x_72 : vec4<f32> = u_xlat1;
  let x_74 : vec3<f32> = ((vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(x_69.w, x_69.w, x_69.w)) + vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_78 : vec4<f32> = u_xlat2;
  let x_82 : vec4<f32> = x_22.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_78.y, x_78.y, x_78.y, x_78.y) * x_82);
  let x_85 : vec4<f32> = x_22.unity_MatrixVP[0i];
  let x_86 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_85 * vec4<f32>(x_86.x, x_86.x, x_86.x, x_86.x)) + x_89);
  let x_92 : vec4<f32> = x_22.unity_MatrixVP[2i];
  let x_93 : vec4<f32> = u_xlat2;
  let x_96 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_92 * vec4<f32>(x_93.z, x_93.z, x_93.z, x_93.z)) + x_96);
  let x_104 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_105 : vec4<f32> = u_xlat2;
  let x_108 : vec4<f32> = u_xlat3;
  gl_Position = ((x_104 * vec4<f32>(x_105.w, x_105.w, x_105.w, x_105.w)) + x_108);
  let x_118 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_118 * 0.000244140625f);
  let x_121 : f32 = u_xlat15;
  u_xlat3.x = floor(x_121);
  let x_125 : f32 = u_xlat3.x;
  let x_130 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_125) * 4096.0f) + x_130);
  let x_133 : vec4<f32> = u_xlat3;
  let x_137 : vec2<f32> = (vec2<f32>(x_133.x, x_133.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_138 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_141 : vec4<f32> = u_xlat3;
  let x_145 : vec4<f32> = x_22.x_FaceTex_ST;
  let x_149 : vec4<f32> = x_22.x_FaceTex_ST;
  let x_151 : vec2<f32> = ((vec2<f32>(x_141.x, x_141.y) * vec2<f32>(x_145.x, x_145.y)) + vec2<f32>(x_149.z, x_149.w));
  let x_152 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_152.x, x_152.y, x_151.x, x_151.y);
  let x_156 : vec4<f32> = u_xlat3;
  let x_160 : vec4<f32> = x_22.x_OutlineTex_ST;
  let x_164 : vec4<f32> = x_22.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_156.x, x_156.y) * vec2<f32>(x_160.x, x_160.y)) + vec2<f32>(x_164.z, x_164.w));
  let x_168 : vec4<f32> = in_TEXCOORD0;
  let x_172 : vec4<f32> = x_22.x_MainTex_ST;
  let x_176 : vec4<f32> = x_22.x_MainTex_ST;
  let x_178 : vec2<f32> = ((vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_172.x, x_172.y)) + vec2<f32>(x_176.z, x_176.w));
  let x_179 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_186 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_186);
  let x_188 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_188);
  let x_194 : f32 = x_22.x_WeightNormal;
  let x_198 : f32 = x_22.x_WeightBold;
  u_xlat16 = (-(x_194) + x_198);
  let x_200 : f32 = u_xlat15;
  let x_201 : f32 = u_xlat16;
  let x_204 : f32 = x_22.x_WeightNormal;
  u_xlat15 = ((x_200 * x_201) + x_204);
  let x_206 : f32 = u_xlat15;
  let x_211 : f32 = x_22.x_FaceDilate;
  u_xlat15 = ((x_206 * 0.25f) + x_211);
  let x_213 : f32 = u_xlat15;
  let x_216 : f32 = x_22.x_ScaleRatioA;
  u_xlat15 = (x_213 * x_216);
  let x_219 : f32 = u_xlat15;
  vs_TEXCOORD5.x = (x_219 * 0.5f);
  let x_225 : f32 = u_xlat2.y;
  let x_228 : f32 = x_22.unity_MatrixVP[1i].w;
  u_xlat15 = (x_225 * x_228);
  let x_231 : f32 = x_22.unity_MatrixVP[0i].w;
  let x_233 : f32 = u_xlat2.x;
  let x_235 : f32 = u_xlat15;
  u_xlat15 = ((x_231 * x_233) + x_235);
  let x_238 : f32 = x_22.unity_MatrixVP[2i].w;
  let x_241 : f32 = u_xlat2.z;
  let x_243 : f32 = u_xlat15;
  u_xlat15 = ((x_238 * x_241) + x_243);
  let x_246 : f32 = x_22.unity_MatrixVP[3i].w;
  let x_248 : f32 = u_xlat2.w;
  let x_250 : f32 = u_xlat15;
  u_xlat15 = ((x_246 * x_248) + x_250);
  let x_253 : vec4<f32> = x_22.x_ScreenParams;
  let x_257 : vec4<f32> = x_22.glstate_matrix_projection[1i];
  let x_259 : vec2<f32> = (vec2<f32>(x_253.y, x_253.y) * vec2<f32>(x_257.x, x_257.y));
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_260.z, x_260.w);
  let x_263 : vec4<f32> = x_22.glstate_matrix_projection[0i];
  let x_266 : vec4<f32> = x_22.x_ScreenParams;
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec2<f32> = ((vec2<f32>(x_263.x, x_263.y) * vec2<f32>(x_266.x, x_266.x)) + vec2<f32>(x_269.x, x_269.y));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat2;
  let x_278 : f32 = x_22.x_ScaleX;
  let x_281 : f32 = x_22.x_ScaleY;
  let x_283 : vec2<f32> = (vec2<f32>(x_274.x, x_274.y) * vec2<f32>(x_278, x_281));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
  let x_286 : f32 = u_xlat15;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec2<f32> = (vec2<f32>(x_286, x_286) / vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_293.x, x_293.y), vec2<f32>(x_295.x, x_295.y));
  let x_298 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_298);
  let x_301 : f32 = in_TEXCOORD1.y;
  let x_305 : f32 = x_22.x_GradientScale;
  u_xlat16 = (abs(x_301) * x_305);
  let x_307 : f32 = u_xlat15;
  let x_308 : f32 = u_xlat16;
  u_xlat15 = (x_307 * x_308);
  let x_310 : f32 = u_xlat15;
  u_xlat16 = (x_310 * 1.5f);
  let x_315 : f32 = x_22.x_PerspectiveFilter;
  u_xlat2.x = (-(x_315) + 1.0f);
  let x_319 : f32 = u_xlat16;
  let x_321 : f32 = u_xlat2.x;
  u_xlat16 = (x_319 * x_321);
  let x_323 : f32 = u_xlat15;
  let x_325 : f32 = u_xlat16;
  u_xlat15 = ((x_323 * 1.5f) + -(x_325));
  let x_330 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_334 : vec4<f32> = x_22.unity_WorldToObject[1i];
  let x_336 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : vec4<f32> = x_22.unity_WorldToObject[0i];
  let x_343 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_343.x, x_343.x, x_343.x)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = x_22.unity_WorldToObject[2i];
  let x_355 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_355.z, x_355.z, x_355.z)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat2;
  let x_366 : vec4<f32> = x_22.unity_WorldToObject[3i];
  let x_368 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : f32 = in_POSITION0.z;
  u_xlat0.z = x_372;
  let x_374 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec3<f32> = (-(vec3<f32>(x_374.x, x_374.y, x_374.z)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_384 : vec3<f32> = in_NORMAL0;
  let x_385 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_384, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_392 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_392)));
  let x_399 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_399 < 0.0f)));
  let x_403 : i32 = u_xlati5;
  let x_405 : i32 = u_xlati0;
  u_xlati0 = (-(x_403) + x_405);
  let x_407 : i32 = u_xlati0;
  u_xlat0.x = f32(x_407);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = in_NORMAL0;
  let x_413 : vec3<f32> = (vec3<f32>(x_410.x, x_410.x, x_410.x) * x_412);
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat2.x = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_423 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat2.y = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_430 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat2.z = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_437 : vec4<f32> = u_xlat2;
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_444 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_444);
  let x_447 : vec4<f32> = u_xlat0;
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_447.x, x_447.x, x_447.x, x_447.x) * vec4<f32>(x_449.x, x_449.y, x_449.z, x_449.z));
  let x_452 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_457 : vec3<f32> = (-(vec3<f32>(x_452.x, x_452.y, x_452.z)) + x_456);
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_467 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_467);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = u_xlat3;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472.x, x_472.x, x_472.x));
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat2;
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_477.x, x_477.y, x_477.w), vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_484 : f32 = u_xlat3.x;
  let x_486 : f32 = u_xlat15;
  let x_488 : f32 = u_xlat16;
  vs_TEXCOORD5.y = ((abs(x_484) * x_486) + x_488);
  let x_492 : vec4<f32> = in_TANGENT0;
  let x_495 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  let x_497 : vec3<f32> = (vec3<f32>(x_492.y, x_492.y, x_492.y) * vec3<f32>(x_495.y, x_495.z, x_495.x));
  let x_498 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_503 : vec4<f32> = in_TANGENT0;
  let x_506 : vec4<f32> = u_xlat3;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.y, x_501.z, x_501.x) * vec3<f32>(x_503.x, x_503.x, x_503.x)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_514 : vec4<f32> = in_TANGENT0;
  let x_517 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.y, x_512.z, x_512.x) * vec3<f32>(x_514.z, x_514.z, x_514.z)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat3;
  let x_524 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_527);
  let x_529 : f32 = u_xlat15;
  let x_531 : vec4<f32> = u_xlat3;
  let x_533 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_537 : vec4<f32> = u_xlat2;
  let x_539 : vec4<f32> = u_xlat3;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.w, x_537.x, x_537.y) * vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat2;
  let x_546 : vec4<f32> = u_xlat3;
  let x_549 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((vec3<f32>(x_544.y, x_544.w, x_544.x) * vec3<f32>(x_546.y, x_546.z, x_546.x)) + -(vec3<f32>(x_549.x, x_549.y, x_549.z)));
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_556 : f32 = in_TANGENT0.w;
  let x_559 : f32 = x_22.unity_WorldTransformParams.w;
  u_xlat15 = (x_556 * x_559);
  let x_561 : f32 = u_xlat15;
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_570;
  let x_573 : f32 = u_xlat2.x;
  vs_TEXCOORD2.z = x_573;
  let x_576 : f32 = u_xlat3.z;
  vs_TEXCOORD2.x = x_576;
  let x_579 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_579;
  let x_583 : f32 = u_xlat3.x;
  vs_TEXCOORD3.x = x_583;
  let x_587 : f32 = u_xlat3.y;
  vs_TEXCOORD4.x = x_587;
  let x_590 : f32 = u_xlat2.y;
  vs_TEXCOORD3.z = x_590;
  let x_593 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_593;
  let x_596 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_596;
  let x_599 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_599;
  let x_602 : f32 = u_xlat2.w;
  vs_TEXCOORD4.z = x_602;
  let x_605 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_605;
  let x_609 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_609;
  let x_610 : vec4<f32> = u_xlat0;
  let x_614 : vec4<f32> = x_22.x_EnvMatrix[1i];
  let x_616 : vec3<f32> = (vec3<f32>(x_610.y, x_610.y, x_610.y) * vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : vec4<f32> = x_22.x_EnvMatrix[0i];
  let x_622 : vec4<f32> = u_xlat0;
  let x_625 : vec4<f32> = u_xlat3;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622.x, x_622.x, x_622.x)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_627.z);
  let x_633 : vec4<f32> = x_22.x_EnvMatrix[2i];
  let x_635 : vec4<f32> = u_xlat0;
  let x_638 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_635.z, x_635.z, x_635.z)) + vec3<f32>(x_638.x, x_638.y, x_638.w));
  let x_641 : vec4<f32> = u_xlat1;
  let x_645 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat0 = (-(vec4<f32>(x_641.y, x_641.y, x_641.y, x_641.y)) + x_645);
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec4<f32> = u_xlat0;
  u_xlat3 = (vec4<f32>(x_647.y, x_647.y, x_647.y, x_647.y) * x_649);
  let x_651 : vec4<f32> = u_xlat0;
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_651 * x_652);
  let x_654 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat4 = (-(vec4<f32>(x_654.x, x_654.x, x_654.x, x_654.x)) + x_658);
  let x_660 : vec4<f32> = u_xlat1;
  let x_665 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_660.z, x_660.z, x_660.z, x_660.z)) + x_665);
  let x_667 : vec4<f32> = u_xlat4;
  let x_668 : vec4<f32> = u_xlat2;
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_667 * vec4<f32>(x_668.x, x_668.x, x_668.x, x_668.x)) + x_671);
  let x_673 : vec4<f32> = u_xlat4;
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_673 * x_674) + x_676);
  let x_678 : vec4<f32> = u_xlat1;
  let x_679 : vec4<f32> = u_xlat1;
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_678 * x_679) + x_681);
  let x_683 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = u_xlat2;
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_683 * vec4<f32>(x_684.w, x_684.w, x_684.z, x_684.w)) + x_687);
  let x_689 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_689, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_693 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_693);
  let x_695 : vec4<f32> = u_xlat0;
  let x_698 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat0 = ((x_695 * x_698) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_702);
  let x_704 : vec4<f32> = u_xlat1;
  let x_705 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_704 * x_705);
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_707, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_710 : vec4<f32> = u_xlat0;
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_710 * x_711);
  let x_713 : vec4<f32> = u_xlat0;
  let x_717 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_719 : vec3<f32> = (vec3<f32>(x_713.y, x_713.y, x_713.y) * vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_723 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_725 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec3<f32> = ((vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_725.x, x_725.x, x_725.x)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_734 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_736 : vec4<f32> = u_xlat0;
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec3<f32> = ((vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(x_736.z, x_736.z, x_736.z)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_747 : vec4<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat0;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747.w, x_747.w, x_747.w)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : f32 = u_xlat2.y;
  let x_758 : f32 = u_xlat2.y;
  u_xlat15 = (x_756 * x_758);
  let x_761 : f32 = u_xlat2.x;
  let x_763 : f32 = u_xlat2.x;
  let x_765 : f32 = u_xlat15;
  u_xlat15 = ((x_761 * x_763) + -(x_765));
  let x_768 : vec4<f32> = u_xlat2;
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_768.y, x_768.w, x_768.z, x_768.x) * x_770);
  let x_774 : vec4<f32> = x_22.unity_SHBr;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_774, x_775);
  let x_780 : vec4<f32> = x_22.unity_SHBg;
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_780, x_781);
  let x_786 : vec4<f32> = x_22.unity_SHBb;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_786, x_787);
  let x_792 : vec4<f32> = x_22.unity_SHC;
  let x_794 : f32 = u_xlat15;
  let x_797 : vec4<f32> = u_xlat2;
  let x_799 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_794, x_794, x_794)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_804 : vec4<f32> = u_xlat0;
  let x_806 : vec4<f32> = u_xlat1;
  vs_TEXCOORD7 = (vec3<f32>(x_804.x, x_804.y, x_804.z) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD5_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(6)
  vs_COLOR0_1 : vec4<f32>,
  @location(7)
  vs_TEXCOORD7_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0, vs_TEXCOORD7);
}

