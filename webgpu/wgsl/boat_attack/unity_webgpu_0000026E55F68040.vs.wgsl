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
  x_FaceDilate : f32,
  /* @offset(292) */
  x_OutlineSoftness : f32,
  /* @offset(296) */
  x_OutlineWidth : f32,
  /* @offset(304) */
  x_EnvMatrix : mat4x4<f32>,
  /* @offset(368) */
  x_WeightNormal : f32,
  /* @offset(372) */
  x_WeightBold : f32,
  /* @offset(376) */
  x_ScaleRatioA : f32,
  /* @offset(380) */
  x_VertexOffsetX : f32,
  /* @offset(384) */
  x_VertexOffsetY : f32,
  /* @offset(400) */
  x_ClipRect : vec4<f32>,
  /* @offset(416) */
  x_MaskSoftnessX : f32,
  /* @offset(420) */
  x_MaskSoftnessY : f32,
  /* @offset(424) */
  x_GradientScale : f32,
  /* @offset(428) */
  x_ScaleX : f32,
  /* @offset(432) */
  x_ScaleY : f32,
  /* @offset(436) */
  x_PerspectiveFilter : f32,
  /* @offset(440) */
  x_Sharpness : f32,
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

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_301 : f32;
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
  let x_74 : vec4<f32> = u_xlat1;
  let x_79 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_80 : vec3<f32> = (-(vec3<f32>(x_74.x, x_74.y, x_74.z)) + x_79);
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_84.y, x_84.y, x_84.y, x_84.y) * x_88);
  let x_91 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_92 : vec4<f32> = u_xlat2;
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_91 * vec4<f32>(x_92.x, x_92.x, x_92.x, x_92.x)) + x_95);
  let x_98 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_99 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_98 * vec4<f32>(x_99.z, x_99.z, x_99.z, x_99.z)) + x_102);
  let x_105 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_106 : vec4<f32> = u_xlat2;
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_105 * vec4<f32>(x_106.w, x_106.w, x_106.w, x_106.w)) + x_109);
  let x_117 : vec4<f32> = u_xlat2;
  gl_Position = x_117;
  let x_122 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_122;
  let x_127 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_127;
  let x_131 : vec4<f32> = x_19.x_ScreenParams;
  let x_135 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  u_xlat8 = (vec2<f32>(x_131.y, x_131.y) * vec2<f32>(x_135.x, x_135.y));
  let x_139 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_142 : vec4<f32> = x_19.x_ScreenParams;
  let x_145 : vec2<f32> = u_xlat8;
  u_xlat8 = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_142.x, x_142.x)) + x_145);
  let x_147 : vec2<f32> = u_xlat8;
  let x_151 : f32 = x_19.x_ScaleX;
  let x_154 : f32 = x_19.x_ScaleY;
  u_xlat8 = (abs(x_147) * vec2<f32>(x_151, x_154));
  let x_157 : vec4<f32> = u_xlat2;
  let x_159 : vec2<f32> = u_xlat8;
  u_xlat8 = (vec2<f32>(x_157.w, x_157.w) / x_159);
  let x_163 : vec2<f32> = u_xlat8;
  let x_164 : vec2<f32> = u_xlat8;
  u_xlat13 = dot(x_163, x_164);
  let x_168 : f32 = x_19.x_MaskSoftnessX;
  let x_171 : f32 = x_19.x_MaskSoftnessY;
  let x_176 : vec2<f32> = u_xlat8;
  u_xlat8 = ((vec2<f32>(x_168, x_171) * vec2<f32>(0.25f, 0.25f)) + x_176);
  let x_179 : vec2<f32> = u_xlat8;
  let x_180 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / x_179);
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_181.x, x_181.y, x_180.x, x_180.y);
  let x_183 : f32 = u_xlat13;
  u_xlat8.x = inverseSqrt(x_183);
  let x_191 : f32 = in_TEXCOORD1.y;
  let x_195 : f32 = x_19.x_GradientScale;
  u_xlat12 = (abs(x_191) * x_195);
  let x_199 : f32 = x_19.x_Sharpness;
  u_xlat13 = (x_199 + 1.0f);
  let x_202 : f32 = u_xlat12;
  let x_203 : f32 = u_xlat13;
  u_xlat12 = (x_202 * x_203);
  let x_205 : f32 = u_xlat12;
  let x_207 : f32 = u_xlat8.x;
  u_xlat13 = (x_205 * x_207);
  let x_211 : f32 = x_19.x_PerspectiveFilter;
  u_xlat2.x = (-(x_211) + 1.0f);
  let x_215 : f32 = u_xlat13;
  let x_218 : f32 = u_xlat2.x;
  u_xlat2.x = (abs(x_215) * x_218);
  let x_222 : f32 = u_xlat8.x;
  let x_223 : f32 = u_xlat12;
  let x_226 : f32 = u_xlat2.x;
  u_xlat8.x = ((x_222 * x_223) + -(x_226));
  let x_232 : vec3<f32> = in_NORMAL0;
  let x_234 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_232, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec3<f32> = in_NORMAL0;
  let x_240 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_238, vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_244 : vec3<f32> = in_NORMAL0;
  let x_246 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_244, vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_256);
  let x_259 : f32 = u_xlat12;
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_259, x_259, x_259) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_269);
  let x_271 : f32 = u_xlat12;
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec3<f32> = (vec3<f32>(x_271, x_271, x_271) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec3<f32> = u_xlat6;
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(x_278, vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat12;
  let x_285 : f32 = u_xlat8.x;
  let x_288 : f32 = u_xlat2.x;
  u_xlat8.x = ((abs(x_282) * x_285) + x_288);
  let x_296 : f32 = x_19.glstate_matrix_projection[3i].w;
  u_xlatb12 = (x_296 == 0.0f);
  let x_299 : bool = u_xlatb12;
  if (x_299) {
    let x_305 : f32 = u_xlat8.x;
    x_301 = x_305;
  } else {
    let x_307 : f32 = u_xlat13;
    x_301 = x_307;
  }
  let x_308 : f32 = x_301;
  u_xlat6.x = x_308;
  let x_312 : f32 = in_TEXCOORD1.y;
  u_xlatb8 = (0.0f >= x_312);
  let x_314 : bool = u_xlatb8;
  u_xlat8.x = select(0.0f, 1.0f, x_314);
  let x_319 : f32 = x_19.x_WeightNormal;
  let x_323 : f32 = x_19.x_WeightBold;
  u_xlat12 = (-(x_319) + x_323);
  let x_326 : f32 = u_xlat8.x;
  let x_327 : f32 = u_xlat12;
  let x_330 : f32 = x_19.x_WeightNormal;
  u_xlat8.x = ((x_326 * x_327) + x_330);
  let x_334 : f32 = u_xlat8.x;
  let x_338 : f32 = x_19.x_FaceDilate;
  u_xlat8.x = ((x_334 * 0.25f) + x_338);
  let x_342 : f32 = u_xlat8.x;
  let x_345 : f32 = x_19.x_ScaleRatioA;
  u_xlat8.x = (x_342 * x_345);
  let x_349 : f32 = u_xlat8.x;
  u_xlat6.z = (x_349 * 0.5f);
  let x_354 : vec3<f32> = u_xlat6;
  let x_355 : vec2<f32> = vec2<f32>(x_354.x, x_354.z);
  let x_356 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_356.x, x_355.x, x_356.z, x_355.y);
  let x_359 : f32 = u_xlat6.x;
  u_xlat12 = (0.5f / x_359);
  let x_363 : f32 = x_19.x_OutlineWidth;
  let x_366 : f32 = x_19.x_ScaleRatioA;
  u_xlat13 = ((-(x_363) * x_366) + 1.0f);
  let x_371 : f32 = x_19.x_OutlineSoftness;
  let x_374 : f32 = x_19.x_ScaleRatioA;
  let x_376 : f32 = u_xlat13;
  u_xlat13 = ((-(x_371) * x_374) + x_376);
  let x_378 : f32 = u_xlat13;
  let x_380 : f32 = u_xlat12;
  u_xlat13 = ((x_378 * 0.5f) + -(x_380));
  let x_384 : f32 = u_xlat8.x;
  let x_387 : f32 = u_xlat13;
  vs_TEXCOORD1.x = ((-(x_384) * 0.5f) + x_387);
  let x_392 : f32 = u_xlat8.x;
  u_xlat8.x = ((-(x_392) * 0.5f) + 0.5f);
  let x_397 : f32 = u_xlat12;
  let x_399 : f32 = u_xlat8.x;
  vs_TEXCOORD1.z = (x_397 + x_399);
  let x_404 : vec4<f32> = x_19.x_ClipRect;
  u_xlat2 = max(x_404, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_408, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_412 : vec3<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat2;
  let x_420 : vec2<f32> = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_417.x, x_417.y)));
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_420.x, x_420.y, x_421.z);
  let x_423 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = u_xlat0;
  let x_428 : vec2<f32> = (-(vec2<f32>(x_423.z, x_423.w)) + vec2<f32>(x_426.x, x_426.y));
  let x_429 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat1;
  let x_435 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_431.y, x_431.y, x_431.y) * vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_439 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_441 : vec4<f32> = u_xlat1;
  let x_444 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(x_441.x, x_441.x, x_441.x)) + x_444);
  let x_448 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_450 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450.z, x_450.z, x_450.z)) + x_453);
  let x_456 : f32 = in_TEXCOORD1.x;
  u_xlat0.x = (x_456 * 0.000244140625f);
  let x_461 : f32 = u_xlat0.x;
  u_xlat8.x = floor(x_461);
  let x_465 : f32 = u_xlat8.x;
  let x_470 : f32 = in_TEXCOORD1.x;
  u_xlat8.y = ((-(x_465) * 4096.0f) + x_470);
  let x_473 : vec2<f32> = u_xlat8;
  let x_476 : vec2<f32> = (x_473 * vec2<f32>(0.001953125f, 0.001953125f));
  let x_477 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_476.x, x_476.y, x_477.z);
  let x_480 : vec3<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_488 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_490 : vec2<f32> = ((vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_484.x, x_484.y)) + vec2<f32>(x_488.z, x_488.w));
  let x_491 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec3<f32> = u_xlat0;
  let x_497 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_501 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_503 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(x_497.x, x_497.y)) + vec2<f32>(x_501.z, x_501.w));
  let x_504 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_504.x, x_504.y, x_503.x, x_503.y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD1, vs_TEXCOORD5);
}


