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
  unity_WorldToLight : mat4x4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati5 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec2<f32>;

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
  let x_64 : vec4<f32> = u_xlat2;
  let x_68 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_68);
  let x_71 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_72 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x)) + x_75);
  let x_78 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_79 : vec4<f32> = u_xlat2;
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_91 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_92 : vec4<f32> = u_xlat2;
  let x_95 : vec4<f32> = u_xlat3;
  gl_Position = ((x_91 * vec4<f32>(x_92.w, x_92.w, x_92.w, x_92.w)) + x_95);
  let x_105 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_105 * 0.000244140625f);
  let x_108 : f32 = u_xlat15;
  u_xlat3.x = floor(x_108);
  let x_112 : f32 = u_xlat3.x;
  let x_117 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_112) * 4096.0f) + x_117);
  let x_120 : vec4<f32> = u_xlat3;
  let x_124 : vec2<f32> = (vec2<f32>(x_120.x, x_120.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_125.z, x_125.w);
  let x_128 : vec4<f32> = u_xlat3;
  let x_132 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_136 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_138 : vec2<f32> = ((vec2<f32>(x_128.x, x_128.y) * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(x_136.z, x_136.w));
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_139.x, x_139.y, x_138.x, x_138.y);
  let x_143 : vec4<f32> = u_xlat3;
  let x_147 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_151 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
  let x_155 : vec4<f32> = in_TEXCOORD0;
  let x_159 : vec4<f32> = x_19.x_MainTex_ST;
  let x_163 : vec4<f32> = x_19.x_MainTex_ST;
  let x_165 : vec2<f32> = ((vec2<f32>(x_155.x, x_155.y) * vec2<f32>(x_159.x, x_159.y)) + vec2<f32>(x_163.z, x_163.w));
  let x_166 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
  let x_169 : f32 = u_xlat2.y;
  let x_172 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_169 * x_172);
  let x_175 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_177 : f32 = u_xlat2.x;
  let x_179 : f32 = u_xlat15;
  u_xlat15 = ((x_175 * x_177) + x_179);
  let x_182 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_185 : f32 = u_xlat2.z;
  let x_187 : f32 = u_xlat15;
  u_xlat15 = ((x_182 * x_185) + x_187);
  let x_190 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_192 : f32 = u_xlat2.w;
  let x_194 : f32 = u_xlat15;
  u_xlat15 = ((x_190 * x_192) + x_194);
  let x_197 : vec4<f32> = x_19.x_ScreenParams;
  let x_201 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_203 : vec2<f32> = (vec2<f32>(x_197.y, x_197.y) * vec2<f32>(x_201.x, x_201.y));
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_204.z, x_204.w);
  let x_207 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_210 : vec4<f32> = x_19.x_ScreenParams;
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec2<f32> = ((vec2<f32>(x_207.x, x_207.y) * vec2<f32>(x_210.x, x_210.x)) + vec2<f32>(x_213.x, x_213.y));
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat2;
  let x_222 : f32 = x_19.x_ScaleX;
  let x_225 : f32 = x_19.x_ScaleY;
  let x_227 : vec2<f32> = (vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_222, x_225));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_230 : f32 = u_xlat15;
  let x_232 : vec4<f32> = u_xlat2;
  let x_234 : vec2<f32> = (vec2<f32>(x_230, x_230) / vec2<f32>(x_232.x, x_232.y));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_237.x, x_237.y), vec2<f32>(x_239.x, x_239.y));
  let x_242 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_242);
  let x_245 : f32 = in_TEXCOORD1.y;
  let x_249 : f32 = x_19.x_GradientScale;
  u_xlat2.x = (abs(x_245) * x_249);
  let x_255 : f32 = x_19.x_Sharpness;
  u_xlat7 = (x_255 + 1.0f);
  let x_258 : f32 = u_xlat7;
  let x_260 : f32 = u_xlat2.x;
  u_xlat2.x = (x_258 * x_260);
  let x_263 : f32 = u_xlat15;
  let x_265 : f32 = u_xlat2.x;
  u_xlat7 = (x_263 * x_265);
  let x_270 : f32 = x_19.x_PerspectiveFilter;
  u_xlat12 = (-(x_270) + 1.0f);
  let x_273 : f32 = u_xlat12;
  let x_274 : f32 = u_xlat7;
  u_xlat7 = (x_273 * x_274);
  let x_276 : f32 = u_xlat15;
  let x_278 : f32 = u_xlat2.x;
  let x_280 : f32 = u_xlat7;
  u_xlat15 = ((x_276 * x_278) + -(x_280));
  let x_285 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_288 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_290 : vec3<f32> = (vec3<f32>(x_285.y, x_285.y, x_285.y) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_291.y, x_290.y, x_290.z);
  let x_294 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_297 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_300 : vec4<f32> = u_xlat2;
  let x_302 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_297.x, x_297.x, x_297.x)) + vec3<f32>(x_300.x, x_300.z, x_300.w));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_303.y, x_302.y, x_302.z);
  let x_306 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_309 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_309.z, x_309.z, x_309.z)) + vec3<f32>(x_312.x, x_312.z, x_312.w));
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_314.x, x_315.y, x_314.y, x_314.z);
  let x_317 : vec4<f32> = u_xlat2;
  let x_320 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_322 : vec3<f32> = (vec3<f32>(x_317.x, x_317.z, x_317.w) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_323.y, x_322.y, x_322.z);
  let x_326 : f32 = in_POSITION0.z;
  u_xlat0.z = x_326;
  let x_328 : vec3<f32> = u_xlat0;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat0 = (-(x_328) + vec3<f32>(x_330.x, x_330.z, x_330.w));
  let x_335 : vec3<f32> = in_NORMAL0;
  let x_336 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_335, x_336);
  let x_343 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_343)));
  let x_351 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_351 < 0.0f)));
  let x_355 : i32 = u_xlati5;
  let x_357 : i32 = u_xlati0;
  u_xlati0 = (-(x_355) + x_357);
  let x_359 : i32 = u_xlati0;
  u_xlat0.x = f32(x_359);
  let x_362 : vec3<f32> = u_xlat0;
  let x_364 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_366 : vec3<f32> = u_xlat0;
  let x_368 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_366, vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_372 : vec3<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_372, vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_378 : vec3<f32> = u_xlat0;
  let x_380 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_378, vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_384 : vec4<f32> = u_xlat3;
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_391);
  let x_394 : vec3<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_394.x, x_394.x, x_394.x) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_400 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_402 : vec4<f32> = in_POSITION0;
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.w, x_402.w, x_402.w)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_407.x, x_408.y, x_407.y, x_407.z);
  let x_411 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_412 : vec4<f32> = in_POSITION0;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_411 * vec4<f32>(x_412.w, x_412.w, x_412.w, x_412.w)) + x_415);
  let x_417 : vec4<f32> = u_xlat2;
  let x_421 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_422 : vec3<f32> = (-(vec3<f32>(x_417.x, x_417.z, x_417.w)) + x_421);
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_427 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_427.x, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat3;
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_436 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_436);
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat3;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.x, x_439.x) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_444.y, x_443.y, x_443.z);
  let x_446 : vec3<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_446.y, x_446.z, x_446.x), vec3<f32>(x_448.x, x_448.z, x_448.w));
  let x_454 : f32 = u_xlat2.x;
  let x_456 : f32 = u_xlat15;
  let x_458 : f32 = u_xlat7;
  vs_TEXCOORD6.y = ((abs(x_454) * x_456) + x_458);
  let x_465 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_465);
  let x_467 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_467);
  let x_471 : f32 = x_19.x_WeightNormal;
  let x_475 : f32 = x_19.x_WeightBold;
  u_xlat2.x = (-(x_471) + x_475);
  let x_478 : f32 = u_xlat15;
  let x_480 : f32 = u_xlat2.x;
  let x_483 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_478 * x_480) + x_483);
  let x_485 : f32 = u_xlat15;
  let x_490 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_485 * 0.25f) + x_490);
  let x_492 : f32 = u_xlat15;
  let x_495 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_492 * x_495);
  let x_497 : f32 = u_xlat15;
  vs_TEXCOORD6.x = (x_497 * 0.5f);
  let x_503 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_503;
  let x_506 : vec4<f32> = in_TANGENT0;
  let x_509 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_511 : vec3<f32> = (vec3<f32>(x_506.y, x_506.y, x_506.y) * vec3<f32>(x_509.y, x_509.z, x_509.x));
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_515 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_517 : vec4<f32> = in_TANGENT0;
  let x_520 : vec4<f32> = u_xlat2;
  let x_522 : vec3<f32> = ((vec3<f32>(x_515.y, x_515.z, x_515.x) * vec3<f32>(x_517.x, x_517.x, x_517.x)) + vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_526 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_528 : vec4<f32> = in_TANGENT0;
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.y, x_526.z, x_526.x) * vec3<f32>(x_528.z, x_528.z, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_541);
  let x_543 : f32 = u_xlat15;
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec3<f32> = (vec3<f32>(x_543, x_543, x_543) * vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : vec3<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_551 * vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec3<f32> = u_xlat0;
  let x_557 : vec4<f32> = u_xlat2;
  let x_560 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_555.z, x_555.x, x_555.y) * vec3<f32>(x_557.y, x_557.z, x_557.x)) + -(x_560));
  let x_565 : f32 = in_TANGENT0.w;
  let x_568 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat5 = (x_565 * x_568);
  let x_570 : f32 = u_xlat5;
  let x_572 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_570, x_570, x_570) * x_572);
  let x_575 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_575;
  let x_578 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_578;
  let x_582 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_582;
  let x_586 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_586;
  let x_589 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_589;
  let x_592 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_592;
  let x_595 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_595;
  let x_598 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_598;
  let x_602 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_602;
  let x_603 : vec4<f32> = u_xlat3;
  let x_607 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_603.y, x_603.y, x_603.y) * vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_611 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_613 : vec4<f32> = u_xlat3;
  let x_616 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613.x, x_613.x, x_613.x)) + x_616);
  let x_620 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_622 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622.z, x_622.z, x_622.z)) + x_625);
  let x_627 : vec4<f32> = u_xlat1;
  let x_631 : vec4<f32> = x_19.unity_WorldToLight[1i];
  let x_633 : vec2<f32> = (vec2<f32>(x_627.y, x_627.y) * vec2<f32>(x_631.x, x_631.y));
  let x_634 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_633.x, x_633.y, x_634.z);
  let x_637 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_639 : vec4<f32> = u_xlat1;
  let x_642 : vec3<f32> = u_xlat0;
  let x_644 : vec2<f32> = ((vec2<f32>(x_637.x, x_637.y) * vec2<f32>(x_639.x, x_639.x)) + vec2<f32>(x_642.x, x_642.y));
  let x_645 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_644.x, x_644.y, x_645.z);
  let x_648 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_650 : vec4<f32> = u_xlat1;
  let x_653 : vec3<f32> = u_xlat0;
  let x_655 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.y) * vec2<f32>(x_650.z, x_650.z)) + vec2<f32>(x_653.x, x_653.y));
  let x_656 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_655.x, x_655.y, x_656.z);
  let x_661 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_663 : vec4<f32> = u_xlat1;
  let x_666 : vec3<f32> = u_xlat0;
  vs_TEXCOORD8 = ((vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_663.w, x_663.w)) + vec2<f32>(x_666.x, x_666.y));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD6_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(7)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}


