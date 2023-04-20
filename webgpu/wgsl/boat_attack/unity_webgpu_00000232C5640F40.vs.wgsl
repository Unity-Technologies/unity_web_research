diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ScreenParams : vec4<f32>,
  /* @offset(32) */
  unity_4LightPosX0 : vec4<f32>,
  /* @offset(48) */
  unity_4LightPosY0 : vec4<f32>,
  /* @offset(64) */
  unity_4LightPosZ0 : vec4<f32>,
  /* @offset(80) */
  unity_4LightAtten0 : vec4<f32>,
  /* @offset(96) */
  unity_LightColor : Arr,
  /* @offset(224) */
  unity_SHBr : vec4<f32>,
  /* @offset(240) */
  unity_SHBg : vec4<f32>,
  /* @offset(256) */
  unity_SHBb : vec4<f32>,
  /* @offset(272) */
  unity_SHC : vec4<f32>,
  /* @offset(288) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(352) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(416) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(432) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(496) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(560) */
  x_FaceDilate : f32,
  /* @offset(576) */
  x_EnvMatrix : mat4x4<f32>,
  /* @offset(640) */
  x_WeightNormal : f32,
  /* @offset(644) */
  x_WeightBold : f32,
  /* @offset(648) */
  x_ScaleRatioA : f32,
  /* @offset(652) */
  x_VertexOffsetX : f32,
  /* @offset(656) */
  x_VertexOffsetY : f32,
  /* @offset(660) */
  x_GradientScale : f32,
  /* @offset(664) */
  x_ScaleX : f32,
  /* @offset(668) */
  x_ScaleY : f32,
  /* @offset(672) */
  x_PerspectiveFilter : f32,
  /* @offset(676) */
  x_Sharpness : f32,
  /* @offset(688) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(704) */
  x_FaceTex_ST : vec4<f32>,
  /* @offset(720) */
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_22 : VGlobals;

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

