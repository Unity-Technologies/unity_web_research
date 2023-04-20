diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ScreenParams : vec4<f32>,
  /* @offset(32) */
  unity_SHBr : vec4<f32>,
  /* @offset(48) */
  unity_SHBg : vec4<f32>,
  /* @offset(64) */
  unity_SHBb : vec4<f32>,
  /* @offset(80) */
  unity_SHC : vec4<f32>,
  /* @offset(96) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(160) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(224) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(240) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(304) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(368) */
  x_FaceDilate : f32,
  /* @offset(384) */
  x_EnvMatrix : mat4x4<f32>,
  /* @offset(448) */
  x_WeightNormal : f32,
  /* @offset(452) */
  x_WeightBold : f32,
  /* @offset(456) */
  x_ScaleRatioA : f32,
  /* @offset(460) */
  x_VertexOffsetX : f32,
  /* @offset(464) */
  x_VertexOffsetY : f32,
  /* @offset(468) */
  x_GradientScale : f32,
  /* @offset(472) */
  x_ScaleX : f32,
  /* @offset(476) */
  x_ScaleY : f32,
  /* @offset(480) */
  x_PerspectiveFilter : f32,
  /* @offset(484) */
  x_Sharpness : f32,
  /* @offset(496) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(512) */
  x_FaceTex_ST : vec4<f32>,
  /* @offset(528) */
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD8 : f32;

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

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

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
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_30.z, x_30.w);
  let x_33 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_39);
  let x_43 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.x, x_44.x, x_44.x, x_44.x)) + x_47);
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
  vs_TEXCOORD8 = x_116;
  let x_122 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_122 * 0.000244140625f);
  let x_125 : f32 = u_xlat15;
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
  let x_190 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_190);
  let x_192 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_192);
  let x_198 : f32 = x_19.x_WeightNormal;
  let x_202 : f32 = x_19.x_WeightBold;
  u_xlat16 = (-(x_198) + x_202);
  let x_204 : f32 = u_xlat15;
  let x_205 : f32 = u_xlat16;
  let x_208 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_204 * x_205) + x_208);
  let x_210 : f32 = u_xlat15;
  let x_215 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_210 * 0.25f) + x_215);
  let x_217 : f32 = u_xlat15;
  let x_220 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_217 * x_220);
  let x_223 : f32 = u_xlat15;
  vs_TEXCOORD5.x = (x_223 * 0.5f);
  let x_228 : f32 = u_xlat2.y;
  let x_231 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_228 * x_231);
  let x_234 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_236 : f32 = u_xlat2.x;
  let x_238 : f32 = u_xlat15;
  u_xlat15 = ((x_234 * x_236) + x_238);
  let x_241 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_243 : f32 = u_xlat2.z;
  let x_245 : f32 = u_xlat15;
  u_xlat15 = ((x_241 * x_243) + x_245);
  let x_248 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_250 : f32 = u_xlat2.w;
  let x_252 : f32 = u_xlat15;
  u_xlat15 = ((x_248 * x_250) + x_252);
  let x_255 : vec4<f32> = x_19.x_ScreenParams;
  let x_259 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_261 : vec2<f32> = (vec2<f32>(x_255.y, x_255.y) * vec2<f32>(x_259.x, x_259.y));
  let x_262 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
  let x_265 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_268 : vec4<f32> = x_19.x_ScreenParams;
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec2<f32> = ((vec2<f32>(x_265.x, x_265.y) * vec2<f32>(x_268.x, x_268.x)) + vec2<f32>(x_271.x, x_271.y));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat2;
  let x_280 : f32 = x_19.x_ScaleX;
  let x_283 : f32 = x_19.x_ScaleY;
  let x_285 : vec2<f32> = (vec2<f32>(x_276.x, x_276.y) * vec2<f32>(x_280, x_283));
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_285.x, x_285.y, x_286.z, x_286.w);
  let x_288 : f32 = u_xlat15;
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec2<f32> = (vec2<f32>(x_288, x_288) / vec2<f32>(x_290.x, x_290.y));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat2;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_295.x, x_295.y), vec2<f32>(x_297.x, x_297.y));
  let x_300 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_300);
  let x_303 : f32 = in_TEXCOORD1.y;
  let x_307 : f32 = x_19.x_GradientScale;
  u_xlat16 = (abs(x_303) * x_307);
  let x_311 : f32 = x_19.x_Sharpness;
  u_xlat2.x = (x_311 + 1.0f);
  let x_314 : f32 = u_xlat16;
  let x_316 : f32 = u_xlat2.x;
  u_xlat16 = (x_314 * x_316);
  let x_318 : f32 = u_xlat15;
  let x_319 : f32 = u_xlat16;
  u_xlat2.x = (x_318 * x_319);
  let x_326 : f32 = x_19.x_PerspectiveFilter;
  u_xlat7.x = (-(x_326) + 1.0f);
  let x_331 : f32 = u_xlat7.x;
  let x_333 : f32 = u_xlat2.x;
  u_xlat2.x = (x_331 * x_333);
  let x_336 : f32 = u_xlat15;
  let x_337 : f32 = u_xlat16;
  let x_340 : f32 = u_xlat2.x;
  u_xlat15 = ((x_336 * x_337) + -(x_340));
  let x_345 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_349 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat7 = (vec3<f32>(x_345.y, x_345.y, x_345.y) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_353 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_356 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_359 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + x_359);
  let x_362 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_365 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_368 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + x_368);
  let x_370 : vec3<f32> = u_xlat7;
  let x_372 : vec4<f32> = x_19.unity_WorldToObject[3i];
  u_xlat7 = (x_370 + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_376 : f32 = in_POSITION0.z;
  u_xlat0.z = x_376;
  let x_378 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = u_xlat7;
  let x_382 : vec3<f32> = (-(vec3<f32>(x_378.x, x_378.y, x_378.z)) + x_381);
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_387 : vec3<f32> = in_NORMAL0;
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_387, vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_395 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_395)));
  let x_402 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_402 < 0.0f)));
  let x_406 : i32 = u_xlati5;
  let x_408 : i32 = u_xlati0;
  u_xlati0 = (-(x_406) + x_408);
  let x_410 : i32 = u_xlati0;
  u_xlat0.x = f32(x_410);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = in_NORMAL0;
  let x_416 : vec3<f32> = (vec3<f32>(x_413.x, x_413.x, x_413.x) * x_415);
  let x_417 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.y = dot(vec3<f32>(x_426.x, x_426.y, x_426.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_433 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.z = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_440 : vec4<f32> = u_xlat3;
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_447 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_447);
  let x_450 : vec4<f32> = u_xlat0;
  let x_452 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_450.x, x_450.x, x_450.x, x_450.x) * vec4<f32>(x_452.x, x_452.y, x_452.z, x_452.z));
  let x_455 : vec4<f32> = u_xlat1;
  let x_459 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_460 : vec3<f32> = (-(vec3<f32>(x_455.x, x_455.y, x_455.z)) + x_459);
  let x_461 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat0;
  let x_465 : vec4<f32> = u_xlat0;
  u_xlat16 = dot(vec3<f32>(x_463.x, x_463.y, x_463.z), vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_468);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : f32 = u_xlat16;
  u_xlat7 = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472, x_472, x_472));
  let x_475 : vec4<f32> = u_xlat3;
  let x_477 : vec3<f32> = u_xlat7;
  u_xlat16 = dot(vec3<f32>(x_475.x, x_475.y, x_475.w), x_477);
  let x_479 : f32 = u_xlat16;
  let x_481 : f32 = u_xlat15;
  let x_484 : f32 = u_xlat2.x;
  vs_TEXCOORD5.y = ((abs(x_479) * x_481) + x_484);
  let x_489 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_489;
  let x_492 : vec4<f32> = in_TANGENT0;
  let x_495 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_497 : vec3<f32> = (vec3<f32>(x_492.y, x_492.y, x_492.y) * vec3<f32>(x_495.y, x_495.z, x_495.x));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_503 : vec4<f32> = in_TANGENT0;
  let x_506 : vec4<f32> = u_xlat2;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.y, x_501.z, x_501.x) * vec3<f32>(x_503.x, x_503.x, x_503.x)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_514 : vec4<f32> = in_TANGENT0;
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.y, x_512.z, x_512.x) * vec3<f32>(x_514.z, x_514.z, x_514.z)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat2;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_527);
  let x_529 : f32 = u_xlat15;
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_537 : vec4<f32> = u_xlat2;
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_539.w, x_539.x, x_539.y));
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat2;
  let x_547 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_542.y, x_542.w, x_542.x) * vec3<f32>(x_544.y, x_544.z, x_544.x)) + -(x_547));
  let x_551 : f32 = in_TANGENT0.w;
  let x_554 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat15 = (x_551 * x_554);
  let x_556 : f32 = u_xlat15;
  let x_558 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_556, x_556, x_556) * x_558);
  let x_561 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_561;
  let x_564 : f32 = u_xlat3.x;
  vs_TEXCOORD2.z = x_564;
  let x_567 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_567;
  let x_571 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_571;
  let x_575 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_575;
  let x_578 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_578;
  let x_581 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_581;
  let x_584 : f32 = u_xlat3.y;
  vs_TEXCOORD3.z = x_584;
  let x_587 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_587;
  let x_590 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_590;
  let x_593 : f32 = u_xlat3.w;
  vs_TEXCOORD4.z = x_593;
  let x_597 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_597;
  let x_598 : vec4<f32> = u_xlat0;
  let x_602 : vec4<f32> = x_19.x_EnvMatrix[1i];
  let x_604 : vec3<f32> = (vec3<f32>(x_598.y, x_598.y, x_598.y) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_608 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_610 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = u_xlat1;
  let x_615 : vec3<f32> = ((vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(x_610.x, x_610.x, x_610.x)) + vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_615.z);
  let x_620 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_622 : vec4<f32> = u_xlat0;
  let x_625 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622.z, x_622.z, x_622.z)) + vec3<f32>(x_625.x, x_625.y, x_625.w));
  let x_629 : f32 = u_xlat3.y;
  let x_631 : f32 = u_xlat3.y;
  u_xlat0.x = (x_629 * x_631);
  let x_635 : f32 = u_xlat3.x;
  let x_637 : f32 = u_xlat3.x;
  let x_640 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_635 * x_637) + -(x_640));
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_644.y, x_644.w, x_644.z, x_644.x) * x_646);
  let x_649 : vec4<f32> = x_19.unity_SHBr;
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_649, x_650);
  let x_654 : vec4<f32> = x_19.unity_SHBg;
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_654, x_655);
  let x_660 : vec4<f32> = x_19.unity_SHBb;
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_660, x_661);
  let x_668 : vec4<f32> = x_19.unity_SHC;
  let x_670 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = u_xlat2;
  vs_TEXCOORD7 = ((vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(x_670.x, x_670.x, x_670.x)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(7)
  vs_TEXCOORD8_1 : f32,
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
  @location(8)
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
  return main_out(gl_Position, vs_TEXCOORD8, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0, vs_TEXCOORD7);
}


