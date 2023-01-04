struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FaceDilate : f32,
  x_OutlineSoftness : f32,
  x_OutlineWidth : f32,
  @size(4)
  padding_1 : u32,
  x_EnvMatrix : mat4x4<f32>,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  @size(12)
  padding_2 : u32,
  x_ClipRect : vec4<f32>,
  x_MaskSoftnessX : f32,
  x_MaskSoftnessY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  @size(8)
  padding_3 : u32,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(7) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_319 : f32;
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
  let x_130 : vec3<f32> = in_NORMAL0;
  let x_132 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_130, vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec3<f32> = in_NORMAL0;
  let x_140 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_138, vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_144 : vec3<f32> = in_NORMAL0;
  let x_146 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_144, vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_153 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat8.x = dot(vec3<f32>(x_153.x, x_153.y, x_153.z), vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_160 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_160);
  let x_163 : vec2<f32> = u_xlat8;
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat1;
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_177 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_177);
  let x_180 : vec2<f32> = u_xlat8;
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec3<f32> = (vec3<f32>(x_180.x, x_180.x, x_180.x) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : vec4<f32> = x_19.x_ScreenParams;
  let x_198 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_200 : vec2<f32> = (vec2<f32>(x_194.y, x_194.y) * vec2<f32>(x_198.x, x_198.y));
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_200.x, x_200.y, x_201.z, x_201.w);
  let x_204 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_207 : vec4<f32> = x_19.x_ScreenParams;
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_207.x, x_207.x)) + vec2<f32>(x_210.x, x_210.y));
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_212.x, x_212.y, x_213.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat2;
  let x_220 : f32 = x_19.x_ScaleX;
  let x_223 : f32 = x_19.x_ScaleY;
  let x_225 : vec2<f32> = (abs(vec2<f32>(x_215.x, x_215.y)) * vec2<f32>(x_220, x_223));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_226.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec2<f32> = (vec2<f32>(x_228.w, x_228.w) / vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_233.z, x_233.w);
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec2<f32>(x_236.x, x_236.y), vec2<f32>(x_238.x, x_238.y));
  let x_243 : f32 = x_19.x_MaskSoftnessX;
  let x_246 : f32 = x_19.x_MaskSoftnessY;
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec2<f32> = ((vec2<f32>(x_243, x_246) * vec2<f32>(0.25f, 0.25f)) + vec2<f32>(x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_253.x, x_253.y, x_254.z, x_254.w);
  let x_257 : vec4<f32> = u_xlat2;
  let x_259 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_257.x, x_257.y));
  let x_260 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_260.x, x_260.y, x_259.x, x_259.y);
  let x_262 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_262);
  let x_268 : f32 = in_TEXCOORD1.y;
  let x_272 : f32 = x_19.x_GradientScale;
  u_xlat13 = (abs(x_268) * x_272);
  let x_274 : f32 = u_xlat12;
  let x_275 : f32 = u_xlat13;
  u_xlat12 = (x_274 * x_275);
  let x_277 : f32 = u_xlat12;
  u_xlat13 = (x_277 * 1.5f);
  let x_282 : f32 = x_19.x_PerspectiveFilter;
  u_xlat2.x = (-(x_282) + 1.0f);
  let x_287 : f32 = u_xlat13;
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = (abs(x_287) * x_290);
  let x_293 : f32 = u_xlat12;
  let x_296 : f32 = u_xlat2.x;
  u_xlat12 = ((x_293 * 1.5f) + -(x_296));
  let x_300 : f32 = u_xlat8.x;
  let x_302 : f32 = u_xlat12;
  let x_305 : f32 = u_xlat2.x;
  u_xlat8.x = ((abs(x_300) * x_302) + x_305);
  let x_313 : f32 = x_19.glstate_matrix_projection[3i].w;
  u_xlatb12 = (x_313 == 0.0f);
  let x_317 : bool = u_xlatb12;
  if (x_317) {
    let x_323 : f32 = u_xlat8.x;
    x_319 = x_323;
  } else {
    let x_325 : f32 = u_xlat13;
    x_319 = x_325;
  }
  let x_326 : f32 = x_319;
  u_xlat6.x = x_326;
  let x_330 : f32 = in_TEXCOORD1.y;
  u_xlatb8 = (0.0f >= x_330);
  let x_332 : bool = u_xlatb8;
  u_xlat8.x = select(0.0f, 1.0f, x_332);
  let x_337 : f32 = x_19.x_WeightNormal;
  let x_341 : f32 = x_19.x_WeightBold;
  u_xlat12 = (-(x_337) + x_341);
  let x_344 : f32 = u_xlat8.x;
  let x_345 : f32 = u_xlat12;
  let x_348 : f32 = x_19.x_WeightNormal;
  u_xlat8.x = ((x_344 * x_345) + x_348);
  let x_352 : f32 = u_xlat8.x;
  let x_356 : f32 = x_19.x_FaceDilate;
  u_xlat8.x = ((x_352 * 0.25f) + x_356);
  let x_360 : f32 = u_xlat8.x;
  let x_363 : f32 = x_19.x_ScaleRatioA;
  u_xlat8.x = (x_360 * x_363);
  let x_367 : f32 = u_xlat8.x;
  u_xlat6.z = (x_367 * 0.5f);
  let x_372 : vec3<f32> = u_xlat6;
  let x_373 : vec2<f32> = vec2<f32>(x_372.x, x_372.z);
  let x_374 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_374.x, x_373.x, x_374.z, x_373.y);
  let x_377 : f32 = u_xlat6.x;
  u_xlat12 = (0.5f / x_377);
  let x_381 : f32 = x_19.x_OutlineWidth;
  let x_384 : f32 = x_19.x_ScaleRatioA;
  u_xlat13 = ((-(x_381) * x_384) + 1.0f);
  let x_389 : f32 = x_19.x_OutlineSoftness;
  let x_392 : f32 = x_19.x_ScaleRatioA;
  let x_394 : f32 = u_xlat13;
  u_xlat13 = ((-(x_389) * x_392) + x_394);
  let x_396 : f32 = u_xlat13;
  let x_398 : f32 = u_xlat12;
  u_xlat13 = ((x_396 * 0.5f) + -(x_398));
  let x_402 : f32 = u_xlat8.x;
  let x_405 : f32 = u_xlat13;
  vs_TEXCOORD1.x = ((-(x_402) * 0.5f) + x_405);
  let x_410 : f32 = u_xlat8.x;
  u_xlat8.x = ((-(x_410) * 0.5f) + 0.5f);
  let x_415 : f32 = u_xlat12;
  let x_417 : f32 = u_xlat8.x;
  vs_TEXCOORD1.z = (x_415 + x_417);
  let x_422 : vec4<f32> = x_19.x_ClipRect;
  u_xlat2 = max(x_422, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_426, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_430 : vec3<f32> = u_xlat0;
  let x_435 : vec4<f32> = u_xlat2;
  let x_438 : vec2<f32> = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_435.x, x_435.y)));
  let x_439 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_438.x, x_438.y, x_439.z);
  let x_441 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = u_xlat0;
  let x_446 : vec2<f32> = (-(vec2<f32>(x_441.z, x_441.w)) + vec2<f32>(x_444.x, x_444.y));
  let x_447 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_449.y, x_449.y, x_449.y) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_457 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_459 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_457.x, x_457.y, x_457.z) * vec3<f32>(x_459.x, x_459.x, x_459.x)) + x_462);
  let x_466 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_468 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_468.z, x_468.z, x_468.z)) + x_471);
  let x_474 : f32 = in_TEXCOORD1.x;
  u_xlat0.x = (x_474 * 0.000244140625f);
  let x_479 : f32 = u_xlat0.x;
  u_xlat8.x = floor(x_479);
  let x_483 : f32 = u_xlat8.x;
  let x_488 : f32 = in_TEXCOORD1.x;
  u_xlat8.y = ((-(x_483) * 4096.0f) + x_488);
  let x_491 : vec2<f32> = u_xlat8;
  let x_494 : vec2<f32> = (x_491 * vec2<f32>(0.001953125f, 0.001953125f));
  let x_495 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_494.x, x_494.y, x_495.z);
  let x_498 : vec3<f32> = u_xlat0;
  let x_502 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_506 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_508 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_502.x, x_502.y)) + vec2<f32>(x_506.z, x_506.w));
  let x_509 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec3<f32> = u_xlat0;
  let x_515 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_519 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_521 : vec2<f32> = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_515.x, x_515.y)) + vec2<f32>(x_519.z, x_519.w));
  let x_522 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_522.x, x_522.y, x_521.x, x_521.y);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD1, vs_TEXCOORD5);
}