var<private> u_xlat7 : vec3<f32>;

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
  let x_309 : f32 = x_22.x_Sharpness;
  u_xlat2.x = (x_309 + 1.0f);
  let x_312 : f32 = u_xlat16;
  let x_314 : f32 = u_xlat2.x;
  u_xlat16 = (x_312 * x_314);
  let x_316 : f32 = u_xlat15;
  let x_317 : f32 = u_xlat16;
  u_xlat2.x = (x_316 * x_317);
  let x_324 : f32 = x_22.x_PerspectiveFilter;
  u_xlat7.x = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat7.x;
  let x_331 : f32 = u_xlat2.x;
  u_xlat2.x = (x_329 * x_331);
  let x_334 : f32 = u_xlat15;
  let x_335 : f32 = u_xlat16;
  let x_338 : f32 = u_xlat2.x;
  u_xlat15 = ((x_334 * x_335) + -(x_338));
  let x_343 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_347 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat7 = (vec3<f32>(x_343.y, x_343.y, x_343.y) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = x_22.unity_WorldToObject[0i];
  let x_354 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_357 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_354.x, x_354.x, x_354.x)) + x_357);
  let x_360 : vec4<f32> = x_22.unity_WorldToObject[2i];
  let x_363 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_366 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_363.z, x_363.z, x_363.z)) + x_366);
  let x_368 : vec3<f32> = u_xlat7;
  let x_370 : vec4<f32> = x_22.unity_WorldToObject[3i];
  u_xlat7 = (x_368 + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : f32 = in_POSITION0.z;
  u_xlat0.z = x_374;
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec3<f32> = u_xlat7;
  let x_380 : vec3<f32> = (-(vec3<f32>(x_376.x, x_376.y, x_376.z)) + x_379);
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_385 : vec3<f32> = in_NORMAL0;
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_385, vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_393 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_393)));
  let x_400 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_400 < 0.0f)));
  let x_404 : i32 = u_xlati5;
  let x_406 : i32 = u_xlati0;
  u_xlati0 = (-(x_404) + x_406);
  let x_408 : i32 = u_xlati0;
  u_xlat0.x = f32(x_408);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = in_NORMAL0;
  let x_414 : vec3<f32> = (vec3<f32>(x_411.x, x_411.x, x_411.x) * x_413);
  let x_415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat3.x = dot(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat3.y = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat3.z = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_438 : vec4<f32> = u_xlat3;
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_445 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_445);
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_448.x, x_448.x, x_448.x, x_448.x) * vec4<f32>(x_450.x, x_450.y, x_450.z, x_450.z));
  let x_453 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_458 : vec3<f32> = (-(vec3<f32>(x_453.x, x_453.y, x_453.z)) + x_457);
  let x_459 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat16 = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_466);
  let x_468 : vec4<f32> = u_xlat0;
  let x_470 : f32 = u_xlat16;
  u_xlat7 = (vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_470, x_470, x_470));
  let x_473 : vec4<f32> = u_xlat3;
  let x_475 : vec3<f32> = u_xlat7;
  u_xlat16 = dot(vec3<f32>(x_473.x, x_473.y, x_473.w), x_475);
  let x_477 : f32 = u_xlat16;
  let x_479 : f32 = u_xlat15;
  let x_482 : f32 = u_xlat2.x;
  vs_TEXCOORD5.y = ((abs(x_477) * x_479) + x_482);
  let x_486 : vec4<f32> = in_TANGENT0;
  let x_489 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  let x_491 : vec3<f32> = (vec3<f32>(x_486.y, x_486.y, x_486.y) * vec3<f32>(x_489.y, x_489.z, x_489.x));
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_497 : vec4<f32> = in_TANGENT0;
  let x_500 : vec4<f32> = u_xlat2;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.y, x_495.z, x_495.x) * vec3<f32>(x_497.x, x_497.x, x_497.x)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_508 : vec4<f32> = in_TANGENT0;
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.y, x_506.z, x_506.x) * vec3<f32>(x_508.z, x_508.z, x_508.z)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat2;
  let x_518 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_521);
  let x_523 : f32 = u_xlat15;
  let x_525 : vec4<f32> = u_xlat2;
  let x_527 : vec3<f32> = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_533.w, x_533.x, x_533.y));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat3;
  let x_540 : vec4<f32> = u_xlat2;
  let x_543 : vec4<f32> = u_xlat4;
  let x_546 : vec3<f32> = ((vec3<f32>(x_538.y, x_538.w, x_538.x) * vec3<f32>(x_540.y, x_540.z, x_540.x)) + -(vec3<f32>(x_543.x, x_543.y, x_543.z)));
  let x_547 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : f32 = in_TANGENT0.w;
  let x_553 : f32 = x_22.unity_WorldTransformParams.w;
  u_xlat15 = (x_550 * x_553);
  let x_555 : f32 = u_xlat15;
  let x_557 : vec4<f32> = u_xlat4;
  let x_559 : vec3<f32> = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_564 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_564;
  let x_567 : f32 = u_xlat3.x;
  vs_TEXCOORD2.z = x_567;
  let x_570 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_570;
  let x_573 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_573;
  let x_577 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_577;
  let x_581 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_581;
  let x_584 : f32 = u_xlat3.y;
  vs_TEXCOORD3.z = x_584;
  let x_587 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_587;
  let x_590 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_590;
  let x_593 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_593;
  let x_596 : f32 = u_xlat3.w;
  vs_TEXCOORD4.z = x_596;
  let x_599 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_599;
  let x_603 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_603;
  let x_604 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = x_22.x_EnvMatrix[1i];
  let x_610 : vec3<f32> = (vec3<f32>(x_604.y, x_604.y, x_604.y) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : vec4<f32> = x_22.x_EnvMatrix[0i];
  let x_616 : vec4<f32> = u_xlat0;
  let x_619 : vec4<f32> = u_xlat2;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616.x, x_616.x, x_616.x)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_621.z);
  let x_626 : vec4<f32> = x_22.x_EnvMatrix[2i];
  let x_628 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(x_628.z, x_628.z, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.w));
  let x_634 : vec4<f32> = u_xlat1;
  let x_638 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat0 = (-(vec4<f32>(x_634.y, x_634.y, x_634.y, x_634.y)) + x_638);
  let x_640 : vec4<f32> = u_xlat3;
  let x_642 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_640.y, x_640.y, x_640.y, x_640.y) * x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_645 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_644 * x_645);
  let x_647 : vec4<f32> = u_xlat1;
  let x_651 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat4 = (-(vec4<f32>(x_647.x, x_647.x, x_647.x, x_647.x)) + x_651);
  let x_653 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_653.z, x_653.z, x_653.z, x_653.z)) + x_658);
  let x_660 : vec4<f32> = u_xlat4;
  let x_661 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_660 * vec4<f32>(x_661.x, x_661.x, x_661.x, x_661.x)) + x_664);
  let x_666 : vec4<f32> = u_xlat4;
  let x_667 : vec4<f32> = u_xlat4;
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_666 * x_667) + x_669);
  let x_671 : vec4<f32> = u_xlat1;
  let x_672 : vec4<f32> = u_xlat1;
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_671 * x_672) + x_674);
  let x_676 : vec4<f32> = u_xlat1;
  let x_677 : vec4<f32> = u_xlat3;
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_676 * vec4<f32>(x_677.w, x_677.w, x_677.z, x_677.w)) + x_680);
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_682, vec4<f32>(0.00000099999999747524f, 0.00000099999999747524f, 0.00000099999999747524f, 0.00000099999999747524f));
  let x_686 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_686);
  let x_688 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat0 = ((x_688 * x_691) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_695 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_695);
  let x_697 : vec4<f32> = u_xlat1;
  let x_698 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_697 * x_698);
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_700, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_703 : vec4<f32> = u_xlat0;
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_703 * x_704);
  let x_706 : vec4<f32> = u_xlat0;
  let x_710 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_712 : vec3<f32> = (vec3<f32>(x_706.y, x_706.y, x_706.y) * vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_716 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_718 : vec4<f32> = u_xlat0;
  let x_721 : vec4<f32> = u_xlat1;
  let x_723 : vec3<f32> = ((vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x)) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_727 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_729 : vec4<f32> = u_xlat0;
  let x_732 : vec4<f32> = u_xlat1;
  let x_734 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729.z, x_729.z, x_729.z)) + vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_738 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_740 : vec4<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat0;
  let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740.w, x_740.w, x_740.w)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_749 : f32 = u_xlat3.y;
  let x_751 : f32 = u_xlat3.y;
  u_xlat15 = (x_749 * x_751);
  let x_754 : f32 = u_xlat3.x;
  let x_756 : f32 = u_xlat3.x;
  let x_758 : f32 = u_xlat15;
  u_xlat15 = ((x_754 * x_756) + -(x_758));
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_761.y, x_761.w, x_761.z, x_761.x) * x_763);
  let x_767 : vec4<f32> = x_22.unity_SHBr;
  let x_768 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_767, x_768);
  let x_773 : vec4<f32> = x_22.unity_SHBg;
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_773, x_774);
  let x_779 : vec4<f32> = x_22.unity_SHBb;
  let x_780 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_779, x_780);
  let x_785 : vec4<f32> = x_22.unity_SHC;
  let x_787 : f32 = u_xlat15;
  let x_790 : vec4<f32> = u_xlat2;
  let x_792 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787, x_787, x_787)) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_797 : vec4<f32> = u_xlat0;
  let x_799 : vec4<f32> = u_xlat1;
  vs_TEXCOORD7 = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(x_799.x, x_799.y, x_799.z));
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


