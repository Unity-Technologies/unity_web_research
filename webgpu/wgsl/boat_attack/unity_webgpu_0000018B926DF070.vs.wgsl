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
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(224) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(288) */
  x_FaceColor : vec4<f32>,
  /* @offset(304) */
  x_FaceDilate : f32,
  /* @offset(308) */
  x_OutlineSoftness : f32,
  /* @offset(320) */
  x_OutlineColor : vec4<f32>,
  /* @offset(336) */
  x_OutlineWidth : f32,
  /* @offset(340) */
  x_UnderlayOffsetX : f32,
  /* @offset(344) */
  x_UnderlayOffsetY : f32,
  /* @offset(348) */
  x_UnderlayDilate : f32,
  /* @offset(352) */
  x_UnderlaySoftness : f32,
  /* @offset(356) */
  x_WeightNormal : f32,
  /* @offset(360) */
  x_WeightBold : f32,
  /* @offset(364) */
  x_ScaleRatioA : f32,
  /* @offset(368) */
  x_ScaleRatioC : f32,
  /* @offset(372) */
  x_VertexOffsetX : f32,
  /* @offset(376) */
  x_VertexOffsetY : f32,
  /* @offset(384) */
  x_ClipRect : vec4<f32>,
  /* @offset(400) */
  x_MaskSoftnessX : f32,
  /* @offset(404) */
  x_MaskSoftnessY : f32,
  /* @offset(408) */
  x_TextureWidth : f32,
  /* @offset(412) */
  x_TextureHeight : f32,
  /* @offset(416) */
  x_GradientScale : f32,
  /* @offset(420) */
  x_ScaleX : f32,
  /* @offset(424) */
  x_ScaleY : f32,
  /* @offset(428) */
  x_PerspectiveFilter : f32,
  /* @offset(432) */
  x_Sharpness : f32,
}

var<private> u_xlat0 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat14 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb21 : bool;

var<private> vs_COLOR1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_364 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  u_xlat0 = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_24, x_27));
  let x_32 : vec2<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_32.y, x_32.y, x_32.y, x_32.y) * x_38);
  let x_42 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_43 : vec2<f32> = u_xlat0;
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_42 * vec4<f32>(x_43.x, x_43.x, x_43.x, x_43.x)) + x_46);
  let x_49 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_49 * vec4<f32>(x_50.z, x_50.z, x_50.z, x_50.z)) + x_53);
  let x_56 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_56 + x_59);
  let x_62 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.w, x_64.w, x_64.w)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat1;
  let x_77 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_78 : vec3<f32> = (-(vec3<f32>(x_72.x, x_72.y, x_72.z)) + x_77);
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_86 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_82.y, x_82.y, x_82.y, x_82.y) * x_86);
  let x_89 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_90 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_89 * vec4<f32>(x_90.x, x_90.x, x_90.x, x_90.x)) + x_93);
  let x_96 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_97 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_96 * vec4<f32>(x_97.z, x_97.z, x_97.z, x_97.z)) + x_100);
  let x_103 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_103 * vec4<f32>(x_104.w, x_104.w, x_104.w, x_104.w)) + x_107);
  let x_115 : vec4<f32> = u_xlat2;
  gl_Position = x_115;
  let x_122 : f32 = x_19.x_FaceColor.w;
  vs_COLOR0.w = x_122;
  let x_126 : vec4<f32> = in_COLOR0;
  let x_127 : vec3<f32> = vec3<f32>(x_126.x, x_126.y, x_126.z);
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  u_xlat3.w = 1.0f;
  let x_134 : vec4<f32> = u_xlat3;
  let x_136 : vec4<f32> = x_19.x_FaceColor;
  u_xlat4 = (x_134 * x_136);
  let x_138 : vec4<f32> = u_xlat4;
  let x_140 : vec4<f32> = u_xlat4;
  let x_142 : vec3<f32> = (vec3<f32>(x_138.w, x_138.w, x_138.w) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = vec3<f32>(x_145.x, x_145.y, x_145.z);
  let x_147 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = -(vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : f32 = u_xlat4.w;
  u_xlat5.w = -(x_156);
  let x_162 : vec4<f32> = x_19.x_OutlineColor;
  let x_165 : vec4<f32> = x_19.x_OutlineColor;
  let x_167 : vec3<f32> = (vec3<f32>(x_162.w, x_162.w, x_162.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : f32 = x_19.x_OutlineColor.w;
  u_xlat6.w = x_171;
  let x_173 : vec4<f32> = u_xlat5;
  let x_174 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_173 + x_174);
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_182);
  let x_184 : f32 = u_xlat14;
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_193 : vec3<f32> = in_NORMAL0;
  let x_195 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_193, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_202 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_200, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec3<f32> = in_NORMAL0;
  let x_208 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_206, vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec3<f32>(x_213.x, x_213.y, x_213.z), vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_218);
  let x_220 : f32 = u_xlat14;
  let x_222 : vec4<f32> = u_xlat2;
  let x_224 : vec3<f32> = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec4<f32> = x_19.x_ScreenParams;
  let x_237 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_239 : vec2<f32> = (vec2<f32>(x_233.y, x_233.y) * vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_240.z, x_240.w);
  let x_243 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_246 : vec4<f32> = x_19.x_ScreenParams;
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec2<f32> = ((vec2<f32>(x_243.x, x_243.y) * vec2<f32>(x_246.x, x_246.x)) + vec2<f32>(x_249.x, x_249.y));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_259 : f32 = x_19.x_ScaleX;
  let x_262 : f32 = x_19.x_ScaleY;
  let x_264 : vec2<f32> = (abs(vec2<f32>(x_254.x, x_254.y)) * vec2<f32>(x_259, x_262));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.w, x_267.w) / vec2<f32>(x_269.x, x_269.y));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_275.x, x_275.y), vec2<f32>(x_277.x, x_277.y));
  let x_282 : f32 = x_19.x_MaskSoftnessX;
  let x_285 : f32 = x_19.x_MaskSoftnessY;
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec2<f32> = ((vec2<f32>(x_282, x_285) * vec2<f32>(0.25f, 0.25f)) + vec2<f32>(x_290.x, x_290.y));
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_296.x, x_296.y));
  let x_299 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_299.x, x_299.y, x_298.x, x_298.y);
  let x_301 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_301);
  let x_307 : f32 = in_TEXCOORD1.y;
  let x_311 : f32 = x_19.x_GradientScale;
  u_xlat1.x = (abs(x_307) * x_311);
  let x_317 : f32 = x_19.x_Sharpness;
  u_xlat8.x = (x_317 + 1.0f);
  let x_321 : f32 = u_xlat8.x;
  let x_323 : f32 = u_xlat1.x;
  u_xlat1.x = (x_321 * x_323);
  let x_326 : f32 = u_xlat21;
  let x_328 : f32 = u_xlat1.x;
  u_xlat8.x = (x_326 * x_328);
  let x_334 : f32 = x_19.x_PerspectiveFilter;
  u_xlat15 = (-(x_334) + 1.0f);
  let x_337 : f32 = u_xlat15;
  let x_339 : f32 = u_xlat8.x;
  u_xlat15 = (x_337 * abs(x_339));
  let x_342 : f32 = u_xlat21;
  let x_344 : f32 = u_xlat1.x;
  let x_346 : f32 = u_xlat15;
  u_xlat21 = ((x_342 * x_344) + -(x_346));
  let x_349 : f32 = u_xlat14;
  let x_351 : f32 = u_xlat21;
  let x_353 : f32 = u_xlat15;
  u_xlat14 = ((abs(x_349) * x_351) + x_353);
  let x_359 : f32 = x_19.glstate_matrix_projection[3i].w;
  u_xlatb21 = (x_359 == 0.0f);
  let x_362 : bool = u_xlatb21;
  if (x_362) {
    let x_367 : f32 = u_xlat14;
    x_364 = x_367;
  } else {
    let x_370 : f32 = u_xlat8.x;
    x_364 = x_370;
  }
  let x_371 : f32 = x_364;
  u_xlat14 = x_371;
  let x_374 : f32 = x_19.x_OutlineSoftness;
  let x_377 : f32 = x_19.x_ScaleRatioA;
  u_xlat21 = (x_374 * x_377);
  let x_379 : f32 = u_xlat21;
  let x_380 : f32 = u_xlat14;
  u_xlat21 = ((x_379 * x_380) + 1.0f);
  let x_383 : f32 = u_xlat14;
  let x_384 : f32 = u_xlat21;
  u_xlat1.x = (x_383 / x_384);
  let x_389 : f32 = x_19.x_OutlineWidth;
  let x_391 : f32 = x_19.x_ScaleRatioA;
  u_xlat21 = (x_389 * x_391);
  let x_394 : f32 = u_xlat1.x;
  let x_395 : f32 = u_xlat21;
  u_xlat21 = (x_394 * x_395);
  let x_397 : f32 = u_xlat21;
  u_xlat8.x = min(x_397, 1.0f);
  let x_401 : f32 = u_xlat8.x;
  u_xlat8.x = sqrt(x_401);
  let x_404 : vec4<f32> = u_xlat5;
  let x_405 : vec2<f32> = u_xlat8;
  u_xlat2 = (x_404 * vec4<f32>(x_405.x, x_405.x, x_405.x, x_405.x));
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.w, x_411.w, x_411.w)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = vs_COLOR1;
  vs_COLOR1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = u_xlat3.w;
  let x_422 : f32 = x_19.x_FaceColor.w;
  let x_425 : f32 = u_xlat2.w;
  vs_COLOR1.w = ((x_420 * x_422) + x_425);
  let x_430 : vec4<f32> = x_19.x_ClipRect;
  u_xlat2 = max(x_430, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_434 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_434, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_438 : vec2<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat8 = (x_438 + -(vec2<f32>(x_439.x, x_439.y)));
  let x_443 : vec2<f32> = u_xlat0;
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_443 * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_447.x, x_447.y)));
  let x_451 : vec4<f32> = u_xlat2;
  let x_454 : vec2<f32> = u_xlat0;
  let x_455 : vec2<f32> = (-(vec2<f32>(x_451.z, x_451.w)) + x_454);
  let x_456 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat2;
  let x_461 : vec4<f32> = u_xlat2;
  u_xlat0 = (-(vec2<f32>(x_458.x, x_458.y)) + vec2<f32>(x_461.z, x_461.w));
  let x_465 : vec2<f32> = u_xlat8;
  let x_466 : vec2<f32> = u_xlat0;
  let x_467 : vec2<f32> = (x_465 / x_466);
  let x_468 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_468.x, x_468.y, x_467.x, x_467.y);
  let x_471 : vec2<f32> = in_TEXCOORD0;
  let x_472 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  let x_476 : f32 = in_TEXCOORD1.y;
  u_xlatb0 = (0.0f >= x_476);
  let x_478 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_478);
  let x_485 : f32 = x_19.x_WeightNormal;
  let x_489 : f32 = x_19.x_WeightBold;
  u_xlat7.x = (-(x_485) + x_489);
  let x_493 : f32 = u_xlat0.x;
  let x_495 : f32 = u_xlat7.x;
  let x_498 : f32 = x_19.x_WeightNormal;
  u_xlat0.x = ((x_493 * x_495) + x_498);
  let x_502 : f32 = u_xlat0.x;
  let x_506 : f32 = x_19.x_FaceDilate;
  u_xlat0.x = ((x_502 * 0.25f) + x_506);
  let x_510 : f32 = u_xlat0.x;
  let x_512 : f32 = x_19.x_ScaleRatioA;
  u_xlat0.x = (x_510 * x_512);
  let x_516 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_516) * 0.5f) + 0.5f);
  let x_523 : f32 = u_xlat0.x;
  let x_525 : f32 = u_xlat1.x;
  u_xlat1.w = ((x_523 * x_525) + -0.5f);
  let x_531 : vec4<f32> = u_xlat1;
  let x_532 : vec2<f32> = vec2<f32>(x_531.x, x_531.w);
  let x_533 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_532.x, x_533.y, x_533.z, x_532.y);
  let x_535 : f32 = u_xlat21;
  let x_539 : f32 = u_xlat1.w;
  vs_TEXCOORD1.y = ((-(x_535) * 0.5f) + x_539);
  let x_542 : f32 = u_xlat21;
  let x_545 : f32 = u_xlat1.w;
  vs_TEXCOORD1.z = ((x_542 * 0.5f) + x_545);
  let x_550 : f32 = in_COLOR0.w;
  vs_TEXCOORD3.z = x_550;
  vs_TEXCOORD3.w = 0.0f;
  let x_555 : f32 = x_19.x_UnderlaySoftness;
  let x_558 : f32 = x_19.x_UnderlayDilate;
  let x_561 : f32 = x_19.x_UnderlayOffsetX;
  let x_564 : f32 = x_19.x_UnderlayOffsetY;
  let x_568 : f32 = x_19.x_ScaleRatioC;
  let x_570 : f32 = x_19.x_ScaleRatioC;
  let x_572 : f32 = x_19.x_ScaleRatioC;
  let x_574 : f32 = x_19.x_ScaleRatioC;
  let x_575 : vec4<f32> = vec4<f32>(x_568, x_570, x_572, x_574);
  u_xlat1 = (vec4<f32>(x_555, x_558, x_561, x_564) * vec4<f32>(x_575.x, x_575.y, x_575.z, x_575.w));
  let x_582 : vec4<f32> = u_xlat1;
  let x_586 : f32 = x_19.x_GradientScale;
  let x_588 : vec2<f32> = (-(vec2<f32>(x_582.z, x_582.w)) * vec2<f32>(x_586, x_586));
  let x_589 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_588.x, x_589.y, x_588.y);
  let x_591 : vec3<f32> = u_xlat7;
  let x_595 : f32 = x_19.x_TextureWidth;
  let x_598 : f32 = x_19.x_TextureHeight;
  let x_600 : vec2<f32> = (vec2<f32>(x_591.x, x_591.z) / vec2<f32>(x_595, x_598));
  let x_601 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_600.x, x_601.y, x_600.y);
  let x_603 : vec3<f32> = u_xlat7;
  let x_605 : vec2<f32> = in_TEXCOORD0;
  let x_606 : vec2<f32> = (vec2<f32>(x_603.x, x_603.z) + x_605);
  let x_607 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
  let x_610 : f32 = u_xlat1.x;
  let x_611 : f32 = u_xlat14;
  u_xlat7.x = ((x_610 * x_611) + 1.0f);
  let x_615 : f32 = u_xlat14;
  let x_617 : f32 = u_xlat7.x;
  u_xlat7.x = (x_615 / x_617);
  let x_621 : f32 = u_xlat7.x;
  let x_623 : f32 = u_xlat1.y;
  u_xlat14 = (x_621 * x_623);
  let x_626 : f32 = u_xlat0.x;
  let x_628 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_626 * x_628) + -0.5f);
  let x_635 : f32 = u_xlat7.x;
  vs_TEXCOORD4.x = x_635;
  let x_637 : f32 = u_xlat14;
  let x_641 : f32 = u_xlat0.x;
  vs_TEXCOORD4.y = ((-(x_637) * 0.5f) + x_641);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3, vs_TEXCOORD4);
}


